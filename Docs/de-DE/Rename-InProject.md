# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Rename-InProject [[-Source] <String>] -FindText <String> -ReplacementText <String> [-CaseInsensitive] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | — | — | 0 | — | Der Ordner, der Dateipfad oder der Ordner+Suchmaske |
| `-FindText` | String | ✅ | — | 1 | — | Der zu suchende Text (Groß-/Kleinschreibung wird durch den Parameter CaseInsensitive gesteuert) |
| `-ReplacementText` | String | ✅ | — | 2 | — | Der Text, der mit den Treffern ersetzt werden soll |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
