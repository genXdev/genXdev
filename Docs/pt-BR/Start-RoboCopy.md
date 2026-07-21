# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc`, `rc`

## Synopsis

> Fornece um wrapper do PowerShell para o utilitário Robust Copy (RoboCopy) da Microsoft.

## Description

Um wrapper abrangente para o utilitário de linha de comando RoboCopy que fornece
capacidades robustas de cópia de arquivos e diretórios. Esta função expõe o
conjunto extenso de recursos do RoboCopy por meio de parâmetros amigáveis ao PowerShell, mantendo
a maior parte de sua funcionalidade poderosa.

Principais recursos:
- Sincronização de diretórios com opções de espelhamento
- Suporte para nomes de caminho extra longos (>256 caracteres)
- Preservação de configurações de segurança
- Manipulação avançada de atributos de arquivo
- Gerenciamento de links simbólicos e pontos de junção
- Modo de monitoramento para sincronização contínua
- Otimização de desempenho para arquivos grandes
- Suporte a compressão de rede
- Modo de recuperação para dispositivos com falha

## Syntax

```powershell
Start-RoboCopy -Source <String> [[-DestinationDirectory] <String>] [[-Files] <String[]>] [[-Override] <String>] [-AttributeExcludeFilter <String>] [-AttributeIncludeFilter <String>] [-CompressibleContent] [-CopyOnlyDirectoryTreeStructureAndEmptyFiles] [-CopySymbolicLinksAsLinks] [-ExactTimestamps] [-FileExcludeFilter <String[]>] [-Force] [-IncludeSecurity] [-LargeFiles] [-LogAllFileNames] [-LogDirectoryNames] [-LogfileOverwrite] [-LogFilePath <String>] [-MaxFileAge <Int32>] [-MaxFileSize <Int32>] [-MaxLastAccessAge <Int32>] [-MinFileAge <Int32>] [-MinFileSize <Int32>] [-MinLastAccessAge <Int32>] [-Mirror] [-MonitorMode] [-MonitorModeRunHoursFrom <Int32>] [-MonitorModeRunHoursUntil <Int32>] [-MonitorModeThresholdMinutes <Int32>] [-MonitorModeThresholdNrOfChanges <Int32>] [-Move] [-MultiThreaded] [-RecoveryMode] [-RemoveAttributesAfterCopy <String>] [-ResetArchiveAttributeAfterSelection] [-SetAttributesAfterCopy <String>] [-SkipAllSymbolicLinks] [-SkipFilesWithoutArchiveAttribute] [-SkipSymbolicFileLinks] [-Unicode] [<CommonParameters>]

Start-RoboCopy [-SkipDirectories] [<CommonParameters>]

Start-RoboCopy [-CopyJunctionsAsJunctons] [-CopyOnlyDirectoryTreeStructure] [-DirectoryExcludeFilter <String[]>] [-MaxSubDirTreeLevelDepth <Int32>] [-SkipEmptyDirectories] [-SkipJunctions] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Source` | String | ✅ | — | 0 | — | O diretório, caminho do arquivo ou diretório+máscara de pesquisa |
| `-DestinationDirectory` | String | — | — | 1 | `".$([System.IO.Path]::DirectorySeparatorChar)"` | O diretório de destino para colocar os arquivos e diretórios copiados.
            Se este diretório ainda não existir, todos os diretórios ausentes serão criados.
            Valor padrão = ".\" |
| `-Files` | String[] | — | — | 2 | `@()` | Máscara de pesquisa opcional para selecionar os arquivos que precisam ser copiados.
            Valor padrão = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Sincroniza o conteúdo de diretórios especificados, também excluirá todos os arquivos e diretórios no destino que não existem na origem |
