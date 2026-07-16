# Invoke-ImageScenesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagescenedetection

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-ImageScenesUpdate [[-ImageDirectories] <String[]>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Os caminhos dos diretórios contendo imagens para processar |
| `-Recurse` | SwitchParameter | — | — | Named | — | Processa imagens no diretório especificado e em todos os subdiretórios |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Processe apenas imagens que ainda não possuem arquivos de metadados faciais |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Tentará novamente as atualizações de palavras-chave de imagem que falharam anteriormente |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | Named | `5000` | O número da porta para o serviço DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | Named | — | Nome personalizado da imagem Docker a ser usado |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Limite mínimo de confiança (0,0-1,0) para detecção de objetos |
| `-Language` | String | — | — | Named | — | O idioma para descrições e palavras-chave geradas |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Nome ou caminho parcial do modelo a ser inicializado 🌐 *Supports wildcards* |
| `-ApiKey` | String | — | — | Named | `$null` | A chave da API a ser usada para a solicitação |
| `-TimeoutSecond` | Int32 | — | — | Named | — | Tempo limite em segundos para a requisição, padrão de 24 horas |
| `-FacesDirectory` | String | — | — | Named | — | O diretório contendo imagens de rostos organizadas por pastas de pessoas. Se não especificado, usa a preferência de diretório de rostos configurada. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use a versão acelerada por GPU (requer placa de vídeo NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar janela do Docker durante a inicialização |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru para retornar objetos estruturados em vez de enviar para o console |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Detecta alterações no diretório de faces e re-registra as faces se necessário |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA, como Idioma, coleções de Imagens, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |

## Related Links

- [Invoke-ImageScenesUpdate on GitHub](https://github.com/genXdev/genXdev)
