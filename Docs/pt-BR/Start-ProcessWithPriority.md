# Start-ProcessWithPriority

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** `nice

## Synopsis

> Inicia um processo com um nível de prioridade especificado.

## Description

* Inicia um executável com um nível de prioridade personalizável e oferece
  opções para espera e manipulação do processo.
* Encapsula o Start-Process com funcionalidades adicionais para controlar a
  prioridade do processo e o comportamento de execução.

## Syntax

```powershell
Start-ProcessWithPriority [-FilePath] <string> [[-ArgumentList] <string[]>] [[-Priority] <string>] [-NoWait] [-PassThru] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | Caminho para o executável a ser executado |
| `-ArgumentList` | String[] | — | — | 1 | — | Argumentos a serem passados para o executável |
| `-Priority` | String | — | — | 2 | — | Nível de prioridade do processo |
| `-NoWait` | SwitchParameter | — | — | Named | `False` | Não espere pela conclusão do processo |
| `-PassThru` | SwitchParameter | — | — | Named | `False` | process |

## Examples

### Example 1

```powershell
Start-ProcessWithPriority -FilePath "notepad.exe" -Priority "Low" -NoWait
```

Inicia o Bloco de Notas com prioridade baixa e retorna imediatamente.

### Example 2

```powershell
nice notepad.exe -Priority High
```

Usa o alias 'nice' para iniciar um processo com alta prioridade.

## Related Links

- [Start-ProcessWithPriority on GitHub](https://github.com/genXdev/genXdev)
