# Initialize-KeyValueStores

> **Module:** GenXdev.Data.KeyValueStore | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> Ініціалізує структуру каталогів KeyValueStore для локального сховища та OneDrive.

## Description

Створює структуру каталогів для сховищ ключ-значення на основі JSON у двох місцях: локальному комп'ютері для негайного доступу та папці OneDrive для хмарної синхронізації. Командлет забезпечує існування обох каталогів і їх належне налаштування.

## Syntax

```powershell
Initialize-KeyValueStores [[-DatabasePath] <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-DatabasePath` | String | — | — | 0 | — | Шлях до бази даних для файлів даних сховища ключ-значення |

## Examples

### Example 1

```powershell
Initialize-KeyValueStores
```

Створює стандартні локальні каталоги та каталоги OneDrive для сховищ ключ-значення.

### Example 2

```powershell
Initialize-KeyValueStores -DatabasePath "C:\MyStores"
```

Створює каталоги сховища ключ-значення за вказаним користувацьким шляхом.

## Parameter Details

### `-DatabasePath <String>`

> Шлях до бази даних для файлів даних сховища ключ-значення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KeyValueStoreNames.md)
- [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-KeyValueStorePath.md)
- [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-StoreKeys.md)
- [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ValueByKeyFromStore.md)
- [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-KeyFromStore.md)
- [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-KeyValueStore.md)
- [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-ValueByKeyInStore.md)
- [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Sync-KeyValueStore.md)
