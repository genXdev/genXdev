# Invoke-ImageMetadataUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagepropdetection

## Synopsis

> Atualiza metadados EXIF para imagens em um diretório.

## Description

Esta função extrai e atualiza metadados EXIF para imagens em diretórios especificados.
Ela processa cada imagem para extrair metadados EXIF detalhados, incluindo detalhes da câmera,
coordenadas GPS, configurações de exposição e outras informações técnicas. Os metadados
são armazenados em fluxos NTFS alternativos como :EXIF.json para uso posterior por funções de
indexação e pesquisa.

## Syntax

```powershell
Invoke-ImageMetadataUpdate [[-ImageDirectories] <String[]>] [-ClearSession] [-Force] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Array de caminhos de diretórios para processar atualizações de metadados de imagem |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Tentarei novamente as atualizações de metadados de imagem que falharam anteriormente |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Processe apenas imagens que ainda não possuem arquivos de metadados |
| `-Recurse` | SwitchParameter | — | — | Named | — | Se especificado, processa imagens em subdiretórios recursivamente |
| `-Force` | SwitchParameter | — | — | Named | — | Força a reconstrução dos metadados mesmo que já existam |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return structured objects instead of outputting to console |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use configurações alternativas armazenadas na sessão para preferências de IA, como idioma, coleções de imagens, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Limpar configurações alternativas armazenadas na sessão para preferências de IA, como Idioma, coleções de Imagens, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Não use configurações alternativas armazenadas na sessão para preferências de IA como idioma, coleções de imagens, etc. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |

## Examples

### Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force

```powershell
Invoke-ImageMetadataUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Force
```

### Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv

```powershell
Invoke-ImageMetadataUpdate @("C:\Photos", "C:\Archive") -Force -PassThru | Export-Csv -Path metadata-log.csv
```

## Related Links

- [Invoke-ImageMetadataUpdate on GitHub](https://github.com/genXdev/genXdev)
