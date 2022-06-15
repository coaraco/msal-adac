export interface MaslAdacPlugin {
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
        value: string;
    }>;
    logout(): Promise<void>;
    addListener(event: "didLogin" | "didLogOut" | "dbSessionAuthenticationError" | "dbSessionAuthenticationRequiresLogin", callback: () => void): void;
}
