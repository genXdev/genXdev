# Show-GenXdevCmdlet

> **Module:** GenXdev | **Type:** Function | **Aliases:** `cmds`

## Synopsis

> GenXdev PowerShell modüllerini cmdlet'leri ve takma adlarıyla görüntüler.

## Description

Tüm yüklü GenXdev PowerShell modüllerini ve bunlarla ilişkili cmdlet'leri ve takma adları listeler. Cmdlet bilgilerini almak için Get-GenXDevCmdlet kullanır ve isteğe bağlı olarak komut dosyası konumlarını sağlar. Filtreleme ve çeşitli görüntüleme seçenekleri sunar.

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Cmdlet'leri filtrelemek için arama deseni 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Cmdlet tanımlarını eşleştirmek için düzenli ifade |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Aranacak GenXdev modül adları 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Yerel modül yollarında aramayı atla |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Yalnızca yayınlanan modül yollarında ara |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Modüller yerine betik dosyalarında ara |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Normal modüllerin yanı sıra betikler dizinini de içerir *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | Yalnızca benzersiz modül adlarını döndür |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Joker karakter eşlemesi yerine tam eşleme gerçekleştir |
| `-Online` | SwitchParameter | — | — | Named | — | Konsol çıktısı yerine GitHub belgelerini aç |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | Belirtildiğinde yalnızca cmdlet'lerin takma adlarını görüntüler |
| `-ShowTable` | SwitchParameter | — | — | Named | — | Sonuçları tablo biçiminde göster |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Examples

### Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable Lists all cmdlets starting with "Get" in the Console module as a table

```powershell
Show-GenXdevCmdlet -CmdletName "Get" -ModuleName "Console" -ShowTable
Lists all cmdlets starting with "Get" in the Console module as a table
```

### cmds get -m console Lists all cmdlets starting with "Get" in the Console module

```powershell
cmds get -m console
Lists all cmdlets starting with "Get" in the Console module
```

### Show-GenXdevCmdlet -OnlyReturnModuleNames Returns only unique module names

```powershell
Show-GenXdevCmdlet -OnlyReturnModuleNames
Returns only unique module names
```

## Parameter Details

### `-CmdletName <String>`

> Cmdlet'leri filtrelemek için arama deseni

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByPropertyName) |
| **Aliases** | `Filter`, `CmdLet`, `Cmd`, `FunctionName`, `Name` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DefinitionMatches <String>`

> Cmdlet tanımlarını eşleştirmek için düzenli ifade

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModuleName <String[]>`

> Aranacak GenXdev modül adları

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | `Module`, `BaseModuleName`, `SubModuleName` |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-NoLocal`

> Yerel modül yollarında aramayı atla

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPublished`

> Yalnızca yayınlanan modül yollarında ara

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FromScripts`

> Modüller yerine betik dosyalarında ara

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeScripts`

> Normal modüllerin yanı sıra betikler dizinini de içerir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | ModuleName |

<hr/>
### `-OnlyReturnModuleNames`

> Yalnızca benzersiz modül adlarını döndür

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactMatch`

> Joker karakter eşlemesi yerine tam eşleme gerçekleştir

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Online`

> Konsol çıktısı yerine GitHub belgelerini aç

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyAliases`

> Belirtildiğinde yalnızca cmdlet'lerin takma adlarını görüntüler

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `aliases`, `nonboring`, `notlame`, `handyonces` |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowTable`

> Sonuçları tablo biçiminde göster

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `table`, `grid` |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> The `-PassThru` parameter.

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

- `Collections.ArrayList`
- `Void`

## Related Links

- [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-GenXDevCmdlet.md)
