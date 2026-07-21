# Merge-TranslationCache

> **Module:** GenXdev.AI | **Type:** Function | **Aliases:** —

## Synopsis

> Керує постійним кешем перекладу з пакетним записом на диск для кожної мови.

## Description

Підтримує модульний кеш перекладів в пам'яті для Get-TextTranslation. Кеш розділений на JSON-файли для кожної мови, що зберігаються в $env:LOCALAPPDATA\GenXdev.PowerShell\. Виклики для додавання записів пакетуються — запис на диск відбувається лише кожні 100 змін на мову або при виклику -PersistNow. -PersistNow також очищає кеш в пам'яті, щоб запобігти безмежному зростанню під час пакетної обробки.

## Syntax

```powershell
Merge-TranslationCache [-GetCache] [<CommonParameters>]

Merge-TranslationCache -Key <String> -Language <String> -Value <String> [<CommonParameters>]

Merge-TranslationCache -PersistNow [<CommonParameters>]

Merge-TranslationCache -ClearCache [<CommonParameters>]

Merge-TranslationCache -PurgeFromCache [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-GetCache` | SwitchParameter | — | — | Named | — | Повертає хеш-таблицю кешу в пам'яті *(Parameter set: )* |
| `-Language` | String | ✅ | — | Named | — | uk-UA *(Parameter set: )* |
| `-Key` | String | ✅ | — | Named | — | Вихідний текст для кешування *(Parameter set: )* |
| `-Value` | String | ✅ | — | Named | — | SYNOPSIS

    Імпортує, змінює та експортує всі або деякі параметри Групової політики.

СИНТАКСИС

    Import-GPBackupItem [-BackupDirectory] <String> [[-BackupId] <Guid>] [[-TargetGPObject] <Guid>] [[-Domain] <String>] [[-Server] <String>] [-WhatIf] [-Confirm]  [<CommonParameters>]

    Export-GPBackupItem [-BackupDirectory] <String> [[-BackupId] <Guid>] [[-TargetGPObject] <Guid>] [[-Domain] <String>] [[-Server] <String>] [-WhatIf] [-Confirm]  [<CommonParameters>]

    Import-GPObject [-BackupDirectory] <String> [[-BackupId] <Guid>] [[-TargetGPObject] <Guid>] [[-Domain] <String>] [[-Server] <String>] [-WhatIf] [-Confirm]  [<CommonParameters>]

    Export-GPObject [-BackupDirectory] <String> [[-BackupId] <Guid>] [[-TargetGPObject] <Guid>] [[-Domain] <String>] [[-Server] <String>] [-WhatIf] [-Confirm]  [<CommonParameters>]

ОПИС

    Командлети Import-GPBackupItem та Import-GPObject імпортують параметри Групової політики з резервної копії.
    Командлети Export-GPBackupItem та Export-GPObject експортують параметри Групової політики.

ПРИКЛАДИ

    ----- Приклад 1: імпорт резервної копії у файл -----
    PS C:\>Import-GPBackupItem -BackupDirectory C:\Backup -BackupId 12345678-90ab-cdef-1234-567890abcdef -TargetGPObject 87654321-fedc-ba09-8765-4321fedcba09 -Domain domain.com -Server Server01

    ----- Приклад 2: експорт у файл -----
    PS C:\>Export-GPBackupItem -BackupDirectory C:\Backup -BackupId 12345678-90ab-cdef-1234-567890abcdef -TargetFilePath C:\Export.xml

