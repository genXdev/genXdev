# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLServerQuery [[-Queries] <String[]>] [[-DatabaseName] <String>] [[-Server] <String>] [[-Transaction] <Object>] [[-ConnectionString] <String>] [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Queries` | String[] | — | ✅ (ByValue, ByPropertyName) | 0 | — | A(s) consulta(s) a executar. |
| `-DatabaseName` | String | — | — | 1 | `'master'` | O nome do banco de dados SQL Server. |
| `-Server` | String | — | — | 2 | `'.'` | O nome da instância do SQL Server. |
| `-Transaction` | Object | — | — | 3 | — | Uma transação existente do SQL Server a ser usada para as consultas. |
| `-ConnectionString` | String | — | — | 4 | — | A string de conexão com o banco de dados SQL. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) | 5 | `@()` | Parâmetros de consulta como hashtables. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | O nível de isolamento a ser usado. O padrão é ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Forçar um prompt de consentimento mesmo que a preferência esteja definida para instalação do pacote do SQL Server. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente para o pacote do SQL Server. |

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)
