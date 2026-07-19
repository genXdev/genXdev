# Test-CpuAvx

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Проверяет, поддерживает ли процессор наборы инструкций AVX и AVX2.

## Description

* Проверяет, поддерживает ли процессор наборы инструкций AVX и AVX2, используя
  Windows API (kernel32.dll IsProcessorFeaturePresent).
* Возвращает объект с булевыми свойствами AVX и AVX2.
* Полезно для определения совместимости оборудования для задач ИИ/МО.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Проверяет поддержку набора инструкций CPU и возвращает доступность AVX/AVX2.

## Related Links

- [Test-CpuAvx on GitHub](https://github.com/genXdev/genXdev)
