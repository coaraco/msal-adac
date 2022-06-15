# msal-adac-plugin

Layer between adac-core-ios and capacitor

## Install

```bash
npm install -S git+https://github.com/coaraco/msal-adac
npx cap sync
```

## USAGE
```typescript
import { MaslAdac } from 'masl-adac-plugin';
```

## API

<docgen-index>

* [`echo(...)`](#echo)
* [`login()`](#login)
* [`isUserLoggedIn()`](#isuserloggedin)
* [`getAccessToken()`](#getaccesstoken)
* [`refreshToken()`](#refreshtoken)
* [`getProfile()`](#getprofile)
* [`logout()`](#logout)
* [`addListener('didLogin' | 'didLogOut' | 'dbSessionAuthenticationError' | 'dbSessionAuthenticationRequiresLogin', ...)`](#addlistenerdidlogin--didlogout--dbsessionauthenticationerror--dbsessionauthenticationrequireslogin)

</docgen-index>

<docgen-api>
<!--Update the source file JSDoc comments and rerun docgen to update the docs below-->

### echo(...)

```typescript
echo(options: { value: string; }) => Promise<{ value: string; }>
```

| Param         | Type                            |
| ------------- | ------------------------------- |
| **`options`** | <code>{ value: string; }</code> |

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### login()

```typescript
login() => Promise<void>
```

--------------------


### isUserLoggedIn()

```typescript
isUserLoggedIn() => Promise<{ value: boolean; }>
```

**Returns:** <code>Promise&lt;{ value: boolean; }&gt;</code>

--------------------


### getAccessToken()

```typescript
getAccessToken() => Promise<{ value: string; }>
```

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### refreshToken()

```typescript
refreshToken() => Promise<{ value: string; }>
```

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### getProfile()

```typescript
getProfile() => Promise<{ value: string; }>
```

**Returns:** <code>Promise&lt;{ value: string; }&gt;</code>

--------------------


### logout()

```typescript
logout() => Promise<void>
```

--------------------


### addListener('didLogin' | 'didLogOut' | 'dbSessionAuthenticationError' | 'dbSessionAuthenticationRequiresLogin', ...)

```typescript
addListener(event: "didLogin" | "didLogOut" | "dbSessionAuthenticationError" | "dbSessionAuthenticationRequiresLogin", callback: () => void) => void
```

| Param          | Type                                                                                                               |
| -------------- | ------------------------------------------------------------------------------------------------------------------ |
| **`event`**    | <code>'didLogin' \| 'didLogOut' \| 'dbSessionAuthenticationError' \| 'dbSessionAuthenticationRequiresLogin'</code> |
| **`callback`** | <code>() =&gt; void</code>                                                                                         |

--------------------

</docgen-api>
