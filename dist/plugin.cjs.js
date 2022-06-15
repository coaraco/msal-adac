'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var core = require('@capacitor/core');

const MaslAdac = core.registerPlugin('MaslAdac', {
    web: () => Promise.resolve().then(function () { return web; }).then(m => new m.MaslAdacWeb()),
});

class MaslAdacWeb extends core.WebPlugin {
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

var web = /*#__PURE__*/Object.freeze({
    __proto__: null,
    MaslAdacWeb: MaslAdacWeb
});

exports.MaslAdac = MaslAdac;
//# sourceMappingURL=plugin.cjs.js.map
