# Open-SourceFileInIde

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `editcode

## Synopsis

> Abre um arquivo fonte no IDE preferido (Visual Studio Code ou Visual Studio).

## Description

Esta função abre um arquivo de origem especificado no Visual Studio Code ou no Visual Studio. Ela pode navegar diretamente para um número de linha específico e, opcionalmente, enviar entradas de teclado para a IDE após abrir o arquivo. A função tentará determinar qual IDE usar com base no processo host atual, aplicativos em execução ou seleção do usuário.

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

## Examples

### Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code

```powershell
Open-SourceFileInIde -Path "C:\Projects\MyScript.ps1" -LineNo 25 -Code
```

### editcode "C:\Projects\MyScript.ps1" 25

```powershell
editcode "C:\Projects\MyScript.ps1" 25
```

## Related Links

- [Open-SourceFileInIde on GitHub](https://github.com/genXdev/genXdev)
