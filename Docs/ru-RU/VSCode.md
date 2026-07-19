# VSCode

> **Module:** GenXdev.Coding | **Type:** Function | **Aliases:** —

## Synopsis

> Открывает один или несколько файлов в Visual Studio Code.

## Description

Эта функция принимает пути к файлам и открывает их в Visual Studio Code. Она расширяет пути и проверяет существование файлов перед попыткой открытия. Функция поддерживает как прямые пути к файлам, так и конвейерный ввод, что делает её идеальной для быстрого открытия нескольких файлов из терминальных поисков.

## Syntax

```powershell
VSCode -FilePath <String[]> [-Copilot] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String[] | ✅ | ✅ (ByValue) | 0 | — | Путь к файлу для открытия в VSCode |
| `-Copilot` | SwitchParameter | — | — | Named | — | Добавить исходный файл в сеанс редактирования Copilot |

## Examples

### VSCode -FilePath "C:\path\to\file.txt" -Copilot

```powershell
VSCode -FilePath "C:\path\to\file.txt" -Copilot
```

### Get-ChildItem *.js -Recurse | VSCode

```powershell
Get-ChildItem *.js -Recurse | VSCode
```

## Related Links

- [VSCode on GitHub](https://github.com/genXdev/genXdev)
