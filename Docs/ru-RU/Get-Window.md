# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Получает информацию об окне для указанных процессов или дескрипторов окон.

## Description

* Получает информацию об окне, используя имя процесса, ID или дескриптор окна.
* Возвращает объекты WindowObj, содержащие сведения об основных окнах соответствующих процессов.
* Поддерживает подстановочные знаки при поиске по имени процесса.

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Название процесса для получения информации об окне 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | Идентификатор процесса, для которого нужно получить информацию об окне |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Обработчик окна для получения информации о нем |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

Получает информацию об окнах для всех процессов с именем "notepad".

### Example 2

```powershell
Get-Window -ProcessId 1234
```

Извлекает информацию об окне для процесса с идентификатором 1234.

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

Возвращает информацию об окне с дескриптором 45678.

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
