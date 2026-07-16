# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | O diretório contendo imagens de rostos organizadas por pastas de pessoas. Se não especificado, usa a preferência de diretório de rostos configurada. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Número máximo de tentativas de repetição para registros com falha |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | O número da porta para o serviço DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | 7 | — | Nome personalizado da imagem Docker a ser usado |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker Desktop (usado quando já chamado por função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Forçar o re-registro de todos os rostos |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Renomear arquivos de imagem com falha que não puderam ser processados por não terem rostos encontrados |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use a versão acelerada por GPU (requer placa de vídeo NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do Docker Desktop durante a inicialização |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Se especificado, use apenas a sessão (não persista alterações no banco de dados de preferências). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Se especificado, limpe as preferências atuais da sessão antes de usar. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho para o banco de dados de preferências a ser usado para o caminho raiz de rostos conhecidos. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Se especificado, ignore a lógica de sessão ao recuperar o caminho raiz de rostos conhecidos. |

## Related Links

- [Register-AllFaces on GitHub](https://github.com/genXdev/genXdev)
