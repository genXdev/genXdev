# Get-AIKnownFacesRootpath

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** —

## Synopsis

> Geeft de geconfigureerde directory voor gezichtsafbeeldingsbestanden die worden gebruikt in GenXdev.AI-operaties.

## Description

Deze functie haalt de globale gezichtsmap op die door de GenXdev.AI-module wordt gebruikt voor verschillende gezichtsherkenning- en AI-bewerkingen. Eerst worden globale variabelen gecontroleerd (tenzij SkipSession is opgegeven), vervolgens wordt teruggevallen op persistente voorkeuren en ten slotte worden systeemstandaarden gebruikt.

## Syntax

```powershell
Get-AIKnownFacesRootpath [[-FacesDirectory] <String>] [-ClearSession] [-PreferencesDatabasePath <String>] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Directory-pad voor gezichtsafbeeldingsbestanden |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Het sessie-instelling (Globale variabele) wissen voordat u ophaalt |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen die zijn opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |

## Examples

### Get-AIKnownFacesRootpath

```powershell
Get-AIKnownFacesRootpath
```

Hiermee wordt de momenteel geconfigureerde gezichtenmap opgehaald uit globale variabelen of instellingen.

### Get-AIKnownFacesRootpath -SkipSession

```powershell
Get-AIKnownFacesRootpath -SkipSession
```

Haalt alleen de geconfigureerde gezichtenmap op uit permanente voorkeuren, waarbij eventuele sessie-instellingen worden genegeerd.

### Get-AIKnownFacesRootpath -ClearSession

```powershell
Get-AIKnownFacesRootpath -ClearSession
```

Wist de sessie gezichten-map instelling en haalt vervolgens de map op uit
permanente voorkeuren.

### Get-AIKnownFacesRootpath "C:\MyFaces"

```powershell
Get-AIKnownFacesRootpath "C:\MyFaces"
```

Geeft de opgegeven directory terug na het uitbreiden van het pad.

## Related Links

- [Get-AIKnownFacesRootpath on GitHub](https://github.com/genXdev/genXdev)
