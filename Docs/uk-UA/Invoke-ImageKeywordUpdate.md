# Invoke-ImageKeywordUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagekeywordgeneration`

## Synopsis

> Оновлює метадані зображень за допомогою описів та ключових слів, згенерованих штучним інтелектом.

## Description

Функція Invoke-ImageKeywordUpdate аналізує зображення за допомогою ШІ для створення описів, ключових слів та інших метаданих. Вона створює супровідний файл JSON для кожного зображення, що містить цю інформацію. Функція може обробляти лише нові зображення або оновлювати наявні метадані, а також підтримує рекурсивне сканування каталогів.

## Syntax

```powershell
Invoke-ImageKeywordUpdate [[-ImageDirectories] <String[]>] [[-Instructions] <String>] [-ApiEndpoint <String>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ExposedCmdLets <String[]>] [-FacesDirectory <String>] [-Functions <String[]>] [-ImageDetail <String>] [-IncludeThoughts] [-Language <String>] [-LLMQueryType <String>] [-MaxToolcallBackLength <Int32>] [-Model <String>] [-NoConfirmationToolFunctionNames <String[]>] [-NoContext] [-NoSupportForJsonSchema <String>] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-ResponseFormat <String>] [-RetryFailed] [-SessionOnly] [-SkipSession] [-Temperature <Double>] [-TimeoutSeconds <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Шляхи до директорій, що містять зображення для обробки |
| `-Recurse` | SwitchParameter | — | — | Named | — | Обробляє зображення у вказаному каталозі та всіх підкаталогах |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Обробляти лише зображення, які ще не мають файлів метаданих облич |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Повторна спроба оновити невдалі ключові слова зображень |
| `-Language` | String | — | — | Named | — | Мова для згенерованих описів та ключових слів |
| `-FacesDirectory` | String | — | — | Named | — | Каталог, що містить зображення облич, організовані за папками осіб. Якщо не вказано, використовується налаштований каталог облич за замовчуванням. |
| `-Instructions` | String | — | — | 2 | — | .Зовнішній вигляд
Параметр Path визначає шлях, за яким виконується пошук.
Для пошуку інших елементів, крім файлів, використовуються параметри -Include, -Exclude, -Recurse, -Depth, -Force.
Якщо вказати параметр -Directory, пошук буде обмежено лише каталогами. |
| `-ResponseFormat` | String | — | — | Named | `$null` | .SYNOPSIS
Повертає сертифікати, списки скасування сертифікатів та політики сертифікатів із сховища сертифікатів.

.DESCRIPTION
Командлет `Get-Certificate` отримує сертифікати з вказаних сховищ сертифікатів. Він може повертати сертифікати, списки скасування сертифікатів та політики сертифікатів. За замовчуванням командлет отримує всі сертифікати зі сховища My (особистого) поточного користувача. Ви можете вказувати різні сховища сертифікатів, використовуючи параметри `StoreLocation` та `StoreName`.

.PARAMETER StoreLocation
Вказує розташування сховища сертифікатів. Допустимі значення: CurrentUser, LocalMachine. За замовчуванням CurrentUser.

.PARAMETER StoreName
Вказує ім'я сховища сертифікатів. Допустимі значення: My, CA, Root, TrustedPublisher, Disallowed, AuthRoot, TrustedPeople, ClientAuthIssuer, Remote Desktop, SmartCardRoot, TrustedDevices, TrustedManu facturers. За замовчуванням My.

.PARAMETER FilePath
Вказує шлях до файлу сертифіката. Можна використовувати також конвеєр.

.PARAMETER Thumbprint
Вказує відбиток сертифіката.

.PARAMETER Subject
Вказує тему сертифіката.

.PARAMETER DNSName
Вказує DNS-ім'я сертифіката.

.PARAMETER Issuer
Вказує видавця сертифіката.

.PARAMETER EKU
Вказує розширені Атрибути призначення ключа.

.PARAMETER NotAfter
Повертає сертифікати з датою завершення дії пізніше або раніше вказаної дати.

.PARAMETER NotBefore
Повертає сертифікати з датою початку дії пізніше або раніше вказаної дати.

.PARAMETER IncludeChain
Вказує включити ланцюг сертифікатів у результати.

.PARAMETER IncludeRevocationInfo
Вказує включити інформацію про скасування сертифікатів.

.PARAMETER ListAvailable
Вказує отримати всі доступні сертифікати з усіх сховищ.

.EXAMPLE
```powershell
Get-Certificate
```
Цей приклад отримує всі сертифікати зі сховища My поточного користувача.

.EXAMPLE
```powershell
Get-Certificate -StoreLocation LocalMachine -StoreName Root
```
Цей приклад отримує всі сертифікати зі сховища Root локальної машини.

.EXAMPLE
```powershell
Get-Certificate -Thumbprint "0123456789ABCDEF0123456789ABCDEF01234567"
```
Цей приклад отримує один сертифікат за відбитком.

.NOTES
Додаткові відомості:
- Командлет Get-Certificate є частиною модуля PKI (Public Key Infrastructure).
- Для використання деяких параметрів можуть знадобитися права підвищеного рівня.
- Докладніше: https://docs.microsoft.com/powershell/module/pki/get-certificate

.LINK
[Get-Certificate](https://docs.microsoft.com/powershell/module/pki/get-certificate)

.LINK
[Set-Certificate](https://docs.microsoft.com/powershell/module/pki/set-certificate)

.LINK
[Import-Certificate](https://docs.microsoft.com/powershell/module/pki/import-certificate)

.INPUTS
System.String

.OUTPUTS
System.Security.Cryptography.X509Certificates.X509Certificate2

.ROLE
pki |
| `-Temperature` | Double | — | — | Named | `-1` | Температура для випадковості відповіді (0.0-1.0) |
| `-ImageDetail` | String | — | — | Named | `'high'` | Рівень деталізації зображення |
| `-LLMQueryType` | String | — | — | Named | `'Pictures'` | Тип запиту LLM |
| `-Model` | String | — | — | Named | — | Ідентифікатор моделі або шаблон для використання в операціях ШІ |
| `-ApiEndpoint` | String | — | — | Named | — | URL кінцевої точки API для операцій штучного інтелекту |
| `-ApiKey` | String | — | — | Named | — | Ключ API для автентифікованих операцій зі штучним інтелектом |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-TimeoutSeconds` | Int32 | — | — | Named | — | Час очікування в секундах для операцій зі штучним інтелектом |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-IncludeThoughts` | SwitchParameter | — | — | Named | — | Командлет `Export-NpsConfiguration` експортує конфігурацію сервера політики мережі (NPS) у файл .xml.

## Детальний опис

Командлет `Export-NpsConfiguration` експортує всю конфігурацію сервера NPS у файл у форматі .xml. Потім цю конфігурацію можна імпортувати на інший сервер NPS за допомогою командлета `Import-NpsConfiguration`. Цей командлет еквівалентний команді з консолі NPS, яка використовується для експорту конфігурації NPS.

Конфігурація експортується у вигляді рядка, а не у вигляді об'єкта XML. Тому ви не можете передати вихідні дані цього командлета в командлет `Import-NpsConfiguration`. Замість цього вкажіть файл .xml безпосередньо як вхідні дані для `Import-NpsConfiguration`.

## Приклад 1

```
PS C:\> Export-NpsConfiguration -Path 'C:\NpsConfig.xml'
```

Ця команда експортує конфігурацію NPS у файл з іменем C:\NpsConfig.xml.

## Приклад 2

```
PS C:\> Export-NpsConfiguration -Path 'C:\NpsConfig.xml' -Force
```

Ця команда експортує конфігурацію NPS у файл C:\NpsConfig.xml. Якщо файл вже існує, він буде перезаписаний. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс |
| `-Functions` | String[] | — | — | Named | — | Визначає функції для використання в операції штучного інтелекту. |
| `-ExposedCmdLets` | String[] | — | — | Named | — | Визначає оприлюднені командлети для операції AI. |
| `-NoConfirmationToolFunctionNames` | String[] | — | — | Named | — | Визначає імена функцій інструментів, які не потребують підтвердження. |
| `-NoContext` | SwitchParameter | — | — | Named | — | Якщо вказано, вимикає використання контексту. |
| `-MaxToolcallBackLength` | Int32 | — | — | Named | — | Максимальна довжина зворотного виклику для викликів інструментів. |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru для повернення структурованих об'єктів замість виведення в консоль |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Виявляє зміни в каталозі облич та повторно реєструє обличчя за потреби |

## Examples

### Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew

```powershell
Invoke-ImageKeywordUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse -OnlyNew
```

### updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"

```powershell
updateimages @("C:\Photos", "C:\Archive") -Recurse -RetryFailed -Language "Spanish"
```

## Parameter Details

### `-ImageDirectories <String[]>`

> Шляхи до директорій, що містять зображення для обробки

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@('.\')` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> Обробляє зображення у вказаному каталозі та всіх підкаталогах

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyNew`

> Обробляти лише зображення, які ще не мають файлів метаданих облич

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryFailed`

