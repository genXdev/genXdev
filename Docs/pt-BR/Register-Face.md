# Register-Face

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Register-Face -Identifier <String> -ImagePath <String[]> [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Identifier` | String | ✅ | — | 0 | — | O identificador único para o rosto (ex.: nome da pessoa) |
| `-ImagePath` | String[] | ✅ | — | 1 | — | Array de caminhos locais para arquivos de imagem (png, jpg, jpeg ou gif) |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | O nome para o contêiner Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | O nome do volume Docker para armazenamento persistente |
| `-ServicePort` | Int32 | — | — | Named | `5000` | O número da porta para o serviço DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Tempo máximo em segundos para aguardar a verificação de saúde do serviço |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Intervalo em segundos entre tentativas de verificação de saúde |
| `-ImageName` | String | — | — | Named | — | Nome personalizado da imagem Docker a ser usado |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Pular inicialização do Docker (usada quando já chamada pela função pai) |
| `-Force` | SwitchParameter | — | — | Named | — | Reconstrução forçada do contêiner Docker e remoção dos dados existentes |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Use a versão acelerada por GPU (requer placa de vídeo NVIDIA) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Mostrar a janela do Docker Desktop durante a inicialização |

## Related Links

- [Register-Face on GitHub](https://github.com/genXdev/genXdev)
