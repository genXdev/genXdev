# Invoke-Fasti

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `fasti

## Synopsis

> Extrai arquivos de arquivo no diretório atual para suas próprias pastas e os exclui depois.

## Description

Extrai automaticamente formatos de arquivo comuns (zip, 7z, tar, etc.) encontrados no diretório atual para pastas individuais nomeadas conforme cada arquivo. Após a extração bem-sucedida, os arquivos originais são excluídos. Requer que o 7-Zip esteja instalado no sistema.

## Syntax

```powershell
Invoke-Fasti [[-Password] <String>] [-ExtractOutputToo] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Password` | String | — | — | 0 | — | Digite a senha para o(s) arquivo(s) criptografado(s) |
| `-ExtractOutputToo` | SwitchParameter | — | — | Named | — | Extrair recursivamente arquivos encontrados nas pastas extraídas |

## Examples

### PS C:\Downloads> Invoke-Fasti

```powershell
PS C:\Downloads> Invoke-Fasti
```

### PS C:\Downloads> fasti

```powershell
PS C:\Downloads> fasti
```

## Related Links

- [Invoke-Fasti on GitHub](https://github.com/genXdev/genXdev)
