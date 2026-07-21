# Invoke-CommandFromToolCall

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Doğrulama ve parametre filtreleme ile bir araç çağrı işlevi yürütür.

## Description

Bu işlev, bağımsız değişkenleri doğrulayarak, parametreleri filtreleyerek ve uygun onay işleme ile geri çağırmaları yürüterek araç çağrılarını işler. Hem betik bloğu hem de komut bilgisi geri çağırmalarını destekler.

## Syntax

```powershell
Invoke-CommandFromToolCall -ToolCall <Collections.Hashtable> [-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>] [-ForceAsText] [-Functions <Collections.Hashtable[]>] [-NoConfirmationToolFunctionNames <String[]>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ToolCall` | Collections.Hashtable | ✅ | — | 0 | — | Yerleşikler — Eklentilerin Bulunmasına ve Yüklenmesine İzin Veren Bir PowerShell Eklentisi

Sözdizimi
    Yerleşikler
    Yerleşikler [-Adı] <String[]>
    Yerleşikler [-Modül] <String[]>
    Yerleşikler [-Tamamlandı]

Açıklama
    Yerleşikler cmdlet'i, geçerli oturuma yüklenmiş olan PowerShell eklentilerini alır. Eklentiler, PowerShell'e işlevler, cmdlet'ler, sağlayıcılar ve değişkenler ekleyen yazılım modülleridir. Bu cmdlet, bir eklentinin adını veya eklentiyi sağlayan modülün adını belirterek belirli eklentileri bulmak için kullanılabilir.

    Yerleşikler cmdlet'i, yalnızca geçerli oturuma yüklenmiş eklentileri döndürür. Bir eklentiyi yüklemek için Import-Module cmdlet'ini kullanın.

    Yerleşikler cmdlet'i ayrıca, eklentiler ve bunların komutları, sağlayıcıları ve diğer kaynakları hakkında bilgi almak için kullanılabilecek PSModuleInfo nesneleri döndürür.

Örnekler

    Örnek 1: Tüm yüklenmiş eklentileri al
        Yerleşikler

        Bu komut, geçerli oturuma yüklenmiş tüm eklentileri alır.

    Örnek 2: Ada göre eklenti al
        Yerleşikler -Adı "ActiveDirectory"

        Bu komut, ActiveDirectory adlı eklentiyi alır.

    Örnek 3: Modüle göre eklenti al
        Yerleşikler -Modül "PSScheduledJob"

        Bu komut, PSScheduledJob modülü tarafından sağlanan eklentiyi alır.

Parametreler

    -Adı <String[]>
        Alınacak eklentinin adını veya adlarını belirtir. Joker karakterlere izin verilir.

    -Modül <String[]>
        Alınacak eklentiyi sağlayan modülün adını veya adlarını belirtir.

    -Tamamlandı
        Tüm eklentileri almak için yer tutucu parametre.

Giriş Türü
    Yok

Çıkış Türü
    System.Management.Automation.PSModuleInfo |
| `-Functions` | Collections.Hashtable[] | — | — | Named | `@()` | Dizi işlev tanımları |
| `-ExposedCmdLets` | GenXdev.Helpers.ExposedCmdletDefinition[] | — | — | Named | `@()` | Kullanılacak PowerShell komut tanımları dizisi |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | `@()` | Onay gerektirmeyen komut adları dizisi |
| `-ForceAsText` | SwitchParameter | — | — | Named | — | Çıktıyı metin olarak zorla |

## Examples

### Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `     -ExposedCmdLets $exposedCmdlets

```powershell
Invoke-CommandFromToolCall -ToolCall $toolCall -Functions $functions `
    -ExposedCmdLets $exposedCmdlets
```

### $result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText

```powershell
$result = Invoke-CommandFromToolCall $toolCall $functions -ForceAsText
```

## Parameter Details

### `-ToolCall <Collections.Hashtable>`

> Yerleşikler — Eklentilerin Bulunmasına ve Yüklenmesine İzin Veren Bir PowerShell Eklentisi

Sözdizimi
    Yerleşikler
    Yerleşikler [-Adı] <String[]>
    Yerleşikler [-Modül] <String[]>
    Yerleşikler [-Tamamlandı]

Açıklama
    Yerleşikler cmdlet'i, geçerli oturuma yüklenmiş olan PowerShell eklentilerini alır. Eklentiler, PowerShell'e işlevler, cmdlet'ler, sağlayıcılar ve değişkenler ekleyen yazılım modülleridir. Bu cmdlet, bir eklentinin adını veya eklentiyi sağlayan modülün adını belirterek belirli eklentileri bulmak için kullanılabilir.

    Yerleşikler cmdlet'i, yalnızca geçerli oturuma yüklenmiş eklentileri döndürür. Bir eklentiyi yüklemek için Import-Module cmdlet'ini kullanın.

    Yerleşikler cmdlet'i ayrıca, eklentiler ve bunların komutları, sağlayıcıları ve diğer kaynakları hakkında bilgi almak için kullanılabilecek PSModuleInfo nesneleri döndürür.

Örnekler

    Örnek 1: Tüm yüklenmiş eklentileri al
        Yerleşikler

        Bu komut, geçerli oturuma yüklenmiş tüm eklentileri alır.

    Örnek 2: Ada göre eklenti al
        Yerleşikler -Adı "ActiveDirectory"

        Bu komut, ActiveDirectory adlı eklentiyi alır.

    Örnek 3: Modüle göre eklenti al
        Yerleşikler -Modül "PSScheduledJob"

        Bu komut, PSScheduledJob modülü tarafından sağlanan eklentiyi alır.

Parametreler

    -Adı <String[]>
        Alınacak eklentinin adını veya adlarını belirtir. Joker karakterlere izin verilir.

    -Modül <String[]>
        Alınacak eklentiyi sağlayan modülün adını veya adlarını belirtir.

    -Tamamlandı
        Tüm eklentileri almak için yer tutucu parametre.

Giriş Türü
    Yok

Çıkış Türü
    System.Management.Automation.PSModuleInfo

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <Collections.Hashtable[]>`

> Dizi işlev tanımları

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <GenXdev.Helpers.ExposedCmdletDefinition[]>`

> Kullanılacak PowerShell komut tanımları dizisi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Onay gerektirmeyen komut adları dizisi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceAsText`

> Çıktıyı metin olarak zorla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-RefactorFile.md)
- [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Confirm-InstallationConsent.md)
- [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Convert-DotNetTypeToLLMType.md)
- [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-HashTable.md)
- [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ConvertTo-LLMOpenAIApiFunctionDefinition.md)
- [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Copy-IdenticalParamValues.md)
- [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureGenXdev.md)
- [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/EnsureNuGetAssembly.md)
- [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/GenerateMasonryLayoutHtml.md)
- [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-AIDefaultLLMSettings.md)
- [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-BCP47LanguageDictionary.md)
- [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-DefaultWebLanguage.md)
- [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-JsonExampleFromSchema.md)
- [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-LLMJsonOutput.md)
- [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-PowerShellRoot.md)
- [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-WebLanguageDictionary.md)
- [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Import-GenXdevModules.md)
- [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Initialize-SearchPaths.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/WriteFileOutput.md)
