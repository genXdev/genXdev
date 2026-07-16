# ResolveInputObjectFileNames

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
ResolveInputObjectFileNames [[-InputObject] <Object>] [[-RelativeBasePath] <String>] [-AllDrives] [-File] [-IncludeAlternateFileStreams] [-NoRecurse] [-PassThru] [<CommonParameters>]

ResolveInputObjectFileNames [[-Pattern] <String>] [<CommonParameters>]

ResolveInputObjectFileNames [-Directory] [-FilesAndDirectories] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Input object containing file names or directories |
| `-File` | SwitchParameter | — | — | Named | — | Return only files |
| `-Pattern` | String | — | — | 1 | — | Regulärer Ausdruck zum Durchsuchen von Inhalten *(Parameter set: )* 🌐 *Supports wildcards* |
| `-RelativeBasePath` | String | — | — | 2 | — | Basispfad zum Auflösen relativer Pfade in der Ausgabe |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Durchsuchen aller verfügbaren Laufwerke |
| `-Directory` | SwitchParameter | — | — | Named | — | Search for directories only *(Parameter set: )* |
| `-FilesAndDirectories` | SwitchParameter | — | — | Named | — | Sowohl Dateien als auch Verzeichnisse einschließen *(Parameter set: )* |
| `-PassThru` | SwitchParameter | — | — | Named | — | Entferne alle Leerzeichen aus dieser Zeichenkette |
| `-IncludeAlternateFileStreams` | SwitchParameter | — | — | Named | — | Alternate-Datenströme in Suchergebnisse einbeziehen |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Nicht in Unterverzeichnisse absteigen |

## Related Links

- [ResolveInputObjectFileNames on GitHub](https://github.com/genXdev/genXdev)
