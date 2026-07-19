# EnsurePSTools

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Обеспечивает установку и доступность инструментов Sysinternals (PSTools).

## Description

Проверяет, установлены ли инструменты Sysinternals, такие как handle.exe, и правильно ли они настроены в системе. Если не найдены, устанавливает пакет Sysinternals Suite с помощью WinGet и автоматически обрабатывает весь процесс установки.

## Syntax

```powershell
EnsurePSTools [[-PSExeName] <String>] [-Force] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Принудительная переустановка инструментов Sysinternals |
| `-PSExeName` | String | — | — | 0 | `'handle.exe'` | Имя исполняемого файла для проверки установки |

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