ПАРАМЕТРИ

    -BackupDirectory <String>
        Вказує шлях до каталогу резервних копій.
        
        Необхідний?                true
        Позиція?                    1
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -BackupId <Guid>
        Вказує ідентифікатор резервної копії.
        
        Необхідний?                false
        Позиція?                    2
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -TargetGPObject <Guid>
        Вказує ідентифікатор цільового об'єкта Групової політики.
        
        Необхідний?                false
        Позиція?                    3
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -Domain <String>
        Вказує ім'я домену.
        
        Необхідний?                false
        Позиція?                    4
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -Server <String>
        Вказує ім'я сервера.
        
        Необхідний?                false
        Позиція?                    5
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -WhatIf [<SwitchParameter>]
        Показує, що станеться в результаті виконання командлета. Командлет не виконується.
        
        Необхідний?                false
        Позиція?                    named
        Значення за замовчуванням    false
        Чи приймає вхідні дані конвеєра? false
        Чи приймає символи підстановки? false
        
    -Confirm [<SwitchParameter>]
        Запитує підтвердження перед виконанням командлета.
        
        Необхідний?                false
        Позиція?                    named
        Значення за замовчуванням    false
        Чи приймає вхідні дані конвеєра? false
        Чи приймає символи підстановки? false
        
    <CommonParameters>
        Цей командлет підтримує загальні параметри: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable та OutVariable. Докладніше див.
        about_CommonParameters.

ВХІДНІ ДАНІ
    System.String
    Microsoft.GroupPolicy.GPBackupItem

ВИХІДНІ ДАНІ
    Microsoft.GroupPolicy.GPBackupItem

ПРИМІТКИ
    Для отримання додаткової інформації введіть Get-Help Import-GPBackupItem -Detailed.
    Для отримання технічної інформації введіть Get-Help Import-GPBackupItem -Full. *(Parameter set: )* |
| `-PersistNow` | SwitchParameter | ✅ | — | Named | — | Записує всі брудні кеші на диск і очищує пам'ять. *(Parameter set: )* |
| `-ClearCache` | SwitchParameter | ✅ | — | Named | — | Очистити кеш у пам’яті та видалити всі файли на диску *(Parameter set: )* |
| `-PurgeFromCache` | SwitchParameter | ✅ | — | Named | — | Видаліть неперекладені записи з усіх мовних кешів на диску. *(Parameter set: )* |

## Examples

### $cache = Merge-TranslationCache -GetCache

```powershell
$cache = Merge-TranslationCache -GetCache
```

### Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'

```powershell
Merge-TranslationCache -Language 'nl-NL' -Key 'Hello' -Value 'Hallo'
```

### Merge-TranslationCache -PersistNow

```powershell
Merge-TranslationCache -PersistNow
```

### Merge-TranslationCache -PurgeFromCache

```powershell
Merge-TranslationCache -PurgeFromCache
```

## Parameter Details

### `-GetCache`

> Повертає хеш-таблицю кешу в пам'яті

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Get |

<hr/>
### `-Language <String>`

> uk-UA

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Key <String>`

> Вихідний текст для кешування

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-Value <String>`

> SYNOPSIS

    Імпортує, змінює та експортує всі або деякі параметри Групової політики.

СИНТАКСИС

    Import-GPBackupItem [-BackupDirectory] <String> [[-BackupId] <Guid>] [[-TargetGPObject] <Guid>] [[-Domain] <String>] [[-Server] <String>] [-WhatIf] [-Confirm]  [<CommonParameters>]

    Export-GPBackupItem [-BackupDirectory] <String> [[-BackupId] <Guid>] [[-TargetGPObject] <Guid>] [[-Domain] <String>] [[-Server] <String>] [-WhatIf] [-Confirm]  [<CommonParameters>]

    Import-GPObject [-BackupDirectory] <String> [[-BackupId] <Guid>] [[-TargetGPObject] <Guid>] [[-Domain] <String>] [[-Server] <String>] [-WhatIf] [-Confirm]  [<CommonParameters>]

    Export-GPObject [-BackupDirectory] <String> [[-BackupId] <Guid>] [[-TargetGPObject] <Guid>] [[-Domain] <String>] [[-Server] <String>] [-WhatIf] [-Confirm]  [<CommonParameters>]

