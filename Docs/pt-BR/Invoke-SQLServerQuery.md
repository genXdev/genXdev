# Invoke-SQLServerQuery

> **Module:** GenXdev.Data.SqlServer | **Type:** Function | **Aliases:** —

## Synopsis

> Executa uma ou mais consultas SQL contra um banco de dados SQL Server com suporte a transações.

## Description

Executa consultas SQL em um banco de dados SQL Server com suporte a parâmetros e isolamento de transação configurável. Pode usar uma transação externa para operações em lote ou criar sua própria transação interna. Ao usar uma transação externa, o chamador é responsável por confirmar/reverter. Prioridade de conexão: Transação > ConnectionString > DatabaseName (requer Server).

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

## Examples

### Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users"

```powershell
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users"
```

### "SELECT * FROM Users" | Invoke-SQLServerQuery -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true" -SqlParameters @{"UserId"=1}

```powershell
"SELECT * FROM Users" | Invoke-SQLServerQuery -ConnectionString "Server=localhost;Database=MyDB;Integrated Security=true" -SqlParameters @{"UserId"=1}
```

### Batch operations using external transaction $tx = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDB" try {     Invoke-SQLServerQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}     Invoke-SQLServerQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}     $tx.Commit() } catch {     $tx.Rollback()     throw } finally {     $tx.Connection.Close() }

```powershell
Batch operations using external transaction
$tx = Get-SQLServerTransaction -Server "localhost" -DatabaseName "MyDB"
try {
    Invoke-SQLServerQuery -Transaction $tx -Queries "INSERT INTO Users VALUES (@name)" -SqlParameters @{"name"="John"}
    Invoke-SQLServerQuery -Transaction $tx -Queries "UPDATE Users SET active=1 WHERE name=@name" -SqlParameters @{"name"="John"}
    $tx.Commit()
} catch {
    $tx.Rollback()
    throw
} finally {
    $tx.Connection.Close()
}
```

### Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation

```powershell
Invoke-SQLServerQuery -Server "localhost" -DatabaseName "MyDB" -Queries "SELECT * FROM Users" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [Invoke-SQLServerQuery on GitHub](https://github.com/genXdev/genXdev)
