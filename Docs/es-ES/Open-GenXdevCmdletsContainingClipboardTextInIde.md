# Open-GenXdevCmdletsContainingClipboardTextInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `vscodesearch

## Synopsis

> Abre archivos en el IDE que contienen el texto del portapapeles

## Description

El texto en el portapapeles se utiliza para buscar en todos los scripts de GenXdev y, cuando se encuentra, abre ese archivo en Code o Visual Studio
##############################################################################

## Syntax

```powershell
Open-GenXdevCmdletsContainingClipboardTextInIde [[-InputObject] <String>] [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String | — | ✅ (ByValue) | 0 | — | Search for clipboard text in all GenXdev scripts |
| `-Copilot` | SwitchParameter | — | — | Named | — | Añadir sourcefile a la sesión de edición de Copilot |

## Related Links

- [Open-GenXdevCmdletsContainingClipboardTextInIde on GitHub](https://github.com/genXdev/genXdev)
