# Write-TextFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Escreve texto em um arquivo atomicamente para prevenir corrupção.

## Description

* Gravação atômica: usa uma estratégia de arquivo temporário + renomeação para garantir que o arquivo de destino nunca fique em um estado corrompido se o processo for interrompido.
* Lógica de repetição: repete a gravação até MaxRetries vezes com um atraso de RetryDelayMs milissegundos entre as tentativas.
* Suporte a codificação: aceita um parâmetro System.Text.Encoding para controlar a codificação de saída. O padrão é UTF-8.
* Suporte a debounce: quando DebounceMs > 0, gravações consecutivas rápidas no mesmo arquivo são coalescidas — apenas o último conteúdo é gravado quando o arquivo não é tocado por DebounceMs ms.
* Criação de diretórios: cria diretórios pai automaticamente se eles não existirem.

## Syntax

```powershell
Write-TextFileAtomic [-FilePath] <string> [[-Data] <string>] [-MaxRetries <int>] [-RetryDelayMs <int>] [-Encoding <Encoding>] [-DebounceMs <int>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo a ser escrito. |
| `-Data` | String | — | — | 1 | — | O conteúdo de texto a ser escrito no arquivo. |
| `-MaxRetries` | Int32 | — | — | Named | `0` | O número máximo de tentativas de repetição para a operação de gravação atômica. O padrão é 4. |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | O atraso em milissegundos entre tentativas de repetição. O padrão é 200. |
| `-Encoding` | Text.Encoding | — | — | Named | — | A codificação de texto a ser usada ao escrever o arquivo. O padrão é UTF-8. |
| `-DebounceMs` | Int32 | — | — | Named | `0` | Se maior que 0, debounce escreve neste arquivo. O padrão é 0 (desabilitado). |

## Examples

### Example 1

```powershell
Write-TextFileAtomic -FilePath "config.txt" -Data "hello world"
```

Escreve uma string em config.txt usando codificação UTF-8 atomicamente.

### Example 2

```powershell
# Debounce: only the LAST log line within 2 seconds hits disk
Get-Content server.log -Tail 50 | ForEach-Object {
    Write-TextFileAtomic -FilePath "filtered.log" -Data $_ `
        -DebounceMs 2000
}
Start-Sleep -Seconds 3
```

Canaliza 50 linhas rapidamente; apenas a última linha é mantida após um período de silêncio de 2 segundos.

### Example 3

```powershell
Write-TextFileAtomic -FilePath "data.csv" -Data $csv `
    -Encoding ([System.Text.Encoding]::ASCII)
```

Write a string to data.csv using ASCII encoding atomically.

### Example 4

```powershell
# Debounce with custom retry: coalesce UI state saves
$watcher = Start-ThreadJob -ScriptBlock {
    param($path)
    while ($true) {
        Write-TextFileAtomic -FilePath $path `
            -Data (Get-Date -Format 'yyyy-MM-dd HH:mm:ss') `
            -DebounceMs 1000 -MaxRetries 3
        Start-Sleep -Milliseconds 100
    }
} -ArgumentList "timestamp.txt"
```

Um trabalho em segundo plano escreve timestamps a cada 100ms, mas o debounce os coalesce — apenas uma escrita por segundo chega ao disco.

## Related Links

- [Write-TextFileAtomic on GitHub](https://github.com/genXdev/genXdev)
