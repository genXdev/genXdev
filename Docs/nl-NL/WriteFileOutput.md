# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> Geeft bestandsinformatie weer met hyperlinks naar weergavenamen voor een verbeterde gebruikerservaring.

## Description

Deze functie verwerkt bestandsinvoerobjecten en geeft ze weer in een gebruiksvriendelijke indeling met hyperlinks naar bestandsnamen wanneer deze in de console worden weergegeven. Het verwerkt verschillende invoertypes, waaronder strings, FileInfo-objecten en andere objecttypen. De functie detecteert automatisch of de uitvoer wordt omgeleid of in een pijplijn wordt opgevangen en past het gedrag hierop aan.

## Syntax

```powershell
WriteFileOutput -CallerInvocation <Object> -Input <Object> [-FullPaths] [-Prefix <String>] [-RelativeBasePath <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallerInvocation` | Object | ✅ | ✅ (ByValue) | 0 | — | De aanroepinformatie van de aanroepende functie |
| `-Input` | Object | ✅ | ✅ (ByValue) | 1 | — | Het te verwerken invoerobject, dat een bestandspad of object kan zijn |
| `-Prefix` | String | — | — | Named | — | Een optionele string prefix om voor de outputweergave te plaatsen voor extra context |
| `-RelativeBasePath` | String | — | — | Named | — | Basispad voor het genereren van relatieve bestandspaden in uitvoer |
| `-FullPaths` | SwitchParameter | — | — | Named | — | Forceert uitvoer om volledige absolute paden te gebruiken in plaats van relatieve paden |

## Examples

### WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"

```powershell
WriteFileOutput -CallerInvocation $MyInvocation -Input "C:\temp\file.txt"
```

### Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_

```powershell
Get-ChildItem | WriteFileOutput -CallerInvocation $MyInvocation -Input $_
```

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
