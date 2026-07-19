# Get-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Cmdlet | **Aliases:** `getimgmetalang

## Synopsis

> Hiermee wordt de geconfigureerde standaardtaal voor bewerkingen van afbeeldingsmetadata opgehaald.

## Description

* Deze cmdlet haalt de standaardtaal op die door de GenXdev.AI-module wordt gebruikt voor metagegevensbewerkingen van afbeeldingen.
* Het controleert eerst globale variabelen (tenzij SkipSession is opgegeven), valt dan terug op permanente voorkeuren en gebruikt ten slotte de systeemstandaardinstellingen.

## Syntax

```powershell
Get-AIMetaLanguage [[-Language] <string>] [-PreferencesDatabasePath <string>] [-SessionOnly] [-ClearSession] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | De standaardtaal voor bewerkingen van afbeeldingsmetadata |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |

## Examples

### Example 1

```powershell
Get-AIMetaLanguage
```

Haal de momenteel geconfigureerde taal op uit globale variabelen of voorkeuren.

### Example 2

```powershell
Get-AIMetaLanguage -SkipSession
```

Haal de geconfigureerde taal op uit de blijvende voorkeuren, waarbij de sessie wordt genegeerd.

### Example 3

```powershell
Get-AIMetaLanguage -ClearSession
```

Wis de sessie-instelling en haal de taal op uit de persistente voorkeuren.

## Related Links

- [Get-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
