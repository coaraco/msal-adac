import type { ListenerCallback, PluginListenerHandle} from '@capacitor/core';
import { WebPlugin } from '@capacitor/core';

import type { MaslAdacPlugin } from './definitions';

export class MaslAdacWeb extends WebPlugin implements MaslAdacPlugin {
  public async echo(options: { value: string }): Promise<{ value: string }> {
    return options;
  }

  public async login(): Promise<void> {
    throw new Error("Not implemented for web");
  }

  public isUserLoggedIn(): Promise<{ value: boolean }> {
    throw new Error("Not implemented for web");
  }

  public getAccessToken(): Promise<{ value: string }> {
    throw new Error("Not implemented for web");
  }

  public refreshToken(): Promise<{ value: string }> {
    throw new Error("Not implemented for web");
  }

  public getProfile(): Promise<{ value: any }> {
    throw new Error("Not implemented for web");
  }

  public logout(): Promise<void> {
    throw new Error("Not implemented for web");
  }

  public addListener(_: "didLogin" | "didLogOut" | "dbSessionAuthenticationError" | "dbSessionAuthenticationRequiresLogin", __: ListenerCallback): Promise<PluginListenerHandle> & PluginListenerHandle {
    throw new Error("Not implemented for web");
  }
}
