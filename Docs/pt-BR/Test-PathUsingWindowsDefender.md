# Test-PathUsingWindowsDefender

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `virusscan, `HasNoVirus

## Synopsis

> Verifica arquivos ou diretórios em busca de malware usando o Windows Defender.

## Description

* Realiza uma varredura direcionada de arquivos ou pastas específicas usando a interface de linha de comando do Windows Defender (MpCmdRun.exe).
* Pode escanear no modo somente detecção ou com remediação automática de ameaças ativada.
* Retorna verdadeiro se nenhuma ameaça for detectada, falso se ameaças forem encontradas ou a varredura falhar.

## Syntax

```powershell
Test-PathUsingWindowsDefender [-FilePath] <string> [-EnableRemediation] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O caminho para o arquivo ou diretório a ser escaneado |
| `-EnableRemediation` | SwitchParameter | — | — | Named | `False` | Instrui o Windows Defender a agir contra ameaças |

## Examples

### Example 1

```powershell
Test-PathUsingWindowsDefender -FilePath "C:\Downloads\file.exe" -Verbose
```

Escaneia o arquivo especificado e exibe a saída detalhada.

### Example 2

```powershell
virusscan "C:\Downloads\file.exe" -EnableRemediation
```

Escaneia o arquivo usando o alias e habilita a remediação.

### Example 3

```powershell
"C:\Downloads\file.exe" | HasNoVirus
```

Usa um alias para canalizar o caminho do arquivo para o cmdlet.

## Related Links

- [Test-PathUsingWindowsDefender on GitHub](https://github.com/genXdev/genXdev)
