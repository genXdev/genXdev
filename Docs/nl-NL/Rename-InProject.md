# Rename-InProject

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `rip

## Synopsis

> Voert tekstvervanging uit door een projectmap heen.

## Description

Doorzoekt recursief bestanden en mappen in een project om tekstvervangingen uit te voeren. Behandelt zowel bestands-/mapnamen als bestandsinhoud. Slaat veelvoorkomende binaire bestanden en repository-mappen (.git, .svn) over om corruptie te voorkomen. Gebruikt UTF-8-codering zonder BOM voor bestandsbewerkingen. Ondersteunt zowel hoofdlettergevoelige als hoofdletterongevoelige vervangingsmodi.

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

## Examples

### Rename-InProject -Source .\src\*.js -FindText "oldName" `     -ReplacementText "newName"

```powershell
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"
```

### rip . "MyClass" "MyNewClass" -WhatIf

```powershell
rip . "MyClass" "MyNewClass" -WhatIf
```

### rip . "OLDNAME" "NewName" -CaseInsensitive

```powershell
rip . "OLDNAME" "NewName" -CaseInsensitive
```

## Related Links

- [Rename-InProject on GitHub](https://github.com/genXdev/genXdev)
