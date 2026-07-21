# Get-RefactorReport

> **Module:** GenXdev.Coding | **Type:** Cmdlet | **Aliases:** `refactorreport`

## Synopsis

> Genererar en detaljerad rapport om refaktoreringsoperationer och deras status.

## Description

Analyserar och rapporterar om framstegen för refaktoreringsoperationer genom att granska deras nuvarande tillstånd, slutförandestatus och påverkade funktioner. Ger utdata i antingen strukturerad hashtabellformat eller människoläsbar justerad textkolumn. Rapporten innehåller refaktorernas namn, promptnyckel, prioritet, status, funktionsantal och slutförandeprocent.

## Syntax

```powershell
Get-RefactorReport [[-Name] <String[]>] [-AsText] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | (Remove the original text that would be in Swedish, as it's already the translation? Wait, the instruction says to translate to Swedish, and the input is English. So translate the English to Swedish.) The text says: 'The name of the refactor, accepts wildcards'. Translation: 'Namnet på omfaktoriseringen, accepterar jokertecken'. 🌐 *Supports wildcards* |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Anger sökvägen till inställningsdatabasfilen. |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Om inställt, använd endast sessionscachen för omstruktureringsdata. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Om angiven, rensa sessionscachen innan körning. |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Om inställt, hoppa över att ladda sessionscache. |
| `-AsText` | SwitchParameter | — | — | Named | `False` | Utför rapporten i textformat istället för hashtabell. |

## Examples

### Example 1

```powershell
Get-RefactorReport -Name "DatabaseRefactor" -AsText
```

Genererar en textrapport för omstruktureringar som matchar "DatabaseRefactor".

### Example 2

```powershell
refactorreport "*"
```

Genererar hashtabellsrapport för alla omfaktoriseringar som använder alias.

## Parameter Details

### `-Name <String[]>`

> (Remove the original text that would be in Swedish, as it's already the translation? Wait, the instruction says to translate to Swedish, and the input is English. So translate the English to Swedish.) The text says: 'The name of the refactor, accepts wildcards'. Translation: 'Namnet på omfaktoriseringen, accepterar jokertecken'.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-PreferencesDatabasePath <String>`

> Anger sökvägen till inställningsdatabasfilen.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Om inställt, använd endast sessionscachen för omstruktureringsdata.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Om angiven, rensa sessionscachen innan körning.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Om inställt, hoppa över att ladda sessionscache.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsText`

> Utför rapporten i textformat istället för hashtabell.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs


## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-ReleaseNoteLineToREADME.md)
- [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Add-TodoLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Refactor.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/VSCode.md)
