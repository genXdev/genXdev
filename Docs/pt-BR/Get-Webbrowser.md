# Get-Webbrowser

> **Module:** GenXdev.Webbrowser | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Retorna uma coleção de navegadores modernos instalados.

## Description

* Descobre e retorna detalhes sobre navegadores web modernos instalados no sistema.
* Recupera informações incluindo nome, descrição, caminho do ícone, caminho do executável e status de navegador padrão consultando o registro do Windows.
* Retorna apenas navegadores que possuem as capacidades necessárias registradas no Windows.

## Syntax

```powershell
Get-Webbrowser [<CommonParameters>]

Get-Webbrowser [-Edge] [-Chrome] [-Chromium] [-Firefox] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Edge` | SwitchParameter | — | — | Named | `False` | Seleciona instâncias do navegador Microsoft Edge *(Parameter set: )* |
| `-Chrome` | SwitchParameter | — | — | Named | `False` | Seleciona instâncias do navegador Google Chrome *(Parameter set: )* |
| `-Chromium` | SwitchParameter | — | — | Named | `False` | Seleciona navegador padrão baseado em Chromium *(Parameter set: )* |
| `-Firefox` | SwitchParameter | — | — | Named | `False` | Seleciona instâncias do navegador Firefox *(Parameter set: )* |

## Examples

### Example 1

```powershell
Get-Webbrowser | Select-Object Name, Description | Format-Table
```

Retorna uma coleção de todos os navegadores modernos instalados.

### Example 2

```powershell
Get-Webbrowser | Where-Object { $_.IsDefaultBrowser }
```

Filtros para mostrar apenas o navegador padrão do sistema.

## Related Links

- [Get-Webbrowser on GitHub](https://github.com/genXdev/genXdev)
