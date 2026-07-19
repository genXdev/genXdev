# Remove-GenXdevPreference

> **Module:** GenXdev.Data.Preferences | **Type:** Cmdlet | **Aliases:** `removePreference

## Synopsis

> Remove um valor de preferência do armazenamento de preferências do GenXdev.

## Description

* Remove um valor de preferência do armazenamento local e opcionalmente do
  armazenamento padrão.
* Fornece dois conjuntos de parâmetros - um para remoção apenas local e outro para
  remoção de ambos os armazenamentos local e padrão.
* Garante a sincronização adequada ao modificar o armazenamento padrão.

## Syntax

```powershell
Remove-GenXdevPreference [-Name] <string> [-RemoveDefault] [-SessionOnly] [-ClearSession] [-PreferencesDatabasePath <string>] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Name` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | O nome da preferência a ser removida |
| `-RemoveDefault` | SwitchParameter | — | — | Named | `False` | Também alterar para remover a preferência dos padrões |
| `-SessionOnly` | SwitchParameter | — | — | Named | `False` | Utilize configurações alternativas armazenadas na sessão para preferências de Dados, como Idioma, caminhos de Banco de Dados, etc. |
| `-ClearSession` | SwitchParameter | — | — | Named | `False` | Limpe a configuração da sessão (variável global) antes de recuperar |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Caminho do banco de dados para arquivos de dados de preferência |
| `-SkipSession` | SwitchParameter | — | — | Named | `False` | Não use configurações alternativas armazenadas na sessão para preferências de dados, como idioma, caminhos de banco de dados, etc. |

## Examples

### Example 1

```powershell
Remove-GenXdevPreference -Name "Theme"
```

Remove a preferência "Theme" apenas do armazenamento local.

### Example 2

```powershell
removePreference "Theme" -RemoveDefault
```

Remove a preferência "Tema" dos armazenamentos local e padrão.

## Related Links

- [Remove-GenXdevPreference on GitHub](https://github.com/genXdev/genXdev)
