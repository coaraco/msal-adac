import type { ListenerCallback, PluginListenerHandle } from '@capacitor/core';
import { WebPlugin } from '@capacitor/core';
import type { MaslAdacPlugin } from './definitions';
export declare class MaslAdacWeb extends WebPlugin implements MaslAdacPlugin {
    echo(options: {
        value: string;
    }): Promise<{
        value: string;
    }>;
    login(): Promise<void>;
    isUserLoggedIn(): Promise<{
        value: boolean;
    }>;
    getAccessToken(): Promise<{
        value: string;
    }>;
    refreshToken(): Promise<{
        value: string;
    }>;
    getProfile(): Promise<{
        value: any;
    }>;
    logout(): Promise<void>;
    addListener(_: "didLogin" | "didLogOut" | "dbSessionAuthenticationError" | "dbSessionAuthenticationRequiresLogin", __: ListenerCallback): Promise<PluginListenerHandle> & PluginListenerHandle;
}
