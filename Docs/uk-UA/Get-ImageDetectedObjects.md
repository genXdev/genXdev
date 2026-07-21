# Get-ImageDetectedObjects

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** —

## Synopsis

> Виявляє та класифікує об’єкти на завантаженому зображенні за допомогою DeepStack.

## Description

Ця функція аналізує файл зображення для виявлення та класифікації до 80 різних видів об'єктів. Вона використовує локальний DeepStack API виявлення об'єктів, що працює на налаштовуваному порту, і повертає класифікації об'єктів з координатами їх обмежувальних рамок та рівнями впевненості. Функція підтримує прискорення GPU, власні пороги впевненості та керування контейнерами Docker.

## Syntax

```powershell
Get-ImageDetectedObjects -ImagePath <String> [-ConfidenceThreshold <Double>] [-ContainerName <String>] [-Force] [-HealthCheckInterval <Int32>] [-HealthCheckTimeout <Int32>] [-ImageName <String>] [-NoDockerInitialize] [-ServicePort <Int32>] [-ShowWindow] [-UseGPU] [-VolumeName <String>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath` | String | ✅ | ✅ (ByValue, ByPropertyName) | 0 | — | Локальний шлях до файлу зображення для аналізу |
| `-ConfidenceThreshold` | Double | — | — | Named | `0.5` | Мінімальний поріг впевненості (0.0-1.0). За замовчуванням: 0.5 |
| `-ContainerName` | String | — | — | Named | `'deepstack_face_recognition'` | Назва для контейнера Docker |
| `-VolumeName` | String | — | — | Named | `'deepstack_face_data'` | Назва тому Docker для постійного сховища |
| `-ServicePort` | Int32 | — | — | Named | `5000` | Номер порту для служби DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | Named | `60` | Максимальний час в секундах для очікування перевірки працездатності служби |
| `-HealthCheckInterval` | Int32 | — | — | Named | `3` | Інтервал у секундах між спробами перевірки працездатності |
| `-ImageName` | String | — | — | Named | — | Власна назва образу Docker для використання |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустити ініціалізацію Docker (використовується, коли вже викликано батьківською функцією) |
| `-Force` | SwitchParameter | — | — | Named | — | Примусове перебудування контейнера Docker та видалення існуючих даних |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Використовувати версію з прискоренням GPU (потрібен NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показати вікно Docker Desktop під час ініціалізації |

## Examples

### Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `                          -ConfidenceThreshold 0.5 `                          -ServicePort 5000

```powershell
Get-ImageDetectedObjects -ImagePath "C:\Users\YourName\test.jpg" `
                         -ConfidenceThreshold 0.5 `
                         -ServicePort 5000
```

Виявляє об'єкти на вказаному зображенні з повними назвами параметрів.

### Get-ImageDetectedObjects "C:\photos\street.jpg"

```powershell
Get-ImageDetectedObjects "C:\photos\street.jpg"
```

Виявляє об'єкти за допомогою позиційного параметра та налаштувань за замовчуванням.

## Parameter Details

### `-ImagePath <String>`

> Локальний шлях до файлу зображення для аналізу

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue, ByPropertyName) |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ConfidenceThreshold <Double>`

> Мінімальний поріг впевненості (0.0-1.0). За замовчуванням: 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
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

> Показати вікно Docker Desktop під час ініціалізації

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Unregister-Face.md)
