# Send-Key

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** `sendkeys, `invokekeys

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [Send-Key on GitHub](https://github.com/genXdev/genXdev)
