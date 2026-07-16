# Show-GenXdevCmdlet

> **Module:** GenXdev.Helpers | **Type:** Function | **Aliases:** `cmds

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Show-GenXdevCmdlet [[-CmdletName] <String>] [[-DefinitionMatches] <String>] [[-ModuleName] <String[]>] [-ExactMatch] [-FromScripts] [-NoLocal] [-Online] [-OnlyAliases] [-OnlyPublished] [-OnlyReturnModuleNames] [-PassThru] [-ShowTable] [<CommonParameters>]

Show-GenXdevCmdlet [-IncludeScripts] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CmdletName` | String | — | ✅ (ByPropertyName) | 0 | — | Padrão de pesquisa para filtrar cmdlets 🌐 *Supports wildcards* |
| `-DefinitionMatches` | String | — | ✅ (ByValue, ByPropertyName) | 1 | — | Expressão regular para corresponder a definições de cmdlet |
| `-ModuleName` | String[] | — | ✅ (ByValue, ByPropertyName) | 2 | — | Nomes de módulos GenXdev para pesquisar 🌐 *Supports wildcards* |
| `-NoLocal` | SwitchParameter | — | — | Named | — | Pular pesquisa em caminhos de módulo local |
| `-OnlyPublished` | SwitchParameter | — | — | Named | — | Pesquisar apenas em caminhos de módulos publicados |
| `-FromScripts` | SwitchParameter | — | — | Named | — | Pesquisar em arquivos de script em vez de módulos |
| `-IncludeScripts` | SwitchParameter | — | — | Named | — | Inclui o diretório scripts além dos módulos regulares *(Parameter set: )* |
| `-OnlyReturnModuleNames` | SwitchParameter | — | — | Named | — | ansible.builtin.copy, ansible.builtin.file, ansible.builtin.service, ansible.builtin.template, ansible.posix.selinux, ansible.utils.update_fact, community.general.cronvar, containers.podman.podman_container, containers.podman.podman_image, containers.podman.podman_network, containers.podman.podman_secret |
| `-ExactMatch` | SwitchParameter | — | — | Named | — | Realizar correspondência exata em vez de correspondência curinga |
| `-Online` | SwitchParameter | — | — | Named | — | Abra a documentação do GitHub em vez da saída do console |
| `-OnlyAliases` | SwitchParameter | — | — | Named | — | Quando especificado, exibe apenas aliases de cmdlets |
| `-ShowTable` | SwitchParameter | — | — | Named | — | Exibir resultados em formato de tabela |
| `-PassThru` | SwitchParameter | — | — | Named | — | The `-PassThru` parameter. |

## Outputs

- `Collections.ArrayList`
- `Void`

## Related Links

- [Show-GenXdevCmdlet on GitHub](https://github.com/genXdev/genXdev)
