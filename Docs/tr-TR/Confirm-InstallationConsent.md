# Confirm-InstallationConsent

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** —

## Synopsis

> Kalıcı seçimler için tercihleri kullanarak, üçüncü taraf yazılım yüklemek için kullanıcı onayını onaylar.

## Description

<details>
<summary><b>Expand description</b></summary>

Bu işlev, özellikle yazılım kurulumları için özel bir ShouldProcess mekanizması olarak çalışır. Belirtilen uygulama için otomatik kuruluma izin verilip verilmediğini belirlemek üzere bir kullanıcı tercihini kontrol eder. Hiçbir tercih ayarlanmamışsa, kullanıcıya neyin kurulacağı, kaynağı, olası riskler ve kuruluma izin verme veya reddetme seçenekleri (tek seferlik veya kalıcı seçimler için) hakkında net bir açıklama ile bir istem gösterir.

Bu, herhangi bir kuruluma devam etmeden önce açık kullanıcı onayını sağlayarak, kullanıcıdan olumlu bir eylem gerektirerek olası yasal risklerin azaltılmasına yardımcı olur. İstem, modül yazarının (GenXdev) üçüncü taraf yazılımlardan sorumlu olmadığını ve kullanıcının kurulumu kendi sorumluluğunda kabul ettiğini açıkça belirtir.

Tercihler bir JSON dosyasında saklanır ve kullanıcıların belirli uygulamalar için "her zaman izin ver" ayarlamasına veya tüm GenXdev üçüncü taraf kurulumları için genel onay vermesine olanak tanır, bu da kullanışlı olurken yasal olarak sağlam kalır.

Onay reddedilirse (veya tercih reddet olarak ayarlanmışsa), işlev $false döndürür ve kuruluma devam etmez. İzin verilirse, $true döndürür.

</details>
## Syntax

```powershell
Confirm-InstallationConsent -ApplicationName <String> -Source <String> [-ConsentToThirdPartySoftwareInstallation] [-Description <String>] [-ForceConsent] [-Publisher <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ApplicationName` | String | ✅ | — | 0 | — | Yüklenmekte olan uygulamanın veya yazılımın adı. |
| `-Source` | String | ✅ | — | 1 | — | Yükleme kaynağı (örneğin, Winget, PowerShell Galerisi). |
| `-Description` | String | — | — | Named | `"This software is required for certain features in the GenXdev modules."` | Yazılımın ve amacının isteğe bağlı açıklaması. |
| `-Publisher` | String | — | — | Named | `"Third-party vendor"` | Yazılımın isteğe bağlı yayıncısı veya satıcısı. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Tercih ayarlanmış olsa bile bir istemi zorla. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Üçüncü taraf yazılım kurulumuna otomatik olarak izin ver ve kalıcı bayrağı ayarla. |

## Examples

### if (Confirm-InstallationConsent -ApplicationName "Docker Desktop" `         -Source "Winget") {     # Proceed with installation     Microsoft.WinGet.Client\Install-WinGetPackage `         -Id "Docker.DockerDesktop" }

```powershell
if (Confirm-InstallationConsent -ApplicationName "Docker Desktop" `
        -Source "Winget") {
    # Proceed with installation
    Microsoft.WinGet.Client\Install-WinGetPackage `
        -Id "Docker.DockerDesktop"
}
```

Bu, Winget aracılığıyla Docker Desktop yüklenirken onay ister.

### Confirm-InstallationConsent -ApplicationName "Pester" `     -Source "PowerShell Gallery" -Publisher "Pester Team" `     -Description "Required for unit testing in PowerShell modules."

```powershell
Confirm-InstallationConsent -ApplicationName "Pester" `
    -Source "PowerShell Gallery" -Publisher "Pester Team" `
    -Description "Required for unit testing in PowerShell modules."
```

Pester modülünü yüklemeden önce ayrıntılı bilgi içeren istemler.

## Parameter Details

### `-ApplicationName <String>`

> Yüklenmekte olan uygulamanın veya yazılımın adı.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Source <String>`

> Yükleme kaynağı (örneğin, Winget, PowerShell Galerisi).

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Description <String>`

> Yazılımın ve amacının isteğe bağlı açıklaması.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"This software is required for certain features in the GenXdev modules."` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Publisher <String>`

> Yazılımın isteğe bağlı yayıncısı veya satıcısı.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `"Third-party vendor"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceConsent`

> Tercih ayarlanmış olsa bile bir istemi zorla.

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

> Üçüncü taraf yazılım kurulumuna otomatik olarak izin ver ve kalıcı bayrağı ayarla.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Boolean`

## Related Links

- [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/alignScript.md)
- [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Approve-NewTextFileContent.md)
- [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Assert-RefactorFile.md)
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
- [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-CommandFromToolCall.md)
- [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Invoke-OnEachGenXdevModule.md)
- [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Remove-JSONComments.md)
- [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/resetdefaultmonitor.md)
- [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/ResolveInputObjectFileNames.md)
- [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Show-Verb.md)
- [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-RefactorLLMSelection.md)
- [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Test-UnattendedMode.md)
- [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/WriteFileOutput.md)
