# Expand-Path

> **Module:** GenXdev.FileSystem | **Type:** Function | **Aliases:** `ep

## Synopsis

> Expande qualquer referência de arquivo fornecida para um caminho completo.

## Description

Expande qualquer referência de arquivo fornecida para um caminho completo, em relação ao diretório atual do usuário. Opcionalmente, pode garantir que diretórios ou arquivos existam.

## Syntax

```powershell
Expand-Path -FilePath <String> [-CreateDirectory] [-CreateFile] [-DeleteExistingFile] [-DirectoryMustExist] [-FileMustExist] [-ForceDrive <Char>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Caminho para expandir |
| `-CreateDirectory` | SwitchParameter | — | — | Named | — | Criará o diretório se ele não existir |
| `-CreateFile` | SwitchParameter | — | — | Named | — | Criará um arquivo vazio se ele não existir |
| `-DeleteExistingFile` | SwitchParameter | — | — | Named | — | Excluirá o arquivo se ele já existir |
| `-ForceDrive` | Char | — | — | Named | `'*'` | Forçará o uso de uma unidade específica |
| `-FileMustExist` | SwitchParameter | — | — | Named | — | Irá lançar uma exceção se o arquivo não existir |
| `-DirectoryMustExist` | SwitchParameter | — | — | Named | — | Lançará exceção se o diretório não existir |

## Examples

### Expand-Path -FilePath ".\myfile.txt" -CreateFile

```powershell
Expand-Path -FilePath ".\myfile.txt" -CreateFile
```

### ep ~\documents\test.txt -CreateFile

```powershell
ep ~\documents\test.txt -CreateFile
```

## Related Links

- [Expand-Path on GitHub](https://github.com/genXdev/genXdev)
