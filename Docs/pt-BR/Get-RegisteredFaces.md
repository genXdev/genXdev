# Get-RegisteredFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Recupera uma lista de todos os identificadores de rosto registrados do DeepStack.

## Description

Esta função se conecta a uma API local de reconhecimento facial do DeepStack e recupera todos os identificadores faciais registrados. Ela usa o endpoint /v1/vision/face/list para consultar o serviço DeepStack e retorna um array de strings de identificadores faciais. A função lida com a inicialização do container Docker, comunicação com a API e tratamento de erros para vários cenários de falha.

## Syntax

```powershell
Get-RegisteredFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use a versão acelerada por GPU (requer placa de vídeo NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | O número da porta para o serviço DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | 5 | — | Nome personalizado da imagem Docker a ser usado |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do Docker Desktop durante a inicialização |

## Examples

### Get-RegisteredFaces

```powershell
Get-RegisteredFaces
```

Este exemplo recupera todos os rostos registrados usando parâmetros padrão.

### Get-RegisteredFaces -Force -UseGPU

```powershell
Get-RegisteredFaces -Force -UseGPU
```

Este exemplo força uma reconstrução do contêiner e usa aceleração de GPU.

### Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080

```powershell
Get-RegisteredFaces -ContainerName "my_deepstack" -ServicePort 8080
```

Este exemplo utiliza um nome de contêiner e número de porta personalizados.

### Get-RegisteredFaces | Where-Object { $_ -like "John*" }

```powershell
Get-RegisteredFaces |
Where-Object { $_ -like "John*" }
```

Este exemplo recupera todos os rostos e filtra aqueles que começam com "John".

## Related Links

- [Get-RegisteredFaces on GitHub](https://github.com/genXdev/genXdev)
