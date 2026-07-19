# Test-UnattendedMode

> **Module:** GenXdev.Helpers | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Detecta se o PowerShell está sendo executado em modo não interativo/automatizado.

## Description

* Analisa vários indicadores para determinar se o PowerShell está sendo executado em
  um contexto não supervisionado ou automatizado.
* Verifica análise de pipeline, variáveis de ambiente, redirecionamento de console,
  e contexto de invocação.
* Quando CallersInvocation é fornecido, analisa a posição e a contagem do pipeline para
  detectar execução automatizada de pipeline ou script.

## Syntax

```powershell
Test-UnattendedMode [[-CallersInvocation] <InvocationInfo>] [-Detailed] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-CallersInvocation` | InvocationInfo | — | — | 0 | — | Informações de invocação do chamador para detecção de pipeline e automação |
| `-Detailed` | SwitchParameter | — | — | Named | `False` | Retorne objeto de análise detalhado em vez de booleano simples |

## Examples

### Example 1

```powershell
Test-UnattendedMode
```

Retorna um booleano indicando se está executando em modo não assistido.

### Example 2

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation
```

Analisa o contexto de invocação do chamador e retorna um booleano.

### Example 3

```powershell
Test-UnattendedMode -CallersInvocation $MyInvocation -Detailed
```

Retorna objeto de análise detalhada com todos os indicadores.

### Example 4

```powershell
function My-Function {
    $isUnattended = Test-UnattendedMode -CallersInvocation $MyInvocation
    if ($isUnattended) {
        Write-Verbose "Running in unattended mode"
    }
}
```

Exemplo de uso em uma função para verificar o modo não assistido.

## Outputs


## Related Links

- [Test-UnattendedMode on GitHub](https://github.com/genXdev/genXdev)
