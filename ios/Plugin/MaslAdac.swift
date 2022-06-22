import Foundation

@objc public class MaslAdac: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func login() -> Void {}

    @objc public func isUserLoggedIn(_ value: Bool) -> Bool {
        print(value)
        return value
    }

    @objc public func getAccessToken(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func refreshToken(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func getProfile(_ value: String) -> String {
        print(value)
        return value
    }

    @objc public func logout() -> Void {
        return
    }
}
