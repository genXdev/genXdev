# Get-MonitorCount

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtém o número total de monitores conectados ao sistema.

## Description

* Usa a classe auxiliar de tela do Windows Presentation Foundation (WPF) para determinar com precisão o número de monitores físicos atualmente conectados ao sistema.
* Isso inclui monitores ativos e detectados, mas desabilitados.

## Syntax

```powershell
Get-MonitorCount [<CommonParameters>]
```

## Examples

### Example 1

```powershell
Get-MonitorCount
```

Retorna o número total de monitores conectados (ex.: 2).

### Example 2

```powershell
$screens = Get-MonitorCount -Verbose
```

Retorna a contagem de monitores com saída detalhada mostrando o processo de detecção.

## Related Links

- [Get-MonitorCount on GitHub](https://github.com/genXdev/genXdev)
