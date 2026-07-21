# EnsureGenXdev

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Tüm GenXdev modüllerinin doğru şekilde yüklendiğinden emin olmak için tüm Ensure* cmdlet'lerini çağırır.

## Description

Bu işlev, "Ensure" veya "Optimize-Ensure" (c# cmdlet'leri için) ile başlayan tüm GenXdev cmdlet'lerini alır ve her birini çalıştırarak gerekli tüm GenXdev modüllerinin ve bağımlılıklarının düzgün bir şekilde yüklendiğinden ve kullanıma hazır olduğundan emin olur. Çalıştırma sırasında oluşan hatalar yakalanır ve bilgilendirme mesajları olarak görüntülenir.

İsteğe bağlı olarak, packages.json bildirim dosyasında tanımlanan tüm NuGet paketlerini indirip yükleyebilir.

## Syntax

```powershell
EnsureGenXdev [-ConsentToThirdPartySoftwareInstallation] [-DownloadAllNugetPackages] [-Force] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Zaten tamamlanmış gibi görünseler bile sağlama işlemlerinin yürütülmesini zorlar |
| `-DownloadAllNugetPackages` | SwitchParameter | — | — | Named | — | packages.json bildirim dosyasında tanımlanan tüm NuGet paketlerini indirir ve yükler |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Üçüncü taraf yazılım yüklemesi için tercih ayarlanmış olsa bile onay istemini zorla. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Tüm paketler için otomatik olarak üçüncü taraf yazılım kurulumuna izin ver ve kalıcı bayrağı ayarla. |

## Examples

### EnsureGenXdev

```powershell
EnsureGenXdev
```

Bu komut, GenXdev ortamını başlatmak için mevcut tüm Ensure* cmdlet'lerini çalıştırır.

### EnsureGenXdev -DownloadAllNugetPackages

```powershell
EnsureGenXdev -DownloadAllNugetPackages
```

Bu komut tüm Ensure* cmdlet'lerini çalıştırır ve ayrıca packages.json bildirim dosyasında tanımlanan tüm NuGet paketlerini indirir ve yükler.

### EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation

```powershell
EnsureGenXdev -DownloadAllNugetPackages -ConsentToThirdPartySoftwareInstallation
```

Bu komut tüm Ensure* cmdlet'lerini çalıştırır ve NuGet paketlerini indirir.

## Parameter Details

### `-Force`

> Zaten tamamlanmış gibi görünseler bile sağlama işlemlerinin yürütülmesini zorlar

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DownloadAllNugetPackages`

> packages.json bildirim dosyasında tanımlanan tüm NuGet paketlerini indirir ve yükler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> Üçüncü taraf yazılım yüklemesi için tercih ayarlanmış olsa bile onay istemini zorla.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConsentToThirdPartySoftwareInstallation`

> Tüm paketler için otomatik olarak üçüncü taraf yazılım kurulumuna izin ver ve kalıcı bayrağı ayarla.

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
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/WriteFileOutput.md)
