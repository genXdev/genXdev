# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageMetadataUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Force] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Array van directorypaden om te verwerken voor updates van afbeeldingsmetadata |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Eerder mislukte updates van afbeeldingsmetadata worden opnieuw geprobeerd |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Alleen afbeeldingen verwerken die nog geen metadatabestanden hebben |
| `-Recurse` | SwitchParameter | — | — | Named | — | Als opgegeven, worden afbeeldingen in subdirectory's recursief verwerkt |
| `-Force` | SwitchParameter | — | — | Named | — | Forceer herbouwen van metadata, zelfs als deze al bestaat |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return structured objects instead of outputting to console |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Gebruik alternatieve instellingen opgeslagen in de sessie voor AI-voorkeuren zoals taal, afbeeldingsverzamelingen, enz. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Wis alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Gebruik geen alternatieve instellingen opgeslagen in sessie voor AI-voorkeuren zoals taal, afbeeldingscollecties, enz. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Databasepad voor voorkeursgegevensbestanden |

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
