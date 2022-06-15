#import <Foundation/Foundation.h>
#import <Capacitor/Capacitor.h>

// Define the plugin using the CAP_PLUGIN Macro, and
// each method the plugin supports using the CAP_PLUGIN_METHOD macro.
CAP_PLUGIN(MaslAdacPlugin, "MaslAdac",
           CAP_PLUGIN_METHOD(echo, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(login, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(isUserLoggedIn, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(getAccessToken, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(refreshToken, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(getProfile, CAPPluginReturnPromise);
           CAP_PLUGIN_METHOD(logout, CAPPluginReturnPromise);
)