ОПИС

    Командлети Import-GPBackupItem та Import-GPObject імпортують параметри Групової політики з резервної копії.
    Командлети Export-GPBackupItem та Export-GPObject експортують параметри Групової політики.

ПРИКЛАДИ

    ----- Приклад 1: імпорт резервної копії у файл -----
    PS C:\>Import-GPBackupItem -BackupDirectory C:\Backup -BackupId 12345678-90ab-cdef-1234-567890abcdef -TargetGPObject 87654321-fedc-ba09-8765-4321fedcba09 -Domain domain.com -Server Server01

    ----- Приклад 2: експорт у файл -----
    PS C:\>Export-GPBackupItem -BackupDirectory C:\Backup -BackupId 12345678-90ab-cdef-1234-567890abcdef -TargetFilePath C:\Export.xml

ПАРАМЕТРИ

    -BackupDirectory <String>
        Вказує шлях до каталогу резервних копій.
        
        Необхідний?                true
        Позиція?                    1
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -BackupId <Guid>
        Вказує ідентифікатор резервної копії.
        
        Необхідний?                false
        Позиція?                    2
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -TargetGPObject <Guid>
        Вказує ідентифікатор цільового об'єкта Групової політики.
        
        Необхідний?                false
        Позиція?                    3
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -Domain <String>
        Вказує ім'я домену.
        
        Необхідний?                false
        Позиція?                    4
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -Server <String>
        Вказує ім'я сервера.
        
        Необхідний?                false
        Позиція?                    5
        Значення за замовчуванням    none
        Чи приймає вхідні дані конвеєра? true (ByPropertyName)
        Чи приймає символи підстановки? false
        
    -WhatIf [<SwitchParameter>]
        Показує, що станеться в результаті виконання командлета. Командлет не виконується.
        
        Необхідний?                false
        Позиція?                    named
        Значення за замовчуванням    false
        Чи приймає вхідні дані конвеєра? false
        Чи приймає символи підстановки? false
        
    -Confirm [<SwitchParameter>]
        Запитує підтвердження перед виконанням командлета.
        
        Необхідний?                false
        Позиція?                    named
        Значення за замовчуванням    false
        Чи приймає вхідні дані конвеєра? false
        Чи приймає символи підстановки? false
        
    <CommonParameters>
        Цей командлет підтримує загальні параметри: Verbose, Debug,
        ErrorAction, ErrorVariable, WarningAction, WarningVariable,
        OutBuffer, PipelineVariable та OutVariable. Докладніше див.
        about_CommonParameters.

ВХІДНІ ДАНІ
    System.String
    Microsoft.GroupPolicy.GPBackupItem

ВИХІДНІ ДАНІ
    Microsoft.GroupPolicy.GPBackupItem

ПРИМІТКИ
    Для отримання додаткової інформації введіть Get-Help Import-GPBackupItem -Detailed.
    Для отримання технічної інформації введіть Get-Help Import-GPBackupItem -Full.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Set |

<hr/>
### `-PersistNow`

> Записує всі брудні кеші на диск і очищує пам'ять.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Persist |

<hr/>
### `-ClearCache`

> Очистити кеш у пам’яті та видалити всі файли на диску

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Clear |

<hr/>
### `-PurgeFromCache`

> Видаліть неперекладені записи з усіх мовних кешів на диску.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |
| **Parameter set** | Purge |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AILLMSettings.md)
- [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SpeechToText.md)
- [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-TextTranslation.md)
- [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-VectorSimilarity.md)
- [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-WinMerge.md)
- [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-GenXdevMCPToken.md)
- [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMAudioChat.md)
- [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/New-LLMTextChat.md)
- [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Receive-RealTimeSpeechToText.md)
- [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AILLMSettings.md)
- [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-GenXdevCommandNotFoundAction.md)
- [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-GenXdevMCPServer.md)
- [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Test-DeepLinkImageFile.md)
