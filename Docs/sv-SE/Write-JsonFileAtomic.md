# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Skriver ett objekt som JSON till en fil atomärt för att förhindra korruption.

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Sökvägen till filen som ska skrivas. |
| `-Data` | Object | — | — | 1 | — | Objektet som ska serialiseras som JSON och skrivas till filen. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | Det maximala antalet försök för den atomära skrivoperationen. Standard är 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | Fördröjningen i millisekunder mellan återförsök. Standard är 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Om större än 0, avstudsar skrivningar till den här filen. Standard är 0 (inaktiverad). |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | Maximalt djup för JSON-serialisering. Standard är 30. |
| `-Compress` | SwitchParameter | — | — | Named | `False` | .SYNOPSIS
Get-FileIntegrity upptäcker och rapporterar ändringar i filer.

.SYNTAX
Get-FileIntegrity [-Path] <String[]> [[-Filter] <String>] [-Recurse] [-WhatIf] [-Confirm] [<CommonParameters>]

.DESCRIPTION
Cmdlet:et Get-FileIntegrity beräknar och jämför en säker hash (SHA-256) för angivna filer. Använd parametern -Path för att ange en eller flera filsökvägar eller en katalog. Använd -Filter för att filtrera efter filnamnsmönster (t.ex. *.txt). Parametern -Recurse inkluderar underkataloger. För att spara hashar för framtida jämförelse, skicka utdata till en fil med Export-Clixml. Vid nästa körning, jämför med Import-Clixml. Cmdlet:et stöder WhatIf och Confirm.

.PARAMETER Path
Anger filsökvägar eller en katalogsökväg som ska skannas efter filer. Du kan använda jokertecken. Obligatorisk.

.PARAMETER Filter
Anger ett filnamnsmönster (t.ex. *.txt). Som standard inkluderas alla filer. Används med -Path.

.PARAMETER Recurse
Inkluderar filer i underkataloger när -Path pekar på en katalog.

.PARAMETER WhatIf
Visar vad som skulle hända om cmdlet:et kördes. Cmdlet:et körs inte.

.PARAMETER Confirm
Ber om bekräftelse innan cmdlet:et körs.

.EXAMPLE
PS> Get-FileIntegrity -Path 'C:\Documents\*". För att skanna alla filer i C:\Documents.

.EXAMPLE
PS> Get-FileIntegrity -Path 'C:\Documents\' -Filter '*.txt' -Recurse
Skannar alla .txt-filer i C:\Documents och dess underkataloger.

.EXAMPLE
PS> Get-FileIntegrity -Path 'file.txt' | Export-Clixml -Path 'baseline.xml'
Beräknar hash för fil.txt och exporterar baseline.

.NOTES
Denna cmdlet kräver PowerShell 5.1 eller senare.

.LINK
https://docs.microsoft.com/powershell/module/microsoft.powershell.utility/get-filehash |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | .SYNOPSIS
Get-FileIntegrity upptäcker och rapporterar ändringar i filer.

.SYNTAX
Get-FileIntegrity [-Path] <String[]> [[-Filter] <String>] [-Recurse] [-WhatIf] [-Confirm] [<CommonParameters>]

.DESCRIPTION
Cmdlet:et Get-FileIntegrity beräknar och jämför en säker hash (SHA-256) för angivna filer. Använd parametern -Path för att ange en eller flera filsökvägar eller en katalog. Använd -Filter för att filtrera efter filnamnsmönster (t.ex. *.txt). Parametern -Recurse inkluderar underkataloger. För att spara hashar för framtida jämförelse, skicka utdata till en fil med Export-Clixml. Vid nästa körning, jämför med Import-Clixml. Cmdlet:et stöder WhatIf och Confirm.

.PARAMETER Path
Anger filsökvägar eller en katalogsökväg som ska skannas efter filer. Du kan använda jokertecken. Obligatorisk.

.PARAMETER Filter
Anger ett filnamnsmönster (t.ex. *.txt). Som standard inkluderas alla filer. Används med -Path.

.PARAMETER Recurse
Inkluderar filer i underkataloger när -Path pekar på en katalog.

.PARAMETER WhatIf
Visar vad som skulle hända om cmdlet:et kördes. Cmdlet:et körs inte.

.PARAMETER Confirm
Ber om bekräftelse innan cmdlet:et körs.

.EXAMPLE
PS> Get-FileIntegrity -Path 'C:\Documents\*". För att skanna alla filer i C:\Documents.

.EXAMPLE
PS> Get-FileIntegrity -Path 'C:\Documents\' -Filter '*.txt' -Recurse
Skannar alla .txt-filer i C:\Documents och dess underkataloger.

.EXAMPLE
PS> Get-FileIntegrity -Path 'file.txt' | Export-Clixml -Path 'baseline.xml'
Beräknar hash för fil.txt och exporterar baseline.

.NOTES
Denna cmdlet kräver PowerShell 5.1 eller senare.

.LINK
https://docs.microsoft.com/powershell/module/microsoft.powershell.utility/get-filehash |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | Tillhandahåller ett alternativt serialiseringsalternativ som konverterar alla uppräkningar till deras strängrepresentation. |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

