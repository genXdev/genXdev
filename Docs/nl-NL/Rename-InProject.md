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
| `-Source` | String | — | — | 0 | — | De directory, het bestandspad, of directory+zoekmasker |
| `-FindText` | String | ✅ | — | 1 | — | De te vinden tekst (hoofdlettergevoeligheid wordt geregeld door de parameter CaseInsensitive) |
| `-ReplacementText` | String | ✅ | — | 2 | — | De tekst die overeenkomsten moet vervangen |
| `-CaseInsensitive` | SwitchParameter | — | — | Named | — | Perform case-insensitive text replacement |

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
