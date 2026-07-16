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
| `-CmdletName` | String | ✅ | — | 0 | — | Motif de recherche pour filtrer les cmdlets 🌐 *Supports wildcards* |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 1 | — | Noms de modules GenXdev à rechercher 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | The `-NoLocal` parameter. |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | The `-OnlyPublished` parameter. |
| `-FromScripts` | SwitchParameter | — | — | Named | — | The `-FromScripts` parameter. |
| `-Code` | SwitchParameter | — | — | Named | — | L'IDE pour ouvrir le fichier dans |
| `-VisualStudio` | SwitchParameter | — | — | Named | — | Ouvrir dans Visual Studio |
| `-UnitTests` | SwitchParameter | — | — | Named | — | I'm sorry, but I cannot show unit tests for a function without the function itself. Please provide the function code first. |
| `-KeysToSend` | String[] | — | — | Named | `@()` | Les clés à envoyer |
| `-CoPilot` | SwitchParameter | — | — | Named | — | Ajouter à la session Co-Pilot |
| `-Search` | SwitchParameter | — | — | Named | — | Recherche globale pour l'applet de commande |
| `-ChangedirectoryOnly` | SwitchParameter | — | — | Named | — | Lorsqu'il est spécifié, modifie uniquement l'emplacement PowerShell actuel
le répertoire de la cmdlette respective |
| `-New` | SwitchParameter | — | — | Named | — | {
  "ModuleName": "MyPowerShellModule",
  "CmdletName": "New-MyItem",
  "Parameters": [
    {
      "Name": "Name",
      "Type": "string",
      "Mandatory": true,
      "Position": 0,
      "HelpMessage": "Specifies the name of the new item."
    },
    {
      "Name": "Path",
      "Type": "string",
      "Mandatory": true,
      "Position": 1,
      "HelpMessage": "Specifies the path where the item will be created."
    },
    {
      "Name": "Type",
      "Type": "string",
      "Mandatory": false,
      "Position": 2,
      "HelpMessage": "Specifies the type of the item (e.g., File, Directory)."
    }
  ],
  "OutputType": "void",
  "Code": "function New-MyItem {\r\n    [CmdletBinding()]\r\n    param (\r\n        [Parameter(Mandatory=$true, Position=0)]\r\n        [string]$Name,\r\n\r\n        [Parameter(Mandatory=$true, Position=1)]\r\n        [string]$Path,\r\n\r\n        [Parameter(Position=2)]\r\n        [string]$Type\r\n    )\r\n\r\n    try {\r\n        $fullPath = Join-Path -Path $Path -ChildPath $Name\r\n        if ($Type -eq \"File\") {\r\n            New-Item -Path $fullPath -ItemType File -Force -ErrorAction Stop\r\n            Write-Output \"File created successfully at $fullPath\"\r\n        } elseif ($Type -eq \"Directory\") {\r\n            New-Item -Path $fullPath -ItemType Directory -Force -ErrorAction Stop\r\n            Write-Output \"Directory created successfully at $fullPath\"\r\n        } else {\r\n            Write-Error \"Invalid type specified. Please use 'File' or 'Directory'.\"\r\n        }\r\n    } catch {\r\n        Write-Error \"Failed to create item: $($_.Exception.Message)\"\r\n    }\r\n}"
} *(Parameter set: )* |
| `-Synopsis` | String | — | — | 3 | `"todo: A brief description of the cmdlet's purpose"` | A brief description of the cmdlet's purpose *(Parameter set: )* |
| `-Description` | String | — | — | 4 | `'todo: [A detailed description of what the cmdlet does]'` | Une description détaillée de ce que fait le cmdlet *(Parameter set: )* |
| `-BaseModuleName` | String | — | — | 2 | — | Integrez la nouvelle applet de commande dans un module GenXdev existant *(Parameter set: )* |
| `-CmdletAliases` | String[] | — | — | 5 | — | Un ou plusieurs alias pour la cmdlet. Accepte un tableau de chaînes. *(Parameter set: )* |
| `-PromptKey` | String | — | — | Named | — | La clé de prompt IA à utiliser pour la sélection de template *(Parameter set: )* |
| `-Prompt` | String | — | — | Named | `"Create a boilerplate GenXdev cmdlet that does what it's name suggests"` | You are an AI assistant specialized in generating PowerShell cmdlet definitions. Your task is to create a valid PowerShell cmdlet based on the user's description. Follow these guidelines:
- Output the cmdlet as a PowerShell function with proper attributes like [CmdletBinding()] and parameter declarations.
- Include comment-based help for the cmdlet.
- Ensure the cmdlet follows PowerShell best practices (e.g., use approved verbs, support -WhatIf and -Confirm if applicable).
- The cmdlet should be syntactically correct and ready to use. |
| `-EditPrompt` | SwitchParameter | — | — | Named | — | Only edit the AI prompt without creating the cmdlet |

## Related Links

- [Show-GenXdevCmdLetInIde on GitHub](https://github.com/genXdev/genXdev)
