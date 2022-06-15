import { WebPlugin } from '@capacitor/core';
export class MaslAdacWeb extends WebPlugin {
    async echo(options) {
        return options;
    }
    async login() {
        throw new Error("Not implemented for web");
    }
    isUserLoggedIn() {
        throw new Error("Not implemented for web");
    }
    getAccessToken() {
        throw new Error("Not implemented for web");
    }
    refreshToken() {
        throw new Error("Not implemented for web");
    }
    getProfile() {
        throw new Error("Not implemented for web");
    }
    logout() {
        throw new Error("Not implemented for web");
    }
    addListener(_, __) {
        throw new Error("Not implemented for web");
    }
}
//# sourceMappingURL=web.js.map