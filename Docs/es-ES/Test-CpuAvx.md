# Test-CpuAvx

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Comprueba si la CPU es compatible con los conjuntos de instrucciones AVX y AVX2.

## Description

* Comprueba si el procesador soporta los conjuntos de instrucciones AVX y AVX2 usando la API de Windows (kernel32.dll IsProcessorFeaturePresent).
* Devuelve un objeto con propiedades booleanas AVX y AVX2.
* Útil para determinar la compatibilidad de hardware para cargas de trabajo de IA/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Comprueba la compatibilidad con el conjunto de instrucciones de la CPU y devuelve la disponibilidad de AVX/AVX2.

## Related Links

- [Test-CpuAvx on GitHub](https://github.com/genXdev/genXdev)
