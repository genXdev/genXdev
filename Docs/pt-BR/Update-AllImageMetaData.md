# Update-AllImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `updateallimages

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Update-AllImageMetaData -ImageDirectories <String[]> [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoRecurse] [-PassThru] [-PreferencesDatabasePath <String>] [-RedoAll] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-SkipSession] [-TimeoutSeconds <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | ✅ | — | 0 | — | Array de caminhos de diretório para processar atualizações de imagem |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | Named | `5000` | O número da porta para o serviço DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | Named | — | Nome personalizado da imagem Docker a ser usado |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Limite mínimo de confiança (0,0-1,0) para detecção de objetos |
| `-Language` | String | — | — | Named | — | O idioma para descrições e palavras-chave geradas |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Nome ou caminho parcial do modelo a ser inicializado 🌐 *Supports wildcards* |
| `-ApiEndpoint` | String | — | — | Named | `$null` | URL do endpoint da API, padrão é http://localhost:1234/v1/chat/completions |
| `-ApiKey` | String | — | — | Named | `$null` | A chave da API a ser usada para a solicitação |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Tempo limite em segundos para a requisição, padrão de 24 horas |
| `-FacesDirectory` | String | — | — | Named | — | O diretório contendo imagens de rostos organizadas por pastas de pessoas. Se não especificado, usa a preferência de diretório de rostos configurada. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Tentará novamente as atualizações de palavras-chave de imagem que falharam anteriormente |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Não recursar em subdiretórios ao processar imagens |
| `-RedoAll` | SwitchParameter | — | — | Named | — | Refazer todas as imagens independentemente do processamento anterior |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use a versão acelerada por GPU (requer placa de vídeo NVIDIA) |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru para retornar objetos estruturados em vez de enviar para o console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detecta alterações no diretório de faces e re-registra as faces se necessário |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA, como Idioma, coleções de Imagens, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |

## Related Links

- [Update-AllImageMetaData on GitHub](https://github.com/genXdev/genXdev)
