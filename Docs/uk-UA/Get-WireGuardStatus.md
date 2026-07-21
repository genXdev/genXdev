# Get-WireGuardStatus

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Отримує детальну інформацію про стан сервера WireGuard VPN.

## Description

Ця функція отримує детальну інформацію про стан сервера WireGuard VPN, що працює в контейнері Docker, включаючи дані про інтерфейс, порт прослуховування, підключених пірів та стан працездатності сервера. Вона надає всебічну інформацію про службу WireGuard, включаючи стан сервера, кількість пірів, час роботи та конфігурацію мережі.

## Syntax

```powershell
Get-WireGuardStatus [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [[-PUID] <String>] [[-PGID] <String>] [[-TimeZone] <String>] [[-Width] <Int32>] [[-Height] <Int32>] [[-Left] <Int32>] [[-Right] <Int32>] [[-Bottom] <Int32>] [[-SendKeyDelayMilliSeconds] <Int32>] [-Centered] [-ClearSession] [-FocusWindow] [-Force] [-Fullscreen] [-NoBorders] [-NoDockerInitialize] [-RestoreFocus] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустити ініціалізацію Docker (використовується, коли вже викликано батьківською функцією) |
| `-Force` | SwitchParameter | — | — | Named | — | Примусове перебудування контейнера Docker та видалення існуючих даних |
| `-ContainerName` | String | — | — | 0 | `'wireguard'` | Назва для контейнера Docker |
| `-VolumeName` | String | — | — | 1 | `'wireguard_data'` | Назва тому Docker для постійного сховища |
| `-ServicePort` | Int32 | — | — | 2 | `51839` | Номер порту для служби WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Максимальний час в секундах для очікування перевірки працездатності служби |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Інтервал у секундах між спробами перевірки працездатності |
| `-ImageName` | String | — | — | 5 | `'linuxserver/wireguard'` | Власна назва образу Docker для використання |
| `-PUID` | String | — | — | 6 | `'1000'` | Ідентифікатор користувача для дозволів у контейнері |
| `-PGID` | String | — | — | 7 | `'1000'` | Ідентифікатор групи для прав доступу в контейнері |
| `-TimeZone` | String | — | — | 8 | `'Etc/UTC'` | Часовий пояс для використання контейнера |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показати вікно під час запуску контейнера (наскрізний доступ) |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Видалити межі вікна (наскрізний перегляд) |
| `-Width` | Int32 | — | — | 9 | `-1` | Ширина вікна в символах або пікселях (пропускання) |
| `-Height` | Int32 | — | — | 10 | `-1` | Висота вікна в символах або пікселях (прозорість) |
| `-Left` | Int32 | — | — | 11 | — | Позиція лівого краю вікна (наскрізне значення) |
| `-Right` | Int32 | — | — | 12 | — | Позиція правого вікна (наскрізна) |
| `-Bottom` | Int32 | — | — | 13 | — | Позиція нижньої частини вікна (наскрізна) |
| `-Centered` | SwitchParameter | — | — | Named | — | Центрувати вікно (наскрізний режим) |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Відкрити вікно в повноекранному режимі (пропускання) |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Відновити фокус на вікні після операції (наскрізний режим) |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Відображати вікно поруч (наскрізний режим) |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Сфокусувати вікно після відкриття (наскрізний) |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Встановити вікно на передній план (пропуск) |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Надіслати клавішу Escape у вікно (пропуск) |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Утримувати фокус клавіатури під час надсилання клавіш (наскрізне передавання) |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Використовуйте Shift+Enter для надсилання клавіш (пропуск) |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | 14 | — | Затримка в мілісекундах між відправленням клавіш (наскрізна) |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Режим лише сеанс (пропускний) |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити дані сеансу (наскрізний режим) |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Пропустити ініціалізацію сеансу (пропуск) |

## Examples

### Get-WireGuardStatus

```powershell
Get-WireGuardStatus
```

Повертає статус сервера WireGuard з налаштуваннями за замовчуванням.

### Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"

```powershell
Get-WireGuardStatus -NoDockerInitialize -ContainerName "custom_wireguard"
```

Отримує статус для власного контейнера без ініціалізації Docker.

## Parameter Details

### `-NoDockerInitialize`

> Пропустити ініціалізацію Docker (використовується, коли вже викликано батьківською функцією)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Примусове перебудування контейнера Docker та видалення існуючих даних

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Назва для контейнера Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `'wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Назва тому Docker для постійного сховища

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `'wireguard_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Номер порту для служби WireGuard

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `51839` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Максимальний час в секундах для очікування перевірки працездатності служби

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Інтервал у секундах між спробами перевірки працездатності

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 4 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Власна назва образу Docker для використання

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 5 |
| **Default value** | `'linuxserver/wireguard'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PUID <String>`

> Ідентифікатор користувача для дозволів у контейнері

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 6 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PGID <String>`

> Ідентифікатор групи для прав доступу в контейнері

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 7 |
| **Default value** | `'1000'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeZone <String>`

> Часовий пояс для використання контейнера

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 8 |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Показати вікно під час запуску контейнера (наскрізний доступ)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoBorders`

> Видалити межі вікна (наскрізний перегляд)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `nb` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Width <Int32>`

> Ширина вікна в символах або пікселях (пропускання)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 9 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Висота вікна в символах або пікселях (прозорість)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 10 |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left <Int32>`

> Позиція лівого краю вікна (наскрізне значення)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 11 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right <Int32>`

> Позиція правого вікна (наскрізна)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 12 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom <Int32>`

> Позиція нижньої частини вікна (наскрізна)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 13 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Центрувати вікно (наскрізний режим)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Fullscreen`

> Відкрити вікно в повноекранному режимі (пропускання)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-RestoreFocus`

> Відновити фокус на вікні після операції (наскрізний режим)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `rf`, `bg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SideBySide`

> Відображати вікно поруч (наскрізний режим)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sbs` |
| **Accept wildcard characters?** | No |

<hr/>
### `-FocusWindow`

> Сфокусувати вікно після відкриття (наскрізний)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fw`, `focus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetForeground`

> Встановити вікно на передній план (пропуск)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `fg` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyEscape`

> Надіслати клавішу Escape у вікно (пропуск)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `Escape` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyHoldKeyboardFocus`

> Утримувати фокус клавіатури під час надсилання клавіш (наскрізне передавання)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `HoldKeyboardFocus` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyUseShiftEnter`

> Використовуйте Shift+Enter для надсилання клавіш (пропуск)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `UseShiftEnter` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SendKeyDelayMilliSeconds <Int32>`

> Затримка в мілісекундах між відправленням клавіш (наскрізна)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 14 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Режим лише сеанс (пропускний)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Очистити дані сеансу (наскрізний режим)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Пропустити ініціалізацію сеансу (пропуск)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-WireGuardPeer.md)
- [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/EnsureWireGuard.md)
- [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WireGuardPeerQRCode.md)
- [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WireGuardPeers.md)
- [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-WireGuardPeer.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Reset-WireGuardConfiguration.md)
