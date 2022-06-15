import Foundation
import Capacitor
import ADACCore
import ADACLoginAndProfileComponent

struct LogInHandler: InAppComponentHandler {
    enum LoginAction {
        case pop
        case none
    }

    var presentationStyle: InAppPresentationStyle = .modal
    var presentationContext: UIViewController
    var inputInformation: Any?
    
    typealias Completion = (_ error: LogInError?) -> Void
    
    enum LogInError: Error {
        case noProfile
    }
    
    var completion: Completion?
    
    let loginAction: LoginAction
    
    init(_ context: UIViewController, loginAction: LoginAction, completion: Completion? = nil) {
        presentationContext = context
        self.loginAction = loginAction
        self.completion = completion
    }
    
    func component(with key: InAppCommunicationKey, doAction: String?, with result: Any?, completionHandler: InAppComponentActionCompletionHandler?) {
        switch loginAction {
        case .pop:
            if let viewController = (presentationContext as? UINavigationController)?.viewControllers.first {
                viewController.title = (result as? UserProfile)?.loginName
            }
            (presentationContext as? UINavigationController)?.popViewController(animated: false)
        case .none:
            break
        }
        
        completion?(result == nil ? LogInError.noProfile : nil)
    }
    
}


/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(MaslAdacPlugin)
public class MaslAdacPlugin: CAPPlugin, UserObserver {
    private let implementation = MaslAdac()

    public override func load() {
        print("Initialize user events observer")
        ADACLoginAndProfile.addUserObserver(self)
    }
    
    public func didLogIn() {
        self.notifyListeners("didLogin", data: nil)
    }

    public func dbSessionAuthenticationError() {
        self.notifyListeners("dbSessionAuthenticationError", data: nil)
    }

    public  func dbSessionAuthenticationRequiresLogin() {
        self.notifyListeners("dbSessionAuthenticationRequiresLogin", data: nil)
    }

    public func didLogOut(reason: LogoutReason) {
        self.notifyListeners("didLogOut", data: nil)
    }

    public func completionError(_ error: AuthenticatorError?) -> Void {
        switch error {
        case .interactiveLoginRequired:
            let customViewController = self.bridge?.viewController
            ManagerProvider.sharedInstance.inAppCommunicationManager.call(key: InAppCommunicationCoreKey.loginWeb.rawValue, with: LogInHandler(customViewController!, loginAction: .pop) )
            break
        case .internalError:
            // TODO: We can maybe do something with this error here
            break
        default:
            break
        }
    }

    @objc func echo(_ call: CAPPluginCall) {
        let value = call.getString("value") ?? ""
        call.resolve([
            "value": implementation.echo(value)
        ])
    }

    @objc func login(_ call: CAPPluginCall) {
        let customViewController = self.bridge?.viewController
        DispatchQueue.main.async {
            ManagerProvider.sharedInstance.inAppCommunicationManager.call(key: InAppCommunicationCoreKey.loginWeb.rawValue, with: LogInHandler(customViewController!, loginAction: .pop) )
            call.resolve([
                "value": self.implementation.login()
            ])
        }
    }

    @objc func isUserLoggedIn(_ call: CAPPluginCall) {
        call.resolve([
            "value": implementation.isUserLoggedIn(ADACLoginAndProfile.isUserLoggedIn)
        ])
    }

    @objc func getAccessToken(_ call: CAPPluginCall) {
        call.resolve([
            "value": implementation.getAccessToken(ADACLoginAndProfile.accessToken ?? "")
        ])
    }

    @objc func refreshToken(_ call: CAPPluginCall) {
        ADACLoginAndProfile.refreshToken(completion: self.completionError)
        call.resolve([
            "value": implementation.refreshToken(ADACLoginAndProfile.accessToken ?? "")
        ])
    }
    
    @objc func getProfile(_ call: CAPPluginCall) {
        let profile = ADACLoginAndProfile.cachedUserProfile()
        let jsonEncoder = JSONEncoder()
        let jsonProfile = try! jsonEncoder.encode(profile)
        let jsonString = String(data: jsonProfile, encoding: String.Encoding.utf8)
        call.resolve([
            "value": implementation.getProfile(jsonString ?? "")
        ])
    }

    @objc func logout(_ call: CAPPluginCall) {
        let result = ADACLoginAndProfile.logout()
        call.resolve([
            "value": result
        ])
    }
}
