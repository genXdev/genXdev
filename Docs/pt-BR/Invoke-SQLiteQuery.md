# Invoke-SQLiteQuery

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** —

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Invoke-SQLiteQuery [[-ConnectionString] <String>] [[-DatabaseFilePath] <String>] [[-Transaction] <Object>] -Queries <String[]> [[-SqlParameters] <Collections.Hashtable[]>] [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [-IsolationLevel <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ConnectionString` | String | — | — | 0 | — | A string de conexão para o banco de dados SQLite. |
| `-DatabaseFilePath` | String | — | — | 1 | — | O caminho para o arquivo do banco de dados SQLite. |
| `-Transaction` | Object | — | — | 2 | — | The `-Transaction` parameter. |
| `-Queries` | String[] | ✅ | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 3 | — | A(s) consulta(s) a executar. |
| `-SqlParameters` | Collections.Hashtable[] | — | ✅ (ByValue, ByPropertyName) 🌐 Remaining | 4 | `@()` | Parâmetros de consulta como hashtables. |
| `-IsolationLevel` | String | — | — | Named | `"ReadCommitted"` | O nível de isolamento a ser usado. O padrão é ReadCommitted. |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force um aviso de consentimento mesmo se a preferência estiver definida para instalação do pacote SQLite. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente para o pacote SQLite. |

## Related Links

- [Invoke-SQLiteQuery on GitHub](https://github.com/genXdev/genXdev)
