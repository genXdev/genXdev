# Initialize-ScheduledTaskScripts

> **Module:** GenXdev.Windows | **Type:** Function | **Aliases:** —

## Synopsis

> Cria tarefas agendadas que executam scripts do PowerShell em intervalos especificados.

## Description

Cria e configura tarefas agendadas que executam scripts do PowerShell em vários intervalos, incluindo:
- Inicialização do sistema
- Logon do usuário
- A cada hora em dias específicos (por exemplo, segunda-feira às 13:00)
- Diariamente em horários específicos (por exemplo, todos os dias às 15:00)
Cada tarefa é executada com privilégios elevados no contexto do usuário atual.

## Syntax

```powershell
Initialize-ScheduledTaskScripts [[-FilePath] <String>] [[-Prefix] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | — | — | 0 | `''` | O caminho do diretório onde os scripts de tarefas serão criados |
| `-Prefix` | String | — | — | 1 | `'PS'` | Prefixo para os nomes das tarefas agendadas |

## Examples

### Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"

```powershell
Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"
```

### Initialize-ScheduledTaskScripts

```powershell
Initialize-ScheduledTaskScripts
```

## Related Links

- [Initialize-ScheduledTaskScripts on GitHub](https://github.com/genXdev/genXdev)
