# Get-MpCmdRunPath

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtém o caminho para o executável MpCmdRun.exe do Windows Defender.

## Description

* Localiza e retorna o caminho completo para o utilitário de linha de comando do Windows Defender (MpCmdRun.exe).
* O cmdlet verifica o local de instalação padrão em Program Files e fornece tratamento de erro apropriado se o arquivo não for encontrado.

## Syntax

```powershell
Get-MpCmdRunPath [<CommonParameters>]
```

## Examples

### Example 1

```powershell
$defenderPath = Get-MpCmdRunPath
```

Recupera o caminho completo para a ferramenta de linha de comando do Windows Defender.

## Related Links

- [Get-MpCmdRunPath on GitHub](https://github.com/genXdev/genXdev)
