# Assert-GenXdevTest

> **Module:** GenXdev.Coding.PowerShell.Modules | **Type:** Function | **Aliases:** `rungenxdevtests

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Assert-GenXdevTest [[-CmdletName] <String>] [[-TestFailedAction] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-AllowLongRunningTests] [-ExactMatch] [-FromScripts] [-NoLocal] [-OnlyPublished] [-OnlyReturnModuleNames] [-SkipPesterTests] [-SkipPSAnalyzerTests] [-StackTraceVerbosity <String>] [-Verbosity <String>] [<CommonParameters>]

Assert-GenXdevTest [-IncludeScripts] [-SkipModuleImports] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Padrão de pesquisa para filtrar cmdlets 🌐 *Supports wildcards* |
| `-TestFailedAction` | String | — | — | 1 | `'Continue'` | Ação a ser tomada quando um teste falha. Opções: Perguntar, Continuar, Parar, ResolverComIA, Write-Error, Throw |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 2 | — | Expressão regular para corresponder a definições de cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 3 | — | Nomes de módulos GenXdev para pesquisar 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Pular pesquisa em caminhos de módulo local |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Pesquisar apenas em caminhos de módulos publicados |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Pesquisar em arquivos de script em vez de módulos |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Inclui o diretório scripts além dos módulos regulares *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | ansible.builtin.copy, ansible.builtin.file, ansible.builtin.service, ansible.builtin.template, ansible.posix.selinux, ansible.utils.update_fact, community.general.cronvar, containers.podman.podman_container, containers.podman.podman_image, containers.podman.podman_network, containers.podman.podman_secret |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Requer correspondência exata para nomes de cmdlets |
| `-Verbosity` | String | — | — | Named | `'Normal'` | Nível de detalhe de saída |
| `-StackTraceVerbosity` | String | — | — | Named | `'FirstLine'` | Nível de detalhe da pilha de chamadas |
| `-AllowLongRunningTests` | SwitchParameter | — | — | Named | — | Também seleciona testes unitários que têm durações longas |
| `-SkipModuleImports` | SwitchParameter | — | — | Named | — | Pula a importação de módulos GenXdev antes de testar *(Parameter set: )* |
| `-SkipPSAnalyzerTests` | SwitchParameter | — | — | Named | — | Pula a execução dos testes do PSAnalyzer |
| `-SkipPesterTests` | SwitchParameter | — | — | Named | — | Ignora a execução de testes Pester |

## Related Links

- [Assert-GenXdevTest on GitHub](https://github.com/genXdev/genXdev)
