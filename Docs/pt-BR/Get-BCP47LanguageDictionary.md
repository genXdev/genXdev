# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retorna um dicionário de todas as tags de idioma BCP 47 instaladas e seus nomes de exibição.

## Description

* Cria um dicionário que mapeia códigos de cultura BCP 47 (por exemplo, en-US, nl-NL, de-DE) para eles mesmos e seus nomes de exibição em inglês para os códigos.
* Usa a API CultureInfo do .NET para enumerar todas as culturas específicas instaladas no sistema, tornando esta a fonte autoritativa de verdade para nomes de pastas de idioma de ajuda do PowerShell e idiomas de destino de tradução.
* As chaves do dicionário incluem:
  - Tags BCP 47 completas (por exemplo, "en-US", "nl-NL", "zh-Hans-CN")
  - Nomes de exibição em inglês (por exemplo, "English (United States)", "Dutch (Netherlands)")
  - Nomes de idiomas simples mapeados para sua região mais comum (por exemplo, "English" -> "en-US", "Dutch" -> "nl-NL")

## Syntax

```powershell
Get-BCP47LanguageDictionary [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-BCP47LanguageDictionary
```

Obtenha o dicionário completo do idioma BCP 47.

### Example 2

```powershell
$dict = Get-BCP47LanguageDictionary
$dict["nl-NL"]  # returns "nl-NL"
$dict["Dutch"]  # returns "nl-NL"
```

Valide e resolva um código de idioma para geração de ajuda.

## Related Links

- [Get-BCP47LanguageDictionary on GitHub](https://github.com/genXdev/genXdev)
