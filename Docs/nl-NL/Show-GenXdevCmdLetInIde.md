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
| `-CmdletName` | String | ✅ | — | 0 | — | Zoekpatroon om cmdlets te filteren 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | GenXdev module te doorzoeken 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | De IDE om het bestand in te openen |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Openen in Visual Studio |
| `-UnitTests` | SwitchParameter | — | — | Named | — | {
  "unitTests": "<test>\n  <case>\n    <input>5</input>\n    <expected>25</expected>\n  </case>\n  <case>\n    <input>0</input>\n    <expected>0</expected>\n  </case>\n  <case>\n    <input>-3</input>\n    <expected>9</expected>\n  </case>\n</test>"
} |
| `-KeysToSend` | String[] | — | — | Named | `@()` | De te verzenden sleutels |
| `-CoPilot` | SwitchParameter | — | — | Named | — | Voeg toe aan Co-Pilot bewerkingssessie |
| `-Search` | SwitchParameter | — | — | Named | — | Ook wereldwijd zoeken naar de cmdlet |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | Wijzigt alleen de huidige PowerShell-locatie naar de betreffende cmdlet-directory |
| `-New` | SwitchParameter | — | — | Named | — | Erstellen Sie ein neues Cmdlet *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | Een korte beschrijving van het doel van de cmdlet *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | Een gedetailleerde beschrijving van wat de cmdlet doet *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | Integreer de nieuwe cmdlet in een bestaande GenXdev-module *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | Een of meerdere aliassen voor de cmdlet. Accepteert een reeks tekenreeksen. *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | De AI-prompt-sleutel die moet worden gebruikt voor sjabloonselectie *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | Custom AI prompt text to use for cmdlet generation |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt without creating the cmdlet |

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
