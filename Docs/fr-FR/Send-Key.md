# Send-Key

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `sendkeys, `invokekeys

## Synopsis

> Envoie des frappes simulées à une fenêtre ou un processus.

## Description

Cette fonction envoie une entrée clavier à une fenêtre ou un processus cible en utilisant l'objet Windows Script Host Shell. Elle peut cibler des fenêtres par nom de processus, identifiant de processus ou handle de fenêtre. La fonction prend en charge les séquences de touches spéciales, les caractères d'échappement et diverses options de synchronisation pour une livraison fiable des touches.

## Syntax

```powershell
Send-Key -KeysToSend <String[]> [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [<CommonParameters>]

Send-Key [-ProcessName <String>] [<CommonParameters>]

Send-Key [-ProcessId <Int32>] [<CommonParameters>]

Send-Key [-WindowHandle <Int64>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KeysToSend` | String[] | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | The keyboard input to send as an array of strings |
| `-ProcessName` | String | — | ✅ (ByPropertyName) | Named | — | Nom du processus pour envoyer les clés (supporte les caractères génériques) *(Parameter set: )* 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | — | ID du processus auquel envoyer les touches *(Parameter set: )* |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | — | Poignée de fenêtre pour envoyer les touches *(Parameter set: )* |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers in input text |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Garder le focus clavier sur la fenêtre cible après l'envoi des touches |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter for newlines |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | `10` | Délai entre différentes chaînes d'entrée en millisecondes |

## Examples

### Send-Key -KeysToSend "Hello World{ENTER}" -ProcessName "notepad" Sends text to Notepad followed by Enter key using process name targeting.

```powershell
Send-Key -KeysToSend "Hello World{ENTER}" -ProcessName "notepad"
Sends text to Notepad followed by Enter key using process name targeting.
```

### Send-Key "Special {F11} key" -SendKeyEscape -ProcessId 1234 Sends literal "{F11}" text rather than F11 key using process ID targeting.

```powershell
Send-Key "Special {F11} key" -SendKeyEscape -ProcessId 1234
Sends literal "{F11}" text rather than F11 key using process ID targeting.
```

### sendkeys "Line 1{ENTER}Line 2" -WindowHandle 123456 -SendKeyDelayMilliSeconds 50 Sends multi-line text with custom delay using window handle targeting.

```powershell
sendkeys "Line 1{ENTER}Line 2" -WindowHandle 123456 -SendKeyDelayMilliSeconds 50
Sends multi-line text with custom delay using window handle targeting.
```

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
