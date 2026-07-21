# Invoke-ImageScenesUpdate

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `imagescenedetection`

## Synopsis

> Оновлює метадані класифікації сцен для файлів зображень у вказаному каталозі.

## Description

Ця функція обробляє зображення у вказаному каталозі для класифікації сцен за допомогою штучного інтелекту. Вона створює файли метаданих JSON, що містять класифікації сцен, показники впевненості та мітки. Функція підтримує пакетну обробку з налаштовуваними порогами впевненості та може за бажанням пропускати наявні файли метаданих або повторювати раніше невдалі класифікації.

## Syntax

```powershell
Invoke-ImageScenesUpdate [[-ImageDirectories] <String[]>] [-ApiKey <String>] [-AutoUpdateFaces] [-ClearSession] [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-FacesDirectory <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-Language <String>] [-Model <String>] [-NoDockerInitialize] [-NoSupportForJsonSchema <String>] [-OnlyNew] [-PassThru] [-PreferencesDatabasePath <String>] [-Recurse] [-RetryFailed] [-ServicePort <Int32>] [-SessionOnly] [-ShowWindow] [-SkipSession] [-TimeoutSecond <Int32>] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@('.\')` | Шляхи до директорій, що містять зображення для обробки |
| `-Recurse` | SwitchParameter | — | — | Named | — | Обробляє зображення у вказаному каталозі та всіх підкаталогах |
| `-OnlyNew` | SwitchParameter | — | — | Named | — | Обробляти лише зображення, які ще не мають файлів метаданих облич |
| `-RetryFailed` | SwitchParameter | — | — | Named | — | Повторна спроба оновити невдалі ключові слова зображень |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Назва для контейнера Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Назва тому Docker для постійного сховища |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Номер порту для служби DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Максимальний час в секундах для очікування перевірки працездатності служби |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Інтервал у секундах між спробами перевірки працездатності |
| `-ImageName` | String | — | — | Named | — | Власна назва образу Docker для використання |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.7` | Мінімальний поріг впевненості (0.0-1.0) для виявлення об'єктів |
| `-Language` | String | — | — | Named | — | Мова для згенерованих описів та ключових слів |
| `-Model` | String | — | ✅ (ByValue) | Named | — | Ім'я або частковий шлях моделі для ініціалізації 🌐 *Supports wildcards* |
| `-ApiKey` | String | — | — | Named | `$null` | Ключ API для використання в запиті |
| `-NoSupportForJsonSchema` | String | — | — | Named | — | Вказує, що LLM не підтримує JSON-схеми |
| `-TimeoutSecond` | Int32 | — | — | Named | — | Час очікування запиту в секундах, за замовчуванням 24 години |
| `-FacesDirectory` | String | — | — | Named | — | Каталог, що містить зображення облич, організовані за папками осіб. Якщо не вказано, використовується налаштований каталог облич за замовчуванням. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних для файлів налаштувань |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустити ініціалізацію Docker (використовується, коли вже викликано батьківською функцією) |
| `-Force` | SwitchParameter | — | — | Named | — | Примусове перебудування контейнера Docker та видалення існуючих даних |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Використовувати версію з прискоренням GPU (потрібен NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показувати вікно Docker під час ініціалізації |
| `-PassThru` | SwitchParameter | — | — | Named | — | PassThru для повернення структурованих об'єктів замість виведення в консоль |
| `-AutoUpdateFaces` | SwitchParameter | — | — | Named | — | Виявляє зміни в каталозі облич та повторно реєструє обличчя за потреби |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Використовуйте альтернативні налаштування, збережені в сесії, для налаштувань ШІ, таких як мова, колекції зображень тощо |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Очистити альтернативні налаштування, збережені в сесії, для вподобань ШІ, таких як мова, колекції зображень тощо |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Не використовуйте альтернативні налаштування, збережені в сеансі, для параметрів ШІ, таких як мова, колекції зображень тощо |

## Examples

### Invoke-ImageScenesUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse

```powershell
Invoke-ImageScenesUpdate -ImageDirectories @("C:\Photos", "D:\Pictures") -Recurse
```

Обробляє всі зображення в C:\Photos та D:\Pictures та підкаталогах для класифікації сцен.

### scenerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew

```powershell
scenerecognition @("C:\Photos", "C:\Archive") -RetryFailed -OnlyNew
```

Використовує псевдонім для повторних спроб невдалих класифікацій та обробки лише нових зображень у кількох каталогах.

### Invoke-ImageScenesUpdate -ImageDirectories ".\MyImages" -Force -UseGPU

```powershell
Invoke-ImageScenesUpdate -ImageDirectories ".\MyImages" -Force -UseGPU
```

Примусово перебудовує контейнер і використовує прискорення GPU для швидшої обробки.

### Invoke-ImageScenesUpdate -ImageDirectories "C:\Photos" -ConfidenceThreshold 0.6 -Recurse

```powershell
Invoke-ImageScenesUpdate -ImageDirectories "C:\Photos" -ConfidenceThreshold 0.6 -Recurse
```

Рекурсивно обробляє всі зображення та зберігає лише класифікації сцен із впевненістю >= 60%.

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
### `-ContainerName <String>`

> Назва для контейнера Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'deepstack_face_recognition'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-VolumeName <String>`

> Назва тому Docker для постійного сховища

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `'deepstack_face_data'` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ServicePort <Int32>`

> Номер порту для служби DeepStack

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `5000` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckTimeout <Int32>`

> Максимальний час в секундах для очікування перевірки працездатності служби

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `60` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-HealthCheckInterval <Int32>`

> Інтервал у секундах між спробами перевірки працездатності

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImageName <String>`

> Власна назва образу Docker для використання

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConfidenceThreshold <Double>`

> Мінімальний поріг впевненості (0.0-1.0) для виявлення об'єктів

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.7` |
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
### `-Model <String>`

> Ім'я або частковий шлях моделі для ініціалізації

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | Yes |

<hr/>
### `-ApiKey <String>`

> Ключ API для використання в запиті

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
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
### `-TimeoutSecond <Int32>`

> Час очікування запиту в секундах, за замовчуванням 24 години

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
### `-PreferencesDatabasePath <String>`

> Шлях до бази даних для файлів налаштувань

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Пропустити ініціалізацію Docker (використовується, коли вже викликано батьківською функцією)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Force`

> Примусове перебудування контейнера Docker та видалення існуючих даних

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `ForceRebuild` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseGPU`

> Використовувати версію з прискоренням GPU (потрібен NVIDIA GPU)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowWindow`

> Показувати вікно Docker під час ініціалізації

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
### `-SessionOnly`

> Використовуйте альтернативні налаштування, збережені в сесії, для налаштувань ШІ, таких як мова, колекції зображень тощо

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

> Очистити альтернативні налаштування, збережені в сесії, для вподобань ШІ, таких як мова, колекції зображень тощо

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

> Не використовуйте альтернативні налаштування, збережені в сеансі, для параметрів ШІ, таких як мова, колекції зображень тощо

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
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
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageObjectsUpdate.md)
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
