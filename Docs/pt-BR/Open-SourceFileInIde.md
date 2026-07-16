# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Open-SourceFileInIde -Path <String> [[-LineNo] <Int32>] [[-KeysToSend] <String[]>] [-Code] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-VisualStudio] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O caminho para o arquivo de origem a ser aberto |
| `-LineNo` | Int32 | — | — | 1 | `0` | O número da linha para navegar |
| `-KeysToSend` | String[] | — | — | 2 | `@()` | Array de entradas do teclado para enviar para a aplicação |
| `-Code` | SwitchParameter | — | — | Named | — | O IDE para abrir o arquivo |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir no Visual Studio |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Manter o foco do teclado na janela de destino |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Atraso entre diferentes strings de entrada em milissegundos |

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
