# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Devuelve un diccionario de todas las etiquetas de idioma BCP 47 instaladas y sus nombres para mostrar.

## Description

* Crea un diccionario que asigna códigos de cultura BCP 47 (por ejemplo, en-US, nl-NL, de-DE) a sí mismos y a sus nombres para mostrar en inglés a los códigos.
* Utiliza la API CultureInfo de .NET para enumerar todas las culturas específicas instaladas en el sistema, lo que la convierte en la fuente de autoridad para los nombres de carpetas de idioma de ayuda de PowerShell y los idiomas de destino de traducción.
* Las claves del diccionario incluyen:
  - Etiquetas BCP 47 completas (por ejemplo, "en-US", "nl-NL", "zh-Hans-CN")
  - Nombres para mostrar en inglés (por ejemplo, "English (United States)", "Dutch (Netherlands)")
  - Nombres de idiomas simples asignados a su región más común (por ejemplo, "English" -> "en-US", "Dutch" -> "nl-NL")

## Syntax

```powershell
Get-BCP47LanguageDictionary [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-BCP47LanguageDictionary
```

Obtén el diccionario completo de idiomas BCP 47.

### Example 2

```powershell
$dict = Get-BCP47LanguageDictionary
$dict["nl-NL"]  # returns "nl-NL"
$dict["Dutch"]  # returns "nl-NL"
```

Validar y resolver un código de idioma para la generación de ayuda.

## Related Links

- [Get-BCP47LanguageDictionary on GitHub](https://github.com/genXdev/genXdev)
