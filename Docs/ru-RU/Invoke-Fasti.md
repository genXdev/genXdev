# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti

## Synopsis

> Извлекает файлы архивов в текущей директории в отдельные папки и удаляет их после этого.

## Description

Автоматически извлекает распространённые форматы архивов (zip, 7z, tar и др.), найденные в текущем каталоге, в отдельные папки, названные по имени каждого архива. После успешного извлечения исходные файлы архивов удаляются. Требует установки 7-Zip в системе.

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | Введите пароль для зашифрованного(ых) архива(ов) |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | Рекурсивно распаковывать архивы, найденные в извлеченных папках |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Related Links

- [Invoke-Fasti on GitHub](https://github.com/genXdev/genXdev)
