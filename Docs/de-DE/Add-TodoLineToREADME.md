# Add-TodoLineToREADME

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** `todo`

## Synopsis

> Fügt ein Aufgabenelement zur README.md-Datei hinzu.

## Description

Fügt einen mit Zeitstempel versehenen Aufgabeneintrag zum Abschnitt „## Todos“ einer README.md-Datei hinzu. Die Aufgabeneinträge können als erledigt markiert werden, und der geänderte Abschnitt kann angezeigt werden. Jeder neue Aufgabeneintrag wird automatisch mit einem Zeitstempel versehen, es sei denn, er wird als erledigt markiert.

## Syntax

```powershell
Add-TodoLineToREADME [[-Line] <String>] [-Ascending] [-Code] [-Done] [-First <Int32>] [-Priority <Int32>] [-Show] [-SortByDate] [-UseHomeREADME] [-UseOneDriveREADME] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Line` | String | — | — | 0 | `''` | Der hinzuzufügende Aufgabentext |
| `-Code` | SwitchParameter | — | — | Named | — | README in Visual Studio Code öffnen |
| `-Show` | SwitchParameter | — | — | Named | — | .DESCRIPTION
Der Cmdlet **Set-SMEProjectMember** bearbeitet einen Benutzer oder eine Gruppe, der/die dem Projekt hinzugefügt wurde.

Zum Bearbeiten der Berechtigungen eines Projektmitglieds können Sie den Parameter bzw. die Parameter "Permissions" verwenden. Wenn Sie einen Parameter verwenden, dessen Wert Sie nicht ändern möchten, geben Sie den ursprünglichen Wert der Eigenschaft an.

Um die E-Mail-Adresse eines externen Benutzers zu bearbeiten, übergeben Sie die alte und neue E-Mail-Adresse mithilfe der Parameter "ExistingEmail" und "NewEmail". Bei internen Benutzern können Sie den Parameter "NewEmail" nicht verwenden. |
| `-Done` | SwitchParameter | — | — | Named | — | Aufgabe als erledigt markieren |
| `-UseHomeREADME` | SwitchParameter | — | — | Named | — | README im PowerShell-Profilverzeichnis verwenden |
| `-UseOneDriveREADME` | SwitchParameter | — | — | Named | — | Verwenden Sie README im OneDrive-Verzeichnis |
| `-Priority` | Int32 | — | — | Named | `1` | Priorität für die Sortierung (höher = zuerst angezeigt, Standard 1) |
| `-SortByDate` | SwitchParameter | — | — | Named | — | Zeilen nach Datum (yyyyMMdd-Präfix) statt nach Priorität sortieren |
| `-Ascending` | SwitchParameter | — | — | Named | — | Die Sortierreihenfolge umkehren (aufsteigend statt absteigend) |
| `-First` | Int32 | — | — | Named | `0` | Limit - Ausgabe auf die ersten N Zeilen beschränken |

## Examples

### Add-TodoLineToREADME -Line "Implement new feature" -Show -Code

```powershell
Add-TodoLineToREADME -Line "Implement new feature" -Show -Code
```

### todo "Fix bug" -Done

```powershell
todo "Fix bug" -Done
```

## Parameter Details

### `-Line <String>`

> Der hinzuzufügende Aufgabentext

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `''` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Code`

> README in Visual Studio Code öffnen

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Show`

> .DESCRIPTION
Der Cmdlet **Set-SMEProjectMember** bearbeitet einen Benutzer oder eine Gruppe, der/die dem Projekt hinzugefügt wurde.

Zum Bearbeiten der Berechtigungen eines Projektmitglieds können Sie den Parameter bzw. die Parameter "Permissions" verwenden. Wenn Sie einen Parameter verwenden, dessen Wert Sie nicht ändern möchten, geben Sie den ursprünglichen Wert der Eigenschaft an.

Um die E-Mail-Adresse eines externen Benutzers zu bearbeiten, übergeben Sie die alte und neue E-Mail-Adresse mithilfe der Parameter "ExistingEmail" und "NewEmail". Bei internen Benutzern können Sie den Parameter "NewEmail" nicht verwenden.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Done`

> Aufgabe als erledigt markieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseHomeREADME`

> README im PowerShell-Profilverzeichnis verwenden

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseOneDriveREADME`

> Verwenden Sie README im OneDrive-Verzeichnis

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Priority <Int32>`

> Priorität für die Sortierung (höher = zuerst angezeigt, Standard 1)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SortByDate`

> Zeilen nach Datum (yyyyMMdd-Präfix) statt nach Priorität sortieren

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Ascending`

> Die Sortierreihenfolge umkehren (aufsteigend statt absteigend)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-First <Int32>`

> Limit - Ausgabe auf die ersten N Zeilen beschränken

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-FeatureLineToREADME.md)
- [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-IdeaLineToREADME.md)
- [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-IssueLineToREADME.md)
- [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-LineToREADME.md)
- [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/de-DE/Add-ReleaseNoteLineToREADME.md)
- [Get-Features](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Features.md)
- [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Ideas.md)
- [Get-Issues](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Issues.md)
- [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Refactor.md)
- [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-RefactorReport.md)
- [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-ReleaseNotes.md)
- [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/de-DE/Get-Todoos.md)
- [New-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/New-Refactor.md)
- [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/de-DE/Open-SourceFileInIde.md)
- [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/de-DE/Publish-ReleaseNotesToManifest.md)
- [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Remove-Refactor.md)
- [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Start-NextRefactor.md)
- [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/de-DE/Update-Refactor.md)
- [VSCode](https://github.com/genXdev/genXdev/blob/main/de-DE/VSCode.md)
