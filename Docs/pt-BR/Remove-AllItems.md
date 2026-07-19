# Remove-AllItems

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `sdel

## Synopsis

> Remove recursivamente todo o conteúdo de um diretório com tratamento avançado de erros.

## Description

Remove com segurança todos os arquivos e subdiretórios dentro de um diretório específico usando uma estratégia de exclusão em ordem reversa para lidar com caminhos profundos. Inclui suporte WhatIf, registro detalhado e métodos de exclusão alternativos para arquivos bloqueados.

## Syntax

```powershell
Remove-AllItems -Path <String> [-DeleteFolder] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Path` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O caminho do diretório a limpar |
| `-DeleteFolder` | SwitchParameter | — | — | Named | — | Além disso, exclua a pasta raiz fornecida com o parâmetro Path |

## Examples

### Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose

```powershell
Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose
```

### sdel ".\temp" -DeleteFolder

```powershell
sdel ".\temp" -DeleteFolder
```

## Related Links

- [Remove-AllItems on GitHub](https://github.com/genXdev/genXdev)