> Повторна спроба оновити невдалі ключові слова зображень

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> Мова для згенерованих описів та ключових слів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-FacesDirectory <String>`

> Каталог, що містить зображення облич, організовані за папками осіб. Якщо не вказано, використовується налаштований каталог облич за замовчуванням.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Instructions <String>`

> .Зовнішній вигляд
Параметр Path визначає шлях, за яким виконується пошук.
Для пошуку інших елементів, крім файлів, використовуються параметри -Include, -Exclude, -Recurse, -Depth, -Force.
Якщо вказати параметр -Directory, пошук буде обмежено лише каталогами.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ResponseFormat <String>`

> .SYNOPSIS
Повертає сертифікати, списки скасування сертифікатів та політики сертифікатів із сховища сертифікатів.

.DESCRIPTION
Командлет `Get-Certificate` отримує сертифікати з вказаних сховищ сертифікатів. Він може повертати сертифікати, списки скасування сертифікатів та політики сертифікатів. За замовчуванням командлет отримує всі сертифікати зі сховища My (особистого) поточного користувача. Ви можете вказувати різні сховища сертифікатів, використовуючи параметри `StoreLocation` та `StoreName`.

.PARAMETER StoreLocation
Вказує розташування сховища сертифікатів. Допустимі значення: CurrentUser, LocalMachine. За замовчуванням CurrentUser.

.PARAMETER StoreName
Вказує ім'я сховища сертифікатів. Допустимі значення: My, CA, Root, TrustedPublisher, Disallowed, AuthRoot, TrustedPeople, ClientAuthIssuer, Remote Desktop, SmartCardRoot, TrustedDevices, TrustedManu facturers. За замовчуванням My.

.PARAMETER FilePath
Вказує шлях до файлу сертифіката. Можна використовувати також конвеєр.

.PARAMETER Thumbprint
Вказує відбиток сертифіката.

.PARAMETER Subject
Вказує тему сертифіката.

.PARAMETER DNSName
Вказує DNS-ім'я сертифіката.

.PARAMETER Issuer
Вказує видавця сертифіката.

.PARAMETER EKU
Вказує розширені Атрибути призначення ключа.

.PARAMETER NotAfter
Повертає сертифікати з датою завершення дії пізніше або раніше вказаної дати.

.PARAMETER NotBefore
Повертає сертифікати з датою початку дії пізніше або раніше вказаної дати.

.PARAMETER IncludeChain
Вказує включити ланцюг сертифікатів у результати.

.PARAMETER IncludeRevocationInfo
Вказує включити інформацію про скасування сертифікатів.

.PARAMETER ListAvailable
Вказує отримати всі доступні сертифікати з усіх сховищ.

.EXAMPLE
```powershell
Get-Certificate
```
Цей приклад отримує всі сертифікати зі сховища My поточного користувача.

.EXAMPLE
```powershell
Get-Certificate -StoreLocation LocalMachine -StoreName Root
```
Цей приклад отримує всі сертифікати зі сховища Root локальної машини.

.EXAMPLE
```powershell
Get-Certificate -Thumbprint "0123456789ABCDEF0123456789ABCDEF01234567"
```
Цей приклад отримує один сертифікат за відбитком.

.NOTES
Додаткові відомості:
- Командлет Get-Certificate є частиною модуля PKI (Public Key Infrastructure).
- Для використання деяких параметрів можуть знадобитися права підвищеного рівня.
- Докладніше: https://docs.microsoft.com/powershell/module/pki/get-certificate

.LINK
[Get-Certificate](https://docs.microsoft.com/powershell/module/pki/get-certificate)

.LINK
[Set-Certificate](https://docs.microsoft.com/powershell/module/pki/set-certificate)

.LINK
[Import-Certificate](https://docs.microsoft.com/powershell/module/pki/import-certificate)

.INPUTS
System.String

.OUTPUTS
System.Security.Cryptography.X509Certificates.X509Certificate2

.ROLE
pki

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Double>`

