# Start-RoboCopy

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `xc, `rc

## Synopsis

> *(No synopsis provided)*

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
            Valor padrão = ".\"" |
| `-Files` | String[] | — | — | 2 | `@()` | Máscara de busca opcional para selecionar os arquivos que precisam ser copiados.
            Valor padrão = '*' 🌐 *Supports wildcards* |
| `-Mirror` | SwitchParameter | — | — | Named | — | Sincroniza o conteúdo dos diretórios especificados; também excluirá quaisquer arquivos e diretórios no destino que não existam na origem |
| `-Move` | SwitchParameter | — | — | Named | — | Irão mover em vez de copiar todos os arquivos de origem para destino |
| `-IncludeSecurity` | SwitchParameter | — | — | Named | — | Também copiará informações de propriedade, descritores de segurança e auditoria de arquivos e diretórios |
| `-SkipDirectories` | SwitchParameter | — | — | Named | — | Copia apenas arquivos da origem e ignora subdiretórios (sem recursão) *(Parameter set: )* |
| `-SkipEmptyDirectories` | SwitchParameter | — | — | Named | — | Não copia diretórios se eles estiverem vazios *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructure` | SwitchParameter | — | — | Named | — | Create directory tree only *(Parameter set: )* |
| `-CopyOnlyDirectoryTreeStructureAndEmptyFiles` | SwitchParameter | — | — | Named | — | mkdir -p project/src project/docs project/tests
touch project/src/main.py project/src/utils.py project/docs/README.md project/tests/test_main.py |
| `-SkipAllSymbolicLinks` | SwitchParameter | — | — | Named | — | Não copie links simbólicos, junções ou o conteúdo para o qual eles apontam |
| `-SkipSymbolicFileLinks` | SwitchParameter | — | — | Named | — | Não copie links simbólicos de arquivos, mas siga junções de diretórios |
| `-CopySymbolicLinksAsLinks` | SwitchParameter | — | — | Named | — | Em vez de copiar o conteúdo para onde os links simbólicos apontam, copie os próprios links |
| `-SkipJunctions` | SwitchParameter | — | — | Named | — | Não copie junções de diretório (link simbólico para uma pasta) nem o conteúdo para o qual elas apontam *(Parameter set: )* |
| `-CopyJunctionsAsJunctons` | SwitchParameter | — | — | Named | — | Ao invés de copiar o conteúdo para onde as junções apontam, copie as próprias junções *(Parameter set: )* |
| `-Force` | SwitchParameter | — | — | Named | — | Irá copiar todos os arquivos mesmo que sejam mais antigos que os do destino |
| `-SkipFilesWithoutArchiveAttribute` | SwitchParameter | — | — | Named | — | Copia apenas os arquivos que possuem o atributo de arquivamento definido |
| `-ResetArchiveAttributeAfterSelection` | SwitchParameter | — | — | Named | — | Além de copiar apenas arquivos que têm o atributo de arquivamento definido, redefinirá esse atributo na origem. |
| `-FileExcludeFilter` | String[] | — | — | Named | `@()` | Exclua quaisquer arquivos que correspondam a algum destes nomes/caminhos/ curingas 🌐 *Supports wildcards* |
| `-DirectoryExcludeFilter` | String[] | — | — | Named | `@()` | Exclua quaisquer diretórios que correspondam a qualquer um destes nomes/caminhos/curingas *(Parameter set: )* 🌐 *Supports wildcards* |
| `-AttributeIncludeFilter` | String | — | — | Named | — | Copie apenas arquivos que tenham todos estes atributos definidos [RASHCNETO] |
| `-AttributeExcludeFilter` | String | — | — | Named | — | Excluir arquivos que possuem algum desses atributos definidos [RASHCNETO] |
| `-SetAttributesAfterCopy` | String | — | — | Named | — | Definirá os atributos fornecidos nos arquivos copiados [RASHCNETO] |
| `-RemoveAttributesAfterCopy` | String | — | — | Named | — | Removerá os atributos fornecidos dos arquivos copiados [RASHCNETO] |
| `-MaxSubDirTreeLevelDepth` | Int32 | — | — | Named | `-1` | Only copy the top n levels of the source directory tree *(Parameter set: )* |
| `-MinFileSize` | Int32 | — | — | Named | `-1` | Pule arquivos que não tenham pelo menos n bytes de tamanho |
| `-MaxFileSize` | Int32 | — | — | Named | `-1` | Ignore arquivos que são maiores que n bytes |
| `-MinFileAge` | Int32 | — | — | Named | `-1` | Ignore arquivos que não tenham pelo menos: n dias de idade OU criados antes da data n (se n < 1900 então n = n dias, senão n = data YYYYMMDD) |
| `-MaxFileAge` | Int32 | — | — | Named | `-1` | Pule arquivos mais antigos que: n dias OU criados após a data n (se n < 1900 então n = n dias, senão n = data YYYYMMDD) |
| `-MinLastAccessAge` | Int32 | — | — | Named | `-1` | Pular arquivos que foram acessados nos últimos: n dias OU antes de n data (se n < 1900 então n = n dias, senão n = data YYYYMMDD) |
| `-MaxLastAccessAge` | Int32 | — | — | Named | `-1` | Ignorar arquivos que não foram acessados há: n dias OU após n data (se n < 1900, então n = n dias, senão n = data AAAAMMDD) |
| `-RecoveryMode` | SwitchParameter | — | — | Named | — | Fará uma pausa e tentará novamente quando ocorrerem erros de E/S durante a cópia |
| `-MonitorMode` | SwitchParameter | — | — | Named | — | Permanecerá ativo após a cópia e copiará alterações adicionais após um limite padrão de 10 minutos |
| `-MonitorModeThresholdMinutes` | Int32 | — | — | Named | `-1` | Executar novamente em N minutos, se houver alteração |
| `-MonitorModeThresholdNrOfChanges` | Int32 | — | — | Named | `-1` | Execute novamente quando mais de n alterações forem vistas |
| `-MonitorModeRunHoursFrom` | Int32 | — | — | Named | `-1` | Horas de execução - horários em que novas cópias podem ser iniciadas, horário de início, intervalo 0000:2359 |
| `-MonitorModeRunHoursUntil` | Int32 | — | — | Named | `-1` | Horas de execução - horários em que novas cópias podem ser iniciadas, horário de término, faixa 0000:2359 |
| `-LogFilePath` | String | — | — | Named | — | Se especificado, o registro também será feito no arquivo especificado |
| `-LogfileOverwrite` | SwitchParameter | — | — | Named | — | Não anexe ao arquivo de log especificado, mas sobrescreva-o. |
| `-LogDirectoryNames` | SwitchParameter | — | — | Named | — | Include all scanned directory names in output |
| `-LogAllFileNames` | SwitchParameter | — | — | Named | — | Incluir todos os nomes de arquivos escaneados na saída, mesmo os ignorados. |
| `-Unicode` | SwitchParameter | — | — | Named | — | Status |
| `-LargeFiles` | SwitchParameter | — | — | Named | — | Permite otimização para cópia de arquivos grandes |
| `-MultiThreaded` | SwitchParameter | — | — | Named | — | Otimize o desempenho fazendo cópia multithread |
| `-CompressibleContent` | SwitchParameter | — | — | Named | — | Se aplicável, use compressão ao copiar arquivos entre servidores para economizar largura de banda e tempo |
| `-ExactTimestamps` | SwitchParameter | — | — | Named | — | Quando definido, usará correspondência de timestamp em milissegundos em vez da tolerância padrão de 2 segundos |
| `-Override` | String | — | — 🌐 Remaining | 3 | — | Substitui, Remove ou Adiciona qualquer parâmetro robocopy especificado.

Uso:

Adicionar ou substituir parâmetro:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Remover parâmetro:

    -Override -/Switch

Várias substituições:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch" |

## Related Links

- [Start-RoboCopy on GitHub](https://github.com/genXdev/genXdev)
