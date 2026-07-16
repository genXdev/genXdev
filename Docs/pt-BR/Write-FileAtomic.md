# Write-FileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Escreve bytes em um arquivo de forma atômica para evitar corrupção.

## Description

* Escrita atômica: usa uma estratégia de arquivo temporário + renomeação para garantir que o arquivo de destino nunca seja deixado em um estado corrompido se o processo for interrompido.
* Lógica de repetição: repete a escrita até MaxRetries vezes com um atraso de RetryDelayMs milissegundos entre as tentativas.
* Suporte a debounce: quando DebounceMs > 0, escritas consecutivas rápidas no mesmo arquivo são coalescidas — apenas o último conteúdo é escrito uma vez que o arquivo não seja tocado por DebounceMs ms.
* Criação de diretórios: cria diretórios pai automaticamente se eles não existirem.

## Syntax

```powershell
Write-FileAtomic [-FilePath] <string> [[-Data] <byte[]>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo a ser escrito. |
| `-Data` | Byte[] | — | — | 1 | — | O array de bytes para escrever no arquivo. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | O número máximo de tentativas de repetição para a operação de gravação atômica. O padrão é 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | O atraso em milissegundos entre tentativas de repetição. O padrão é 200. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Se maior que 0, debounce escreve neste arquivo. O padrão é 0 (desabilitado). |

## Examples

### Example 1

```powershell
Write-FileAtomic -FilePath "data.bin" -Data $bytes
```

Escreve um array de bytes em data.bin atomicamente com configurações de repetição padrão.

### Example 2

```powershell
# Debounce: only the LAST write within 5 seconds actually hits disk
1..100 | ForEach-Object {
    Write-FileAtomic -FilePath "state.bin" -Data $_ `
        -DebounceMs 5000
}
Start-Sleep -Seconds 6
```

Escreve rapidamente 100 vezes, mas apenas o payload final (100) é persistido
disApós um período de silêncio de 5 segundos.

### Example 3

```powershell
Write-FileAtomic -FilePath "cache.dat" -Data $buffer `
    -MaxRetries 10 -RetryDelayMs 500
```

Grava com repetição personalizada: até 10 tentativas com 500ms entre cada.

## Related Links

- [Write-FileAtomic on GitHub](https://github.com/genXdev/genXdev)
