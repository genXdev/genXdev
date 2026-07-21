# Get-BCP47LanguageDictionary

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retorna um dicionário de todas as tags de idioma BCP 47 instaladas e seus nomes de exibição.

## Description

```text
* Cria um dicionário que mapeia códigos de cultura BCP 47 (ex.: en-US, nl-NL, de-DE) a si mesmos e seus nomes de exibição em inglês aos códigos.
* Usa a API CultureInfo do .NET para enumerar todas as culturas específicas instaladas no sistema, tornando esta a fonte autoritativa para nomes de pastas de idioma de ajuda do PowerShell e idiomas de destino de tradução.
* As chaves do dicionário incluem:
  - Tags BCP 47 completas (ex.: "en-US", "nl-NL", "zh-Hans-CN")
  - Nomes de exibição em inglês (ex.: "English (United States)", "Dutch (Netherlands)")
  - Nomes de idiomas simples mapeados para sua região mais comum (ex.: "English" -> "en-US", "Dutch" -> "nl-NL")
```
## Syntax

```powershell
Get-BCP47LanguageDictionary [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-BCP47LanguageDictionary
```

{
  "af": "Africâner",
  "af-ZA": "Africâner (África do Sul)",
  "sq": "Albanês",
  "sq-AL": "Albanês (Albânia)",
  "ar": "Árabe",
  "ar-DZ": "Árabe (Argélia)",
  "ar-BH": "Árabe (Bahrein)",
  "ar-EG": "Árabe (Egito)",
  "ar-IQ": "Árabe (Iraque)",
  "ar-JO": "Árabe (Jordânia)",
  "ar-KW": "Árabe (Kuwait)",
  "ar-LB": "Árabe (Líbano)",
  "ar-LY": "Árabe (Líbia)",
  "ar-MA": "Árabe (Marrocos)",
  "ar-OM": "Árabe (Omã)",
  "ar-QA": "Árabe (Catar)",
  "ar-SA": "Árabe (Arábia Saudita)",
  "ar-SY": "Árabe (Síria)",
  "ar-TN": "Árabe (Tunísia)",
  "ar-AE": "Árabe (Emirados Árabes Unidos)",
  "ar-YE": "Árabe (Iêmen)",
  "hy": "Armênio",
  "hy-AM": "Armênio (Armênia)",
  "az": "Azerbaijano",
  "az-AZ": "Azerbaijano (Azerbaijão)",
  "eu": "Basco",
  "eu-ES": "Basco (Espanha)",
  "be": "Bielorrusso",
  "be-BY": "Bielorrusso (Bielorrússia)",
  "bn": "Bengali",
  "bn-BD": "Bengali (Bangladesh)",
  "bn-IN": "Bengali (Índia)",
  "bs": "Bósnio",
  "bs-BA": "Bósnio (Bósnia e Herzegovina)",
  "bg": "Búlgaro",
  "bg-BG": "Búlgaro (Bulgária)",
  "ca": "Catalão",
  "ca-ES": "Catalão (Espanha)",
  "zh": "Chinês (Mandarim)",
  "zh-CN": "Chinês Simplificado (China)",
  "zh-SG": "Chinês Simplificado (Cingapura)",
  "zh-HK": "Chinês Tradicional (Hong Kong)",
  "zh-MO": "Chinês Tradicional (Macau)",
  "zh-TW": "Chinês Tradicional (Taiwan)",
  "hr": "Croata",
  "hr-HR": "Croata (Croácia)",
  "cs": "Tcheco",
  "cs-CZ": "Tcheco (República Tcheca)",
  "da": "Dinamarquês",
  "da-DK": "Dinamarquês (Dinamarca)",
  "nl": "Holandês",
  "nl-BE": "Holandês (Bélgica)",
  "nl-NL": "Holandês (Países Baixos)",
  "en": "Inglês",
  "en-AU": "Inglês (Austrália)",
  "en-BZ": "Inglês (Belize)",
  "en-CA": "Inglês (Canadá)",
  "en-IE": "Inglês (Irlanda)",
  "en-JM": "Inglês (Jamaica)",
  "en-NZ": "Inglês (Nova Zelândia)",
  "en-PH": "Inglês (Filipinas)",
  "en-ZA": "Inglês (África do Sul)",
  "en-TT": "Inglês (Trinidad e Tobago)",
  "en-GB": "Inglês (Reino Unido)",
  "en-US": "Inglês (Estados Unidos)",
  "en-ZW": "Inglês (Zimbábue)",
  "et": "Estoniano",
  "et-EE": "Estoniano (Estônia)",
  "fo": "Feroês",
  "fo-FO": "Feroês (Ilhas Faroe)",
  "fi": "Finlandês",
  "fi-FI": "Finlandês (Finlândia)",
  "fr": "Francês",
  "fr-BE": "Francês (Bélgica)",
  "fr-CA": "Francês (Canadá)",
  "fr-FR": "Francês (França)",
  "fr-LU": "Francês (Luxemburgo)",
  "fr-MC": "Francês (Mônaco)",
  "fr-CH": "Francês (Suíça)",
  "gl": "Galego",
  "gl-ES": "Galego (Espanha)",
  "ka": "Georgiano",
  "ka-GE": "Georgiano (Geórgia)",
  "de": "Alemão",
  "de-AT": "Alemão (Áustria)",
  "de-DE": "Alemão (Alemanha)",
  "de-LI": "Alemão (Liechtenstein)",
  "de-LU": "Alemão (Luxemburgo)",
  "de-CH": "Alemão (Suíça)",
  "el": "Grego",
  "el-GR": "Grego (Grécia)",
  "gu": "Guzerate",
  "gu-IN": "Guzerate (Índia)",
  "he": "Hebraico",
  "he-IL": "Hebraico (Israel)",
  "hi": "Híndi",
  "hi-IN": "Híndi (Índia)",
  "hu": "Húngaro",
  "hu-HU": "Húngaro (Hungria)",
  "is": "Islandês",
  "is-IS": "Islandês (Islândia)",
  "id": "Indonésio",
  "id-ID": "Indonésio (Indonésia)",
  "it": "Italiano",
  "it-IT": "Italiano (Itália)",
  "it-CH": "Italiano (Suíça)",
  "ja": "Japonês",
  "ja-JP": "Japonês (Japão)",
  "kk": "Cazaque",
  "kk-KZ": "Cazaque (Cazaquistão)",
  "kn": "Canarês",
  "kn-IN": "Canarês (Índia)",
  "ko": "Coreano",
  "ko-KR": "Coreano (Coreia do Sul)",
  "lv": "Letão",
  "lv-LV": "Letão (Letônia)",
  "lt": "Lituano",
  "lt-LT": "Lituano (Lituânia)",
  "mk": "Macedônio",
  "mk-MK": "Macedônio (Macedônia do Norte)",
  "ms": "Malaio",
  "ms-BN": "Malaio (Brunei)",
  "ms-MY": "Malaio (Malásia)",
  "mr": "Marata",
  "mr-IN": "Marata (Índia)",
  "mn": "Mongol",
  "mn-MN": "Mongol (Mongólia)",
  "nb": "Norueguês Bokmål",
  "nb-NO": "Norueguês Bokmål (Noruega)",
  "nn": "Norueguês Nynorsk",
  "nn-NO": "Norueguês Nynorsk (Noruega)",
  "pl": "Polonês",
  "pl-PL": "Polonês (Polônia)",
  "pt": "Português",
  "pt-BR": "Português (Brasil)",
  "pt-PT": "Português (Portugal)",
  "pa": "Punjabi",
  "pa-IN": "Punjabi (Índia)",
  "ro": "Romeno",
  "ro-RO": "Romeno (Romênia)",
  "ru": "Russo",
  "ru-RU": "Russo (Rússia)",
  "sr": "Sérvio",
  "sr-BA": "Sérvio (Bósnia e Herzegovina)",
  "sr-SP": "Sérvio (Sérvia e Montenegro)",
  "sk": "Eslovaco",
  "sk-SK": "Eslovaco (Eslováquia)",
  "sl": "Esloveno",
  "sl-SI": "Esloveno (Eslovênia)",
  "es": "Espanhol",
  "es-AR": "Espanhol (Argentina)",
  "es-BO": "Espanhol (Bolívia)",
  "es-CL": "Espanhol (Chile)",
  "es-CO": "Espanhol (Colômbia)",
  "es-CR": "Espanhol (Costa Rica)",
  "es-DO": "Espanhol (República Dominicana)",
  "es-EC": "Espanhol (Equador)",
  "es-SV": "Espanhol (El Salvador)",
  "es-GT": "Espanhol (Guatemala)",
  "es-HN": "Espanhol (Honduras)",
  "es-MX": "Espanhol (México)",
  "es-NI": "Espanhol (Nicarágua)",
  "es-PA": "Espanhol (Panamá)",
  "es-PY": "Espanhol (Paraguai)",
  "es-PE": "Espanhol (Peru)",
  "es-PR": "Espanhol (Porto Rico)",
  "es-ES": "Espanhol (Espanha)",
  "es-UY": "Espanhol (Uruguai)",
  "es-VE": "Espanhol (Venezuela)",
  "sv": "Sueco",
  "sv-FI": "Sueco (Finlândia)",
  "sv-SE": "Sueco (Suécia)",
  "ta": "Tâmil",
  "ta-IN": "Tâmil (Índia)",
  "te": "Telugo",
  "te-IN": "Telugo (Índia)",
  "th": "Tailandês",
  "th-TH": "Tailandês (Tailândia)",
  "tr": "Turco",
  "tr-TR": "Turco (Turquia)",
  "uk": "Ucraniano",
  "uk-UA": "Ucraniano (Ucrânia)",
  "ur": "Urdu",
  "ur-PK": "Urdu (Paquistão)",
  "uz": "Uzbeque",
  "uz-UZ": "Uzbeque (Uzbequistão)",
  "vi": "Vietnamita",
  "vi-VN": "Vietnamita (Vietnã)",
  "cy": "Galês",
  "cy-GB": "Galês (Reino Unido)",
  "xh": "Xhosa",
  "xh-ZA": "Xhosa (África do Sul)",
  "zu": "Zulu",
  "zu-ZA": "Zulu (África do Sul)"
}

### Example 2

```powershell
$dict = Get-BCP47LanguageDictionary
$dict["nl-NL"]  # returns "nl-NL"
$dict["Dutch"]  # returns "nl-NL"
```

Validar e resolver um código de idioma para geração de ajuda.

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-AIDefaultLLMSettings.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Initialize-SearchPaths.md)
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/WriteFileOutput.md)
