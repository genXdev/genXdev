# Register-AllFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `UpdateFaces`

## Synopsis

> Оновлює всі профілі розпізнавання облич з файлів зображень у каталозі faces.

## Syntax

```powershell
Register-AllFaces [[-FacesDirectory] <String>] [[-MaxRetries] <Int32>] [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-ClearSession] [-Force] [-ForceRebuild] [-NoDockerInitialize] [-PreferencesDatabasePath <String>] [-RenameFailed] [-SessionOnly] [-ShowWindow] [-SkipSession] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FacesDirectory` | String | — | — | 0 | — | Каталог, що містить зображення облич, організовані за папками осіб. Якщо не вказано, використовується налаштований каталог облич за замовчуванням. |
| `-MaxRetries` | Int32 | — | — | 1 | `3` | Максимальна кількість повторних спроб для невдалих реєстрацій |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Назва для контейнера Docker |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Назва тому Docker для постійного сховища |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Номер порту для служби DeepStack |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Максимальний час в секундах для очікування перевірки працездатності служби |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Інтервал у секундах між спробами перевірки працездатності |
| `-ImageName` | String | — | — | 7 | — | Власна назва образу Docker для використання |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Пропустити ініціалізацію Docker Desktop (використовується, коли вже викликано батьківською функцією) |
| `-Force` | SwitchParameter | — | — | Named | — | Примусова перереєстрація всіх облич |
| `-RenameFailed` | SwitchParameter | — | — | Named | — | Перейменувати файли зображень, які не вдалося обробити через відсутність обличчя |
| `-ForceRebuild` | SwitchParameter | — | — | Named | — | Примусове перебудування контейнера Docker та видалення існуючих даних |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Використовувати версію з прискоренням GPU (потрібен NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Показати вікно Docker Desktop під час ініціалізації |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Якщо вказано, використовувати лише сеанс (не зберігати зміни до бази даних налаштувань). |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Якщо вказано, очистити поточні налаштування сеансу перед використанням. |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Шлях до бази даних налаштувань для використання кореневого шляху відомих облич. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Якщо вказано, пропустити логіку сеансу під час отримання кореневого шляху відомих облич. |

## Examples

### Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `     -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `     -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3

```powershell
Register-AllFaces -FacesDirectory "b:\media\faces\" -MaxRetries 3 `
    -ContainerName "deepstack_face_recognition" -VolumeName "deepstack_face_data" `
    -ServicePort 5000 -HealthCheckTimeout 60 -HealthCheckInterval 3
```

### Register-AllFaces Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"

```powershell
Register-AllFaces
Uses the configured faces directory from Set-AIKnownFacesRootpath or defaults to "b:\media\faces\"
```

### updatefaces -RenameFailed ##############################################################################

```powershell
updatefaces -RenameFailed
##############################################################################
```

## Parameter Details

### `-FacesDirectory <String>`

> Каталог, що містить зображення облич, організовані за папками осіб. Якщо не вказано, використовується налаштований каталог облич за замовчуванням.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> Максимальна кількість повторних спроб для невдалих реєстрацій

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `3` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Назва для контейнера Docker

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
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
| **Position?** | 3 |
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
| **Position?** | 4 |
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
| **Position?** | 5 |
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
| **Position?** | 6 |
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
| **Position?** | 7 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoDockerInitialize`

> Пропустити ініціалізацію Docker Desktop (використовується, коли вже викликано батьківською функцією)

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

> Примусова перереєстрація всіх облич

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RenameFailed`

> Перейменувати файли зображень, які не вдалося обробити через відсутність обличчя

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ForceRebuild`

> Примусове перебудування контейнера Docker та видалення існуючих даних

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
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
### `-SessionOnly`

> Якщо вказано, використовувати лише сеанс (не зберігати зміни до бази даних налаштувань).

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

> Якщо вказано, очистити поточні налаштування сеансу перед використанням.

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

> Шлях до бази даних налаштувань для використання кореневого шляху відомих облич.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-SkipSession`

> Якщо вказано, пропустити логіку сеансу під час отримання кореневого шляху відомих облич.

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

- [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Compare-ImageFaces.md)
- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Invoke-ImageEnhancement.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/Unregister-Face.md)