> Температура для випадковості відповіді (0.0-1.0)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `-1` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageDetail <String>`

> Рівень деталізації зображення

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'high'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LLMQueryType <String>`

> Тип запиту LLM

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'Pictures'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Model <String>`

> Ідентифікатор моделі або шаблон для використання в операціях ШІ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiEndpoint <String>`

> URL кінцевої точки API для операцій штучного інтелекту

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ApiKey <String>`

> Ключ API для автентифікованих операцій зі штучним інтелектом

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSupportForJsonSchema <String>`

> Вказує, що LLM не підтримує JSON-схеми

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TimeoutSeconds <Int32>`

> Час очікування в секундах для операцій зі штучним інтелектом

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> Шлях до бази даних для файлів налаштувань

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-IncludeThoughts`

> Командлет `Export-NpsConfiguration` експортує конфігурацію сервера політики мережі (NPS) у файл .xml.

## Детальний опис

Командлет `Export-NpsConfiguration` експортує всю конфігурацію сервера NPS у файл у форматі .xml. Потім цю конфігурацію можна імпортувати на інший сервер NPS за допомогою командлета `Import-NpsConfiguration`. Цей командлет еквівалентний команді з консолі NPS, яка використовується для експорту конфігурації NPS.

Конфігурація експортується у вигляді рядка, а не у вигляді об'єкта XML. Тому ви не можете передати вихідні дані цього командлета в командлет `Import-NpsConfiguration`. Замість цього вкажіть файл .xml безпосередньо як вхідні дані для `Import-NpsConfiguration`.

