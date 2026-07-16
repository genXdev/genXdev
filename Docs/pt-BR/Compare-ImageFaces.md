# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | O caminho local para o primeiro arquivo de imagem a ser comparado |
| `-ImagePath2` | String | ✅ | — | 1 | — | O caminho local para o segundo arquivo de imagem a ser comparado |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | O número da porta para o serviço DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | 7 | — | Nome personalizado da imagem Docker a ser usado |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use a versão acelerada por GPU (requer placa de vídeo NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do Docker Desktop durante a inicialização |

## Outputs

- `Collections.Hashtable`

## Related Links

- [Compare-ImageFaces on GitHub](https://github.com/genXdev/genXdev)
