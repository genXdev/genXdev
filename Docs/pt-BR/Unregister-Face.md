# Unregister-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Unregister-Face -Identifier <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O identificador único da face a ser excluída do sistema DeepStack |
| `-ContainerName` | String | — | — | 1 | `'deepstack_face_recognition'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | 2 | `'deepstack_face_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | 3 | `5000` | O número da porta para o serviço DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 4 | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | 5 | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | 6 | — | Nome personalizado da imagem Docker a ser usado |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use a versão acelerada por GPU (requer placa de vídeo NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do Docker Desktop durante a inicialização |

## Outputs

- `Boolean`

## Related Links

- [Unregister-Face on GitHub](https://github.com/genXdev/genXdev)
