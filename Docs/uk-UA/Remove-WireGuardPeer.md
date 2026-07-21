# Remove-WireGuardPeer

> **Module:** GenXdev.Windows.WireGuard | **Type:** Function | **Aliases:** —

## Synopsis

> Видаляє конфігурацію WireGuard VPN-піра.

## Description

Ця функція видаляє конфігурацію однорангового вузла WireGuard VPN із сервера, що працює в контейнері Docker. Вона видаляє конфігураційні файли однорангового вузла та оновлює сервер WireGuard, щоб припинити приймати з'єднання від цього однорангового вузла. Функція перевіряє існування однорангового вузла перед видаленням і надає запити на підтвердження, якщо не вказано параметр Force.

## Syntax

```powershell
Remove-WireGuardPeer -PeerName <String> [-Bottom] [-Centered] [-ClearSession] [-ContainerName <String>] [-FocusWindow] [-Force] [-Fullscreen] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-Height <Int32>] [-ImageName <String>] [-Left] [-NoBorders] [-NoDockerInitialize] [-PGID <String>] [-PUID <String>] [-RestoreFocus] [-Right] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-ServicePort <Int32>] [-SessionOnly] [-SetForeground] [-ShowWindow] [-SideBySide] [-SkipSession] [-TimeZone <String>] [-VolumeName <String>] [-Width <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-PeerName` | String | ✅ | — | 0 | — | Ім'я однорангового вузла для видалення |
| `-ContainerName` | String | — | — | Named | `'wireguard'` | Назва для контейнера Docker |
| `-VolumeName` | String | — | — | Named | `'wireguard_data'` | Назва тому Docker для постійного сховища |
| `-ServicePort` | Int32 | — | — | Named | `51839` | Номер порту для служби WireGuard |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Максимальний час в секундах для очікування перевірки працездатності служби |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Інтервал у секундах між спробами перевірки працездатності |
| `-ImageName` | String | — | — | Named | `'linuxserver/wireguard'` | Власна назва образу Docker для використання |
| `-PUID` | String | — | — | Named | `'1000'` | Ідентифікатор користувача для дозволів у контейнері |
| `-PGID` | String | — | — | Named | `'1000'` | Ідентифікатор групи для прав доступу в контейнері |
| `-TimeZone` | String | — | — | Named | `'Etc/UTC'` | Часовий пояс для використання контейнера |
| `-Force` | SwitchParameter | — | — | Named | — | Примусове видалення без підтвердження |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустити ініціалізацію Docker, коли викликано батьківською функцією |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показати вікно Docker Desktop під час ініціалізації |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Видаляє межі вікна |
| `-Width` | Int32 | — | — | Named | `-1` | Початкова ширина вікна |
| `-Height` | Int32 | — | — | Named | `-1` | Початкова висота вікна |
| `-Left` | SwitchParameter | — | — | Named | — | Розмістити вікно в лівій частині екрана |
| `-Right` | SwitchParameter | — | — | Named | — | Розмістити вікно на правій стороні екрана |
| `-Bottom` | SwitchParameter | — | — | Named | — | Розмістити вікно в нижній частині екрана |
| `-Centered` | SwitchParameter | — | — | Named | — | Розташувати вікно в центрі екрана |
| `-Fullscreen` | SwitchParameter | — | — | Named | — | Максимізувати вікно |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Відновити фокус вікна PowerShell |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Встановить вікно у повноекранний режим на іншому моніторі, ніж Powershell, або поряд із Powershell на тому ж моніторі |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Фокусувати вікно після відкриття |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Встановити вікно на передній план після відкриття |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Екранувати символи керування та модифікатори під час надсилання клавіш |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Утримувати фокус клавіатури на цільовому вікні під час надсилання клавіш |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Використовуйте Shift+Enter замість Enter під час надсилання клавіш |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Затримка між різними вхідними рядками в мілісекундах при надсиланні клавіш |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |

## Examples

### Remove-WireGuardPeer -PeerName "MyPhone"

```powershell
Remove-WireGuardPeer -PeerName "MyPhone"
```

Видаляє одноранговий вузол з іменем "MyPhone" із запитом на підтвердження.

### Remove-WireGuardPeer -PeerName "Tablet" -Force

```powershell
Remove-WireGuardPeer -PeerName "Tablet" -Force
```

Видаляє одноранговий вузол з іменем "Tablet" без запиту підтвердження.

### Remove-WireGuardPeer "WorkLaptop"

```powershell
Remove-WireGuardPeer "WorkLaptop"
```

Видаляє одноранговий вузол, використовуючи синтаксис позиційних параметрів.

## Parameter Details

### `-PeerName <String>`

> Ім'я однорангового вузла для видалення

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Назва для контейнера Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
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
| **Position?** | Named |
| **Default value** | `'Etc/UTC'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Примусове видалення без підтвердження

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Пропустити ініціалізацію Docker, коли викликано батьківською функцією

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Показати вікно Docker Desktop під час ініціалізації

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

> Видаляє межі вікна

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

> Початкова ширина вікна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Height <Int32>`

> Початкова висота вікна

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Left`

> Розмістити вікно в лівій частині екрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Right`

> Розмістити вікно на правій стороні екрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Bottom`

> Розмістити вікно в нижній частині екрана

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Centered`

> Розташувати вікно в центрі екрана

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

> Максимізувати вікно

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

> Відновити фокус вікна PowerShell

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

> Встановить вікно у повноекранний режим на іншому моніторі, ніж Powershell, або поряд із Powershell на тому ж моніторі

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

> Фокусувати вікно після відкриття

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

> Встановити вікно на передній план після відкриття

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

> Екранувати символи керування та модифікатори під час надсилання клавіш

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

> Утримувати фокус клавіатури на цільовому вікні під час надсилання клавіш

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

> Використовуйте Shift+Enter замість Enter під час надсилання клавіш

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

> Затримка між різними вхідними рядками в мілісекундах при надсиланні клавіш

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DelayMilliSeconds` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань

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

> Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ

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

> Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс

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
- [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-WireGuardStatus.md)
- [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Reset-WireGuardConfiguration.md)