| `-Move` | SwitchParameter | — | — | Named | — | Irá mover em vez de copiar todos os arquivos da origem para o destino |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Também copiará a propriedade, os descritores de segurança e as informações de auditoria de arquivos e diretórios |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Copia apenas arquivos da origem e ignora subdiretórios (sem recursão) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Não copia diretórios se eles estariam vazios *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Criar apenas a árvore de diretórios *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | Criar árvore de diretórios e arquivos de comprimento zero apenas |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Não copie links simbólicos, junções ou o conteúdo para o qual eles apontam |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Não copie links simbólicos de arquivos, mas siga junções de diretório |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Em vez de copiar o conteúdo para onde os links simbólicos apontam, copie os próprios links |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Não copie junções de diretório (link simbólico para uma pasta) ou o conteúdo para o qual apontam *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Em vez de copiar o conteúdo para onde as junções apontam, copie as próprias junções *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Copiará todos os arquivos mesmo se forem mais antigos que os do destino. |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Copia apenas arquivos que possuem o atributo de arquivamento definido |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Além de copiar apenas os arquivos que possuem o atributo de arquivamento definido, este comando redefine esse atributo na origem |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Exclua quaisquer arquivos que correspondam a algum destes nomes/caminhos/curingas 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Exclua todos os diretórios que correspondam a qualquer um desses nomes/caminhos/curingas *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Copie apenas arquivos que tenham todos esses atributos definidos [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Excluir arquivos que tenham qualquer um desses atributos definidos [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Define os atributos especificados para os arquivos copiados [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Removerá os atributos fornecidos dos arquivos copiados [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Copiar apenas os n níveis superiores da árvore do diretório de origem *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Ignorar arquivos que não tenham pelo menos n bytes de tamanho |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Pular arquivos maiores que n bytes |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Ignorar arquivos que não tenham pelo menos: n dias de idade OU criados antes da data n (se n < 1900 então n = n dias, senão n = data YYYYMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Pule arquivos mais antigos que: n dias OU criados após a data n (se n < 1900 então n = n dias, senão n = data AAAAMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Pule arquivos que foram acessados nos últimos: n dias OU antes da data n (se n < 1900, então n = n dias, senão n = data YYYYMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Pule arquivos que não foram acessados em: n dias OU após n data (se n < 1900, então n = n dias, senão n = data AAAAMMDD) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Fará uma breve pausa e tentará novamente quando ocorrerem erros de E/S durante a cópia |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Permanecerá ativo após a cópia e copiará alterações adicionais após um limite padrão de 10 minutos |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Executar novamente em N minutos, se alterado |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Executar novamente quando mais de n alterações forem vistas |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Horas de execução - horários em que novas cópias podem ser iniciadas, horário de início, intervalo 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Horas de execução - momentos em que novas cópias podem ser iniciadas, horário final, intervalo 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Se especificado, o registro também será feito no arquivo especificado |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Não anexar ao arquivo de log especificado, mas substituir em vez disso |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Incluir todos os nomes de diretórios verificados na saída |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Inclua todos os nomes de arquivos verificados na saída, mesmo os ignorados |
| `-Unicode` | SwitchParameter | — | — | Named | — | Saída de status como UNICODE |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Habilita a otimização para copiar arquivos grandes |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Otimizar o desempenho fazendo cópia multithread |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Se aplicável, use compressão ao copiar arquivos entre servidores para economizar largura de banda e tempo |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Quando definido, usará correspondência de timestamp em milissegundos em vez da tolerância padrão de 2 segundos |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Substitui, Remove ou Adiciona qualquer parâmetro especificado do robocopy.

Uso:

Adicionar ou substituir parâmetro:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Remover parâmetro:

    -Override -/Switch

Várias substituições:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Examples

### ########################################################################Mirror a directory with security settings Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `     -Mirror -IncludeSecurity

```powershell
########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity
```

### ########################################################################Monitor and sync changes every 10 minutes Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `     -MonitorMode -MonitorModeThresholdMinutes 10

```powershell
########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10
```

## Parameter Details

### `-Source <String>`

> O diretório, caminho do arquivo ou diretório+máscara de pesquisa

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DestinationDirectory <String>`

> O diretório de destino para colocar os arquivos e diretórios copiados.
            Se este diretório ainda não existir, todos os diretórios ausentes serão criados.
            Valor padrão = ".\"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `".$([System.IO.Path]::DirectorySeparatorChar)"` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Files <String[]>`

> Máscara de pesquisa opcional para selecionar os arquivos que precisam ser copiados.
            Valor padrão = '*'

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-Mirror`

> Sincroniza o conteúdo de diretórios especificados, também excluirá todos os arquivos e diretórios no destino que não existem na origem

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Move`

> Irá mover em vez de copiar todos os arquivos da origem para o destino

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeSecurity`

> Também copiará a propriedade, os descritores de segurança e as informações de auditoria de arquivos e diretórios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipDirectories`

> Copia apenas arquivos da origem e ignora subdiretórios (sem recursão)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Default |

<hr/>
### `-SkipEmptyDirectories`

> Não copia diretórios se eles estariam vazios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructure`

> Criar apenas a árvore de diretórios

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyOnlyDirectoryTreeStructureAndEmptyFiles`

> Criar árvore de diretórios e arquivos de comprimento zero apenas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipAllSymbolicLinks`

> Não copie links simbólicos, junções ou o conteúdo para o qual eles apontam

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSymbolicFileLinks`

> Não copie links simbólicos de arquivos, mas siga junções de diretório

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CopySymbolicLinksAsLinks`

> Em vez de copiar o conteúdo para onde os links simbólicos apontam, copie os próprios links

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipJunctions`

> Não copie junções de diretório (link simbólico para uma pasta) ou o conteúdo para o qual apontam

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-CopyJunctionsAsJunctons`

> Em vez de copiar o conteúdo para onde as junções apontam, copie as próprias junções

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-Force`

> Copiará todos os arquivos mesmo se forem mais antigos que os do destino.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipFilesWithoutArchiveAttribute`

> Copia apenas arquivos que possuem o atributo de arquivamento definido

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResetArchiveAttributeAfterSelection`

> Além de copiar apenas os arquivos que possuem o atributo de arquivamento definido, este comando redefine esse atributo na origem

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FileExcludeFilter <String[]>`

> Exclua quaisquer arquivos que correspondam a algum destes nomes/caminhos/curingas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-DirectoryExcludeFilter <String[]>`

> Exclua todos os diretórios que correspondam a qualquer um desses nomes/caminhos/curingas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `@()` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |
| **Parameter set** | SkipDirectories |

<hr/>
### `-AttributeIncludeFilter <String>`

> Copie apenas arquivos que tenham todos esses atributos definidos [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AttributeExcludeFilter <String>`

> Excluir arquivos que tenham qualquer um desses atributos definidos [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SetAttributesAfterCopy <String>`

> Define os atributos especificados para os arquivos copiados [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RemoveAttributesAfterCopy <String>`

> Removerá os atributos fornecidos dos arquivos copiados [RASHCNETO]

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSubDirTreeLevelDepth <Int32>`

> Copiar apenas os n níveis superiores da árvore do diretório de origem

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | SkipDirectories |

<hr/>
### `-MinFileSize <Int32>`

> Ignorar arquivos que não tenham pelo menos n bytes de tamanho

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileSize <Int32>`

> Pular arquivos maiores que n bytes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinFileAge <Int32>`

> Ignorar arquivos que não tenham pelo menos: n dias de idade OU criados antes da data n (se n < 1900 então n = n dias, senão n = data YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxFileAge <Int32>`

> Pule arquivos mais antigos que: n dias OU criados após a data n (se n < 1900 então n = n dias, senão n = data AAAAMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MinLastAccessAge <Int32>`

> Pule arquivos que foram acessados nos últimos: n dias OU antes da data n (se n < 1900, então n = n dias, senão n = data YYYYMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastAccessAge <Int32>`

> Pule arquivos que não foram acessados em: n dias OU após n data (se n < 1900, então n = n dias, senão n = data AAAAMMDD)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RecoveryMode`

> Fará uma breve pausa e tentará novamente quando ocorrerem erros de E/S durante a cópia

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorMode`

> Permanecerá ativo após a cópia e copiará alterações adicionais após um limite padrão de 10 minutos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdMinutes <Int32>`

> Executar novamente em N minutos, se alterado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeThresholdNrOfChanges <Int32>`

> Executar novamente quando mais de n alterações forem vistas

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursFrom <Int32>`

> Horas de execução - horários em que novas cópias podem ser iniciadas, horário de início, intervalo 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MonitorModeRunHoursUntil <Int32>`

> Horas de execução - momentos em que novas cópias podem ser iniciadas, horário final, intervalo 0000:2359

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogFilePath <String>`

> Se especificado, o registro também será feito no arquivo especificado

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogfileOverwrite`

> Não anexar ao arquivo de log especificado, mas substituir em vez disso

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogDirectoryNames`

> Incluir todos os nomes de diretórios verificados na saída

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogAllFileNames`

> Inclua todos os nomes de arquivos verificados na saída, mesmo os ignorados

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Unicode`

> Saída de status como UNICODE

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LargeFiles`

> Habilita a otimização para copiar arquivos grandes

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MultiThreaded`

> Otimizar o desempenho fazendo cópia multithread

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CompressibleContent`

> Se aplicável, use compressão ao copiar arquivos entre servidores para economizar largura de banda e tempo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExactTimestamps`

> Quando definido, usará correspondência de timestamp em milissegundos em vez da tolerância padrão de 2 segundos

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Override <String>`

> Substitui, Remove ou Adiciona qualquer parâmetro especificado do robocopy.

Uso:

Adicionar ou substituir parâmetro:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Remover parâmetro:

    -Override -/Switch

Várias substituições:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 3 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

> This parameter accepts all remaining arguments.

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Set-LocationParent5.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Write-FileAtomic.md)
- [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Write-JsonFileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/Write-TextFileAtomic.md)
