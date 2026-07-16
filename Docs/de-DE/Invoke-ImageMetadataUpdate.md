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
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Array von Verzeichnispfaden, die für die Aktualisierung von Bildmetadaten verarbeitet werden sollen |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Wiederholt fehlgeschlagene Aktualisierungen der Bildmetadaten |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Nur Bilder verarbeiten, die noch keine Metadatendateien haben |
| `-Recurse` | SwitchParameter | — | — | Named | — | Falls angegeben, verarbeitet Bilder rekursiv in Unterverzeichnissen |
| `-Force` | SwitchParameter | — | — | Named | — | Erzwinge Neuerstellung der Metadaten, auch wenn sie bereits existieren |
| `-PassThru` | SwitchParameter | — | — | Named | — | Anstatt es auf der Konsole auszugeben, gib strukturierte Objekte zurück. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Deutliche Alternativ-Einstellungen, die in der Sitzung gespeichert sind, für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Verwenden Sie keine alternativen, in der Sitzung gespeicherten Einstellungen für KI-Präferenzen wie Sprache, Bildersammlungen usw. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Datenbankpfad für Präferenzdatendateien |

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
