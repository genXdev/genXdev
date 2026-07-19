# Set-WindowsWallpaper

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Define um wallpaper aleatório de um diretório especificado.

## Description

* Seleciona um arquivo de imagem aleatório do diretório especificado e o define como papel de parede da área de trabalho do Windows.
* Suporta formatos de imagem JPG/JPEG e configura o papel de parede para "ajustar" à tela por padrão.

## Syntax

```powershell
Set-WindowsWallpaper [[-InputObject] <Object>] [-AllDrives] [-NoRecurse] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InputObject` | Object | — | ✅ (ByValue, ByPropertyName) | 0 | — | Caminho para o diretório que contém as imagens de papel de parede |
| `-AllDrives` | SwitchParameter | — | — | Named | `False` | Pesquisar em todas as unidades disponíveis |
| `-NoRecurse` | SwitchParameter | — | — | Named | `False` | Não recorrer a subdiretórios |

## Examples

### Example 1

```powershell
Set-WindowsWallpaper -InputObject "C:\Wallpapers\*.jpg"
```

Define um papel de parede aleatório do diretório C:\Wallpapers.

### Example 2

```powershell
nextbg
```

Define um papel de parede aleatório do diretório padrão usando o alias.

## Related Links

- [Set-WindowsWallpaper on GitHub](https://github.com/genXdev/genXdev)
