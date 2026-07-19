# Get-FreeFallHeight

> **Module:** GenXdev.Helpers.Physics | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Calcula a altura caída durante queda livre para um dado intervalo de tempo.

## Description

Calcula a distância percorrida durante queda livre usando um método numérico que considera resistência do ar e velocidade terminal.

## Syntax

```powershell
Get-FreeFallHeight [-DurationInSeconds] <double> [[-TerminalVelocityInMs] <double>] [[-As] <string>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DurationInSeconds` | Double | ✅ | — | 0 | `0` | A duração da queda em segundos |
| `-TerminalVelocityInMs` | Double | — | — | 1 | `0` | A velocidade terminal em metros por segundo (padrão: 53 m/s para um ser humano) |
| `-As` | String | — | — | 2 | — | A unidade para a altura de saída |

## Examples

### Example 1

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -TerminalVelocityInMs 53
```

Calcula a altura caída em 10 segundos com velocidade terminal humana padrão.

### Example 2

```powershell
Get-FreeFallHeight 5
```

Calcula a altura caída em 5 segundos usando parâmetro posicional e velocidade terminal padrão.

### Example 3

```powershell
Get-FreeFallHeight -DurationInSeconds 10 -As "feet"
```

Calcula a altura caída em 10 segundos e retorna o resultado em pés.

## Related Links

- [Get-FreeFallHeight on GitHub](https://github.com/genXdev/genXdev)
