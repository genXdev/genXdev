# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Expand-Path -FilePath <String> [-CreateDirectory] [-CreateFile] [-DeleteExistingFile] [-DirectoryMustExist] [-FileMustExist] [-ForceDrive <Char>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Pad uitbreiden |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | Maakt de map aan als deze nog niet bestaat |
| `-CreateFile` | SwitchParameter | — | — | Named | — | Maakt een leeg bestand aan als het nog niet bestaat |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | Verwijdert het bestand als het al bestaat |
| `-ForceDrive` | Char | — | — | Named | `'*'` | Dwingt het gebruik van een specifieke schijf |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | Zal een fout geven als het bestand niet bestaat |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | Gooit een fout als de map niet bestaat |

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
