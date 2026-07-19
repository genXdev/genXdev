# Unregister-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Remove todos os rostos registrados do sistema de reconhecimento facial DeepStack.

## Description

Esta função limpa todos os rostos registrados do banco de dados de reconhecimento facial do DeepStack, removendo todos os arquivos de rosto do diretório de armazenamento de dados e reiniciando o serviço para recarregar um registro de rostos vazio. Esta é uma operação destrutiva que não pode ser desfeita e removerá permanentemente todos os dados faciais registrados.

## Syntax

```powershell
Unregister-AllFaces [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Force` | SwitchParameter | — | — | Named | — | Ignorar confirmações ao remover todas as faces registradas |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker Desktop (usado quando já chamado por função pai) |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use a versão acelerada por GPU (requer placa de vídeo NVIDIA) |
| `-ContainerName` | String | — | — | 0 | `'deepstack_face_recognition'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | 1 | `'deepstack_face_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | 2 | `5000` | O número da porta para o serviço DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 3 | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | 4 | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | 5 | — | Nome personalizado da imagem Docker a ser usado |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do Docker Desktop durante a inicialização |

## Examples

### Unregister-AllFaces

```powershell
Unregister-AllFaces
```

Remove todos os rostos registrados com confirmação.

### Unregister-AllFaces -Force

```powershell
Unregister-AllFaces -Force
```

Remove todos os rostos registrados sem solicitar confirmação.

### unregall -Force

```powershell
unregall -Force
```

Usa alias para remover todas as faces sem confirmação.

## Related Links

- [Unregister-AllFaces on GitHub](https://github.com/genXdev/genXdev)