## Приклад 1

```
PS C:\> Export-NpsConfiguration -Path 'C:\NpsConfig.xml'
```

Ця команда експортує конфігурацію NPS у файл з іменем C:\NpsConfig.xml.

## Приклад 2

```
PS C:\> Export-NpsConfiguration -Path 'C:\NpsConfig.xml' -Force
```

Ця команда експортує конфігурацію NPS у файл C:\NpsConfig.xml. Якщо файл вже існує, він буде перезаписаний.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SessionOnly`

> Використовуйте альтернативні налаштування, збережені в сеансі, для налаштування AI вподобань

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ClearSession`

> Очистити альтернативні налаштування, збережені в сеансі, для уподобань ШІ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Зберігати параметри лише в постійних налаштуваннях, не впливаючи на сеанс

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Functions <String[]>`

> Визначає функції для використання в операції штучного інтелекту.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ExposedCmdLets <String[]>`

> Визначає оприлюднені командлети для операції AI.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoConfirmationToolFunctionNames <String[]>`

> Визначає імена функцій інструментів, які не потребують підтвердження.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `NoConfirmationFor` |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Якщо вказано, вимикає використання контексту.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxToolcallBackLength <Int32>`

> Максимальна довжина зворотного виклику для викликів інструментів.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PassThru`

> PassThru для повернення структурованих об'єктів замість виведення в консоль

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AutoUpdateFaces`

> Виявляє зміни в каталозі облич та повторно реєструє обличчя за потреби

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Update-AllImageMetaData.md)
