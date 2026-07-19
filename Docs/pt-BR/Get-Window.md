# Get-Window

> **Module:** GenXdev.Windows | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Obtém informações de janela para processos especificados ou identificadores de janela.

## Description

* Obtém informações de janela usando nome do processo, ID ou identificador de janela.
* Retorna objetos WindowObj contendo detalhes sobre as janelas principais dos processos correspondentes.
* Suporta curingas ao pesquisar por nome do processo.

## Syntax

```powershell
Get-Window [[-ProcessName] <string>] [-ProcessId <int>] [-WindowHandle <long>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ProcessName` | String | — | ✅ (ByPropertyName) | 0 | — | Nome do processo para obter informações da janela 🌐 *Supports wildcards* |
| `-ProcessId` | Int32 | — | ✅ (ByPropertyName) | Named | `0` | ID do processo para obter informações da janela |
| `-WindowHandle` | Int64 | — | ✅ (ByPropertyName) | Named | `0` | Identificador da janela para obter informações |

## Examples

### Example 1

```powershell
Get-Window -ProcessName "notepad"
```

Recupera informações de janela para todos os processos chamados "notepad".

### Example 2

```powershell
Get-Window -ProcessId 1234
```

Recupera informações da janela para o processo com ID 1234.

### Example 3

```powershell
Get-Window -WindowHandle 45678
```

Recupera informações da janela para a janela com handle 45678.

## Related Links

- [Get-Window on GitHub](https://github.com/genXdev/genXdev)
