# Set-KnownFolderPath

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Modifica o caminho físico de uma pasta conhecida do Windows.

## Description

Usa a API Shell32 do Windows para realocar pastas do sistema como Documentos,
Downloads, Área de Trabalho ou outras pastas conhecidas do Windows para um novo local. A
função valida se o caminho de destino existe, consulta o GUID exclusivo da pasta
no registro abrangente de pastas conhecidas e usa a API SHSetKnownFolderPath
para realizar a realocação. Casos de uso comuns incluem mover pastas do usuário para
um disco diferente para gerenciamento de espaço ou organização. Tenha cuidado ao
mover pastas críticas do sistema, pois isso pode afetar a estabilidade do sistema.

## Syntax

```powershell
Set-KnownFolderPath -KnownFolder <String> -Path <String> [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-KnownFolder` | String | ✅ | — | 0 | — | Pasta conhecida para modificar |
| `-Path` | String | ✅ | — | 1 | — | Novo caminho para a pasta conhecida |

## Examples

### Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

```powershell
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'
```

### Set-KnownFolderPath Downloads 'E:\Downloads'

```powershell
Set-KnownFolderPath Downloads 'E:\Downloads'
```

## Related Links

- [Set-KnownFolderPath on GitHub](https://github.com/genXdev/genXdev)
