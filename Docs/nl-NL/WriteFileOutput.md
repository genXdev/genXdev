# WriteFileOutput

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

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

## Related Links

- [WriteFileOutput on GitHub](https://github.com/genXdev/genXdev)
