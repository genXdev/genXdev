# Import-GenXdevModules

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `reloadgenxdev

## Synopsis

> Importa todos os módulos PowerShell da GenXdev para o escopo global.

## Description

Escaneia o diretório pai em busca de módulos GenXdev e importa cada um deles para o escopo global. Usa o gerenciamento de pilha de localização para preservar o diretório de trabalho e fornece feedback visual para importações bem-sucedidas e falhas. Rastreia as mudanças na contagem de funções durante o processo de importação.

## Syntax

```powershell
Import-GenXdevModules [-DebugFailedModuleDefinitions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DebugFailedModuleDefinitions` | SwitchParameter | — | — | Named | — | Ativar saída de depuração para definições de módulo com falha |

## Examples

### Import-GenXdevModules -DebugFailedModuleDefinitions Imports modules with debug output for failures

```powershell
Import-GenXdevModules -DebugFailedModuleDefinitions
Imports modules with debug output for failures
```

### reloadgenxdev Imports all modules using the alias

```powershell
reloadgenxdev
Imports all modules using the alias
```

## Related Links

- [Import-GenXdevModules on GitHub](https://github.com/genXdev/genXdev)
