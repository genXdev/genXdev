# Get-FreeFallTime

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula o tempo necessário para um objeto cair de uma determinada altura durante a queda livre.

## Description

Calcula a duração do tempo necessária para um objeto cair de uma altura especificada usando um método numérico que considera a resistência do ar e a velocidade terminal. O cálculo utiliza pequenos intervalos de tempo para modelar com precisão a física de objetos em queda com restrições realistas de velocidade terminal.

## Syntax

```powershell
Get-FreeFallTime [-HeightInMeters] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-HeightInMeters` | Double | ✅ | — | 0 | `0` | A altura para cair em metros |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | A velocidade terminal em metros por segundo (padrão: 53 m/s para um ser humano) |
| `-As` | String | — | — | 2 | — | A unidade para o tempo de saída |

## Examples

### Example 1

```powershell
Get-FreeFallTime -HeightInMeters 100 -TerminalVelocityInMs 53
```

Calcula o tempo necessário para cair 100 metros com a velocidade terminal humana padrão.

### Example 2

```powershell
Get-FreeFallTime 50
```

Calcula o tempo necessário para cair 50 metros usando parâmetro posicional e velocidade terminal padrão.

### Example 3

```powershell
Get-FreeFallTime -HeightInMeters 100 -As "minutes"
```

Calcula o tempo necessário para cair 100 metros e retorna o resultado em minutos.

## Related Links

- [Get-FreeFallTime on GitHub](https://github.com/genXdev/genXdev)
