# New-SQLiteDatabase

> **Module:** GenXdev.Data.SQLite | **Type:** Function | **Aliases:** `nsqldb

## Synopsis

> Cria um novo arquivo de banco de dados SQLite.

## Description

Cria um novo arquivo de banco de dados SQLite no caminho especificado, caso ainda não exista. A função garante que o diretório de destino exista e cria um banco de dados SQLite válido estabelecendo e fechando uma conexão.

## Syntax

```powershell
New-SQLiteDatabase -DatabaseFilePath <String> [-ConsentToThirdPartySoftwareInstallation] [-ForceConsent] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabaseFilePath` | String | ✅ | — | 0 | — | O caminho para o arquivo de banco de dados SQLite |
| `-ForceConsent` | SwitchParameter | — | — | Named | — | Force um aviso de consentimento mesmo se a preferência estiver definida para instalação do pacote SQLite. |
| `-ConsentToThirdPartySoftwareInstallation` | SwitchParameter | — | — | Named | — | Consentir automaticamente com a instalação de software de terceiros e definir sinalizador persistente para o pacote SQLite. |

## Examples

### New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite"

```powershell
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite"
```

### nsqldb "C:\Databases\MyNewDb.sqlite"

```powershell
nsqldb "C:\Databases\MyNewDb.sqlite"
```

### New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite" -ConsentToThirdPartySoftwareInstallation

```powershell
New-SQLiteDatabase -DatabaseFilePath "C:\Databases\MyNewDb.sqlite" -ConsentToThirdPartySoftwareInstallation
```

## Related Links

- [New-SQLiteDatabase on GitHub](https://github.com/genXdev/genXdev)
