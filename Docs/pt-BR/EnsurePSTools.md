# EnsurePSTools

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Garante que as ferramentas Sysinternals (PSTools) estejam instaladas e disponíveis.

## Description

Verifica se ferramentas do Sysinternals como handle.exe estão instaladas e configuradas corretamente no sistema. Se não forem encontradas, instala o Sysinternals Suite usando o WinGet e gerencia todo o processo de instalação automaticamente.

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Forçar reinstalação das ferramentas Sysinternals |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | O nome do executável para verificar a instalação |

## Examples

### EnsurePSTools Ensures Sysinternals tools are installed and properly configured.

```powershell
EnsurePSTools
Ensures Sysinternals tools are installed and properly configured.
```

### EnsurePSTools -Force -PSExeName 'procexp.exe' Forces reinstallation of Sysinternals tools and uses procexp.exe to verify installation. ##############################################################################

```powershell
EnsurePSTools -Force -PSExeName 'procexp.exe'
Forces reinstallation of Sysinternals tools and uses procexp.exe to verify
installation.
##############################################################################
```

## Related Links

- [EnsurePSTools on GitHub](https://github.com/genXdev/genXdev)