Skriver en hashtabell som indragen JSON till config.json atomiskt.

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

Skriver processobjekt som komprimera JSON atomärt.

## Parameter Details

### `-FilePath <String>`

> Sökvägen till filen som ska skrivas.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Object>`

> Objektet som ska serialiseras som JSON och skrivas till filen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> Det maximala antalet försök för den atomära skrivoperationen. Standard är 4.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> Fördröjningen i millisekunder mellan återförsök. Standard är 200.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> Om större än 0, avstudsar skrivningar till den här filen. Standard är 0 (inaktiverad).

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> Maximalt djup för JSON-serialisering. Standard är 30.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> .SYNOPSIS
Get-FileIntegrity upptäcker och rapporterar ändringar i filer.

.SYNTAX
Get-FileIntegrity [-Path] <String[]> [[-Filter] <String>] [-Recurse] [-WhatIf] [-Confirm] [<CommonParameters>]

.DESCRIPTION
Cmdlet:et Get-FileIntegrity beräknar och jämför en säker hash (SHA-256) för angivna filer. Använd parametern -Path för att ange en eller flera filsökvägar eller en katalog. Använd -Filter för att filtrera efter filnamnsmönster (t.ex. *.txt). Parametern -Recurse inkluderar underkataloger. För att spara hashar för framtida jämförelse, skicka utdata till en fil med Export-Clixml. Vid nästa körning, jämför med Import-Clixml. Cmdlet:et stöder WhatIf och Confirm.

.PARAMETER Path
Anger filsökvägar eller en katalogsökväg som ska skannas efter filer. Du kan använda jokertecken. Obligatorisk.

.PARAMETER Filter
Anger ett filnamnsmönster (t.ex. *.txt). Som standard inkluderas alla filer. Används med -Path.

.PARAMETER Recurse
Inkluderar filer i underkataloger när -Path pekar på en katalog.

.PARAMETER WhatIf
Visar vad som skulle hända om cmdlet:et kördes. Cmdlet:et körs inte.

.PARAMETER Confirm
Ber om bekräftelse innan cmdlet:et körs.

.EXAMPLE
PS> Get-FileIntegrity -Path 'C:\Documents\*". För att skanna alla filer i C:\Documents.

.EXAMPLE
PS> Get-FileIntegrity -Path 'C:\Documents\' -Filter '*.txt' -Recurse
Skannar alla .txt-filer i C:\Documents och dess underkataloger.

.EXAMPLE
PS> Get-FileIntegrity -Path 'file.txt' | Export-Clixml -Path 'baseline.xml'
Beräknar hash för fil.txt och exporterar baseline.

.NOTES
Denna cmdlet kräver PowerShell 5.1 eller senare.

.LINK
https://docs.microsoft.com/powershell/module/microsoft.powershell.utility/get-filehash

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> .SYNOPSIS
Get-FileIntegrity upptäcker och rapporterar ändringar i filer.

.SYNTAX
Get-FileIntegrity [-Path] <String[]> [[-Filter] <String>] [-Recurse] [-WhatIf] [-Confirm] [<CommonParameters>]

.DESCRIPTION
Cmdlet:et Get-FileIntegrity beräknar och jämför en säker hash (SHA-256) för angivna filer. Använd parametern -Path för att ange en eller flera filsökvägar eller en katalog. Använd -Filter för att filtrera efter filnamnsmönster (t.ex. *.txt). Parametern -Recurse inkluderar underkataloger. För att spara hashar för framtida jämförelse, skicka utdata till en fil med Export-Clixml. Vid nästa körning, jämför med Import-Clixml. Cmdlet:et stöder WhatIf och Confirm.

.PARAMETER Path
Anger filsökvägar eller en katalogsökväg som ska skannas efter filer. Du kan använda jokertecken. Obligatorisk.

.PARAMETER Filter
Anger ett filnamnsmönster (t.ex. *.txt). Som standard inkluderas alla filer. Används med -Path.

.PARAMETER Recurse
Inkluderar filer i underkataloger när -Path pekar på en katalog.

.PARAMETER WhatIf
Visar vad som skulle hända om cmdlet:et kördes. Cmdlet:et körs inte.

.PARAMETER Confirm
Ber om bekräftelse innan cmdlet:et körs.

.EXAMPLE
PS> Get-FileIntegrity -Path 'C:\Documents\*". För att skanna alla filer i C:\Documents.

.EXAMPLE
PS> Get-FileIntegrity -Path 'C:\Documents\' -Filter '*.txt' -Recurse
Skannar alla .txt-filer i C:\Documents och dess underkataloger.

.EXAMPLE
PS> Get-FileIntegrity -Path 'file.txt' | Export-Clixml -Path 'baseline.xml'
Beräknar hash för fil.txt och exporterar baseline.

.NOTES
Denna cmdlet kräver PowerShell 5.1 eller senare.

.LINK
https://docs.microsoft.com/powershell/module/microsoft.powershell.utility/get-filehash

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> Tillhandahåller ett alternativt serialiseringsalternativ som konverterar alla uppräkningar till deras strängrepresentation.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Write-TextFileAtomic.md)
