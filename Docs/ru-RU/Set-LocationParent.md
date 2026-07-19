# Set-LocationParent

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** `..

## Synopsis

> Изменяет текущее местоположение на родительский каталог и отображает его содержимое.

## Description

* Переходит на один уровень вверх в иерархии файловой системы.
* Отображает содержимое новой текущей директории.
* Предоставляет удобный псевдоним '..' для быстрой навигации по каталогам.

## Syntax

```powershell
Set-LocationParent [-WhatIf] [-Confirm] [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Set-LocationParent
```

Переходит в родительский каталог и выводит список его содержимого.

### Example 2

```powershell
..
```

Использует псевдоним для перехода в родительский каталог.

## Related Links

- [Set-LocationParent on GitHub](https://github.com/genXdev/genXdev)
