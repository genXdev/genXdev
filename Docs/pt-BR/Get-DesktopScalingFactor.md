# Get-DesktopScalingFactor

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Recupera o fator de escala de exibição do Windows (configuração de DPI) para um monitor especificado.

## Description

* Obtém o fator de escala de exibição atual do Windows configurado para um monitor
  no sistema.
* O fator de escala é expresso como uma porcentagem, onde 100 representa
  escala padrão (96 DPI). Valores comuns são 100, 125, 150 e 200.
* Se nenhum monitor for especificado, retorna o fator de escala para a exibição
  primária.

## Syntax

```powershell
Get-DesktopScalingFactor [[-Monitor] <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Monitor` | Int32 | — | — | 0 | `0` | O índice do monitor a ser verificado (0 = monitor primário) |

## Examples

### Example 1

```powershell
Get-DesktopScalingFactor -Monitor 0
```

Retorna a porcentagem do fator de escala para o monitor principal.

### Example 2

```powershell
Get-DesktopScalingFactor 1
```

Retorna a porcentagem do fator de escala para o segundo monitor usando parâmetro posicional.

## Related Links

- [Get-DesktopScalingFactor on GitHub](https://github.com/genXdev/genXdev)
