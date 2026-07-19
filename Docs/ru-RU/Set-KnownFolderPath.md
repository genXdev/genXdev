# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Изменяет физический путь известной папки Windows.

## Description

Использует API Windows Shell32 для перемещения системных папок, таких как «Документы», «Загрузки», «Рабочий стол» или другие известные папки Windows, в новое место. Функция проверяет существование целевого пути, находит уникальный GUID папки в реестре известных папок и использует API SHSetKnownFolderPath для выполнения перемещения. Типичные случаи использования включают перемещение пользовательских папок на другой диск для управления пространством или организации. Соблюдайте осторожность при перемещении системных папок, так как это может повлиять на стабильность системы.

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | Известная папка для изменения |
| `-Path` | String | ✅ | — | 1 | — | Новый путь для известной папки |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Related Links

- [Set-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
