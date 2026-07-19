# Open-GenXdevCmdletsContainingClipboardTextInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `vscodesearch

## Synopsis

> Abre arquivos na IDE que contêm texto da área de transferência

## Description

O texto da área de transferência é usado para pesquisar em todos os scripts do GenXdev e, quando encontrado, abre esse arquivo no Code ou Visual Studio
##############################################################################

## Syntax

```powershell
Open-GenXdevCmdletsContainingClipboardTextInIde [[-InputObject] <String>] [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | String | — | ✅ (ByValue) | 0 | — | Buscar texto da área de transferência em todos os scripts GenXdev |
| `-Copilot` | SwitchParameter | — | — | Named | — | Adicionar arquivo de origem à sessão de edição do Copilot |

## Related Links

- [Open-GenXdevCmdletsContainingClipboardTextInIde on GitHub](https://github.com/genXdev/genXdev)
