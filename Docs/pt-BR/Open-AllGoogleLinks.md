# Open-AllGoogleLinks

> **Module:** GenXdev.Queries.Webbrowser | **Type:** Function | **Aliases:** `qlinks

## Synopsis

> Executa uma auto pesquisa infinita no Google.

## Description

Realiza uma pesquisa no Google.
Abre 10 abas de cada vez, pausa até que a aba inicial seja revisitada.
Feche a aba inicial para parar.

## Syntax

```powershell
Open-AllGoogleLinks -Queries <String[]> [-Language <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 0 | — | A consulta a ser executada |
| `-Language` | String | — | — | Named | — | O idioma dos resultados de pesquisa retornados |

## Examples

### PS C:\>

```powershell
PS C:\>
```

Open-AllGoogleLinks "site:github.com PowerShell module"

## Related Links

- [Open-AllGoogleLinks on GitHub](https://github.com/genXdev/genXdev)
