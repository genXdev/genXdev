# Show-GenXdevCmdLetInIde

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `editcmdlet, `cmdlet

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Show-GenXdevCmdLetInIde -CmdletName <String> [[-ModuleName] <String[]>] [-ChangedirectoryOnly] [-Code] [-CoPilot] [-EditPrompt] [-FromScripts] [-KeysToSend <String[]>] [-NoLocal] [-OnlyPublished] [-Prompt <String>] [-Search] [-UnitTests] [-VisualStudio] [<CommonParameters>]

Show-GenXdevCmdLetInIde [[-BaseModuleName] <String>] [[-Synopsis] <String>] [[-Description] <String>] [[-CmdletAliases] <String[]>] [-New] [-PromptKey <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | ✅ | — | 0 | — | Padrão de pesquisa para filtrar cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | Nomes de módulos GenXdev para pesquisar 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | O IDE para abrir o arquivo |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Abrir no Visual Studio |
| `-UnitTests` | SwitchParameter | — | — | Named | — | Show the function's unit-tests instead of the function |
| `-KeysToSend` | String[] | — | — | Named | `@()` | As chaves a serem enviadas |
| `-CoPilot` | SwitchParameter | — | — | Named | — | Adicionar à sessão de edição do Co-Pilot |
| `-Search` | SwitchParameter | — | — | Named | — | Também pesquisa global pelo cmdlet |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | Quando especificado, altera apenas o local atual do PowerShell para o diretório do respectivo Cmdlet |
| `-New` | SwitchParameter | — | — | Named | — | Criar um novo cmdlet *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | Uma breve descrição da finalidade do cmdlet *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | Uma descrição detalhada do que o cmdlet faz *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | Integre o novo cmdlet em um módulo GenXdev existente *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | Um ou mais aliases para o cmdlet. Aceita um array de strings. *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | A chave de prompt de IA a ser usada para a seleção de modelo *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | Custom AI prompt text to use for cmdlet generation |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt without creating the cmdlet |

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
