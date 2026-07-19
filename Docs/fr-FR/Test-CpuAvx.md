# Test-CpuAvx

> **Module:** GenXdev.AI | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Teste si le processeur prend en charge les jeux d'instructions AVX et AVX2.

## Description

* Vérifie si le processeur prend en charge les jeux d'instructions AVX et AVX2 en utilisant l'API Windows (kernel32.dll IsProcessorFeaturePresent).
* Retourne un objet avec les propriétés booléennes AVX et AVX2.
* Utile pour déterminer la compatibilité matérielle pour les charges de travail IA/ML.

## Syntax

```powershell
Test-CpuAvx [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Test-CpuAvx
```

Vérifie la prise en charge du jeu d'instructions du CPU et renvoie la disponibilité d'AVX/AVX2.

## Related Links

- [Test-CpuAvx on GitHub](https://github.com/genXdev/genXdev)
