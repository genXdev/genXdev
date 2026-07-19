# Show-GenXdevCmdLetInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `editcmdlet, `cmdlet

## Synopsis

> Abre el cmdlet especificado de GenXdev en Visual Studio Code.

## Description

Esta función recupera el archivo de script y el número de línea para el cmdlet especificado de GenXdev y lo abre en Visual Studio Code. Puede abrir tanto la implementación de la función principal como sus pruebas unitarias asociadas, según el parámetro de conmutador UnitTests.

## Syntax

```powershell
Show-GenXdevCmdLetInIde -CmdletName <String> [[-ModuleName] <String[]>] [-ChangedirectoryOnly] [-Code] [-CoPilot] [-EditPrompt] [-FromScripts] [-KeysToSend <String[]>] [-NoLocal] [-OnlyPublished] [-Prompt <String>] [-Search] [-UnitTests] [-VisualStudio] [<CommonParameters>]

Show-GenXdevCmdLetInIde [[-BaseModuleName] <String>] [[-Synopsis] <String>] [[-Description] <String>] [[-CmdletAliases] <String[]>] [-New] [-PromptKey <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | — | 0 | — | Patrón de búsqueda para filtrar cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | Nombres de módulos GenXdev a buscar 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | El IDE para abrir el archivo en |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir en Visual Studio |
| `-UnitTests` | SwitchParameter | — | — | Named | — | Show the function's unit-tests instead of the function |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Las claves a enviar |
| `-CoPilot` | SwitchParameter | — | — | Named | — | Add to Co-Pilot edit session |
| `-Search` | SwitchParameter | — | — | Named | — | También búsqueda global del cmdlet |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | Cuando se especifica, solo cambia la ubicación actual de PowerShell al directorio del cmdlet respectivo |
| `-New` | SwitchParameter | — | — | Named | — | Nuevo cmdlet *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | Una breve descripción del propósito del cmdlet *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | Una descripción detallada de lo que hace el cmdlet *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | Integrate the new cmdlet into an existing GenXdev module *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | Uno o más alias para el cmdlet. Acepta una matriz de cadenas. *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | La clave de prompt de IA a utilizar para la selección de plantillas *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | Custom AI prompt text to use for cmdlet generation |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Hello, how can I help you? |

## Examples

### Show-GenXdevCmdLetInIde -CmdletName "Get-GenXDevModuleInfo" Opens the implementation of Get-GenXDevModuleInfo in VSCode.

```powershell
Show-GenXdevCmdLetInIde -CmdletName "Get-GenXDevModuleInfo"
Opens the implementation of Get-GenXDevModuleInfo in VSCode.
```

### editcmdlet Get-GenXDevModuleInfo -UnitTests Opens the unit tests for Get-GenXDevModuleInfo using the alias.

```powershell
editcmdlet Get-GenXDevModuleInfo -UnitTests
Opens the unit tests for Get-GenXDevModuleInfo using the alias.
```

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
