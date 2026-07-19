# Invoke-WinMerge

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Inicia o WinMerge para comparar dois arquivos lado a lado.

## Description

Inicia o aplicativo WinMerge para comparar arquivos de origem e destino em uma visualização de diferenças lado a lado. A função valida a existência de ambos os arquivos de entrada e garante que o WinMerge esteja instalado corretamente antes de iniciar. Oferece funcionalidade opcional de espera para pausar a execução até que o WinMerge seja fechado.

## Syntax

```powershell
Invoke-WinMerge -SourcecodeFilePath <String> -TargetcodeFilePath <String> [-Wait] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-SourcecodeFilePath` | String | ✅ | — | 0 | — | Caminho para o arquivo de origem a ser comparado |
| `-TargetcodeFilePath` | String | ✅ | — | 1 | — | Caminho para o arquivo de destino a ser comparado |
| `-Wait` | SwitchParameter | — | — | Named | — | Aguarde o WinMerge fechar antes de continuar |

## Examples

### Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `                 -TargetcodeFilePath "C:\target\file2.txt" `                 -Wait

```powershell
Invoke-WinMerge -SourcecodeFilePath "C:\source\file1.txt" `
                -TargetcodeFilePath "C:\target\file2.txt" `
                -Wait
```

### merge "C:\source\file1.txt" "C:\target\file2.txt"

```powershell
merge "C:\source\file1.txt" "C:\target\file2.txt"
```

## Related Links

- [Invoke-WinMerge on GitHub](https://github.com/genXdev/genXdev)
