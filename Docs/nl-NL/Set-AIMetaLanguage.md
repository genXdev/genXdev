# Set-AIMetaLanguage

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Stelt de standaardtaal en optioneel de afbeeldingsmappen in voor GenXdev.AI metadata-bewerkingen voor afbeeldingen.

## Description

Deze functie configureert de globale standaardtaal voor metadata-bewerkingen van afbeeldingen in de GenXdev.AI-module. Optioneel kan het ook de globale afbeeldingsmappen instellen. Beide instellingen worden opgeslagen in de voorkeursopslag van de module voor gebruik tussen sessies.

## Syntax

```powershell
Set-AIMetaLanguage [[-Language] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Language` | String | — | — | 0 | — | De standaardtaal voor bewerkingen van afbeeldingsmetadata |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |

## Examples

### Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")

```powershell
Set-AIMetaLanguage -Language "Spanish" -ImageDirectories @("C:\Images", "D:\Photos")
```

Stelt de taal- en afbeeldingsmappen persistent in in voorkeuren.

### Set-AIMetaLanguage "French"

```powershell
Set-AIMetaLanguage "French"
```

Stelt de taal persistent in voorkeuren.

### Set-AIMetaLanguage -Language "German" -SessionOnly

```powershell
Set-AIMetaLanguage -Language "German" -SessionOnly
```

Stelt de taal alleen in voor de huidige sessie (Globale variabele).

### Set-AIMetaLanguage -ClearSession

```powershell
Set-AIMetaLanguage -ClearSession
```

Wist de sessie taalinstelling (Globale variabele) zonder persistente voorkeuren te beïnvloeden.

## Related Links

- [Set-AIMetaLanguage on GitHub](https://github.com/genXdev/genXdev)
