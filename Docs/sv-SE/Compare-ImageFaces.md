# Compare-ImageFaces

> **Module:** GenXdev.AI.DeepStack | **Type:** Function | **Aliases:** `comparefaces`

## Synopsis

> Jämför ansikten i två olika bilder och returnerar deras likhet med hjälp av DeepStack.

## Description

Denna funktion jämför ansikten mellan två bilder för att avgöra likhet. Den använder ett lokalt DeepStack-ansiktsmatchnings-API som körs på en konfigurerbar port och returnerar en likhetspoäng mellan 0.0 och 1.0. Detta används vanligtvis för att matcha identitetshandlingar med bilder på en person eller för att verifiera om två foton visar samma person.

## Syntax

```powershell
Compare-ImageFaces -ImagePath1 <String> -ImagePath2 <String> [[-ContainerName] <String>] [[-VolumeName] <String>] [[-ServicePort] <Int32>] [[-HealthCheckTimeout] <Int32>] [[-HealthCheckInterval] <Int32>] [[-ImageName] <String>] [-Force] [-NoDockerInitialize] [-ShowWindow] [-UseGPU] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImagePath1` | String | ✅ | — | 0 | — | Den lokala sökvägen till den första bildfilen som ska jämföras |
| `-ImagePath2` | String | ✅ | — | 1 | — | Den lokala sökvägen till den andra bildfilen att jämföra |
| `-ContainerName` | String | — | — | 2 | `'deepstack_face_recognition'` | Namnet för Docker-behållaren |
| `-VolumeName` | String | — | — | 3 | `'deepstack_face_data'` | Namnet för Docker-volymen för beständig lagring |
| `-ServicePort` | Int32 | — | — | 4 | `5000` | Portnumret för DeepStack-tjänsten |
| `-HealthCheckTimeout` | Int32 | — | — | 5 | `60` | Maximal tid i sekunder att vänta på tjänstens hälsokontroll |
| `-HealthCheckInterval` | Int32 | — | — | 6 | `3` | Intervall i sekunder mellan hälsoökningsförsök |
| `-ImageName` | String | — | — | 7 | — | Anpassat Docker-avbildningsnamn att använda |
| `-NoDockerInitialize` | SwitchParameter | — | — | Named | — | Hoppa över Docker-initiering (används när den redan anropats av överordnad funktion) |
| `-Force` | SwitchParameter | — | — | Named | — | Tvinga återuppbyggnad av Docker-container och ta bort befintliga data |
| `-UseGPU` | SwitchParameter | — | — | Named | — | Använd GPU-accelererad version (kräver NVIDIA GPU) |
| `-ShowWindow` | SwitchParameter | — | — | Named | — | Visa Docker Desktop-fönstret under initiering |

## Examples

### Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `                    -ImagePath2 "C:\Users\YourName\photo2.jpg"

```powershell
Compare-ImageFaces -ImagePath1 "C:\Users\YourName\photo1.jpg" `
                   -ImagePath2 "C:\Users\YourName\photo2.jpg"
```

Jämför ansikten mellan två bilder med standardinställningar.

### comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU

```powershell
comparefaces "C:\docs\id_photo.jpg" "C:\photos\person.jpg" -UseGPU
```

Jämför ansikten med GPU-acceleration för identitetsverifiering med alias och positionsparametrar.

## Parameter Details

### `-ImagePath1 <String>`

> Den lokala sökvägen till den första bildfilen som ska jämföras

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ImagePath2 <String>`

> Den lokala sökvägen till den andra bildfilen att jämföra

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ContainerName <String>`

> Namnet för Docker-behållaren

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

> Namnet för Docker-volymen för beständig lagring

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

> Portnumret för DeepStack-tjänsten

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

> Maximal tid i sekunder att vänta på tjänstens hälsokontroll

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

> Intervall i sekunder mellan hälsoökningsförsök

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

> Anpassat Docker-avbildningsnamn att använda

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

> Hoppa över Docker-initiering (används när den redan anropats av överordnad funktion)

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

> Tvinga återuppbyggnad av Docker-container och ta bort befintliga data

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

> Använd GPU-accelererad version (kräver NVIDIA GPU)

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

> Visa Docker Desktop-fönstret under initiering

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `sw` |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `Collections.Hashtable`

## Related Links

- [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImageDetectedFaces.md)
- [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImageDetectedObjects.md)
- [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-ImageDetectedScenes.md)
- [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Get-RegisteredFaces.md)
- [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Invoke-ImageEnhancement.md)
- [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Register-AllFaces.md)
- [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Register-Face.md)
- [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Unregister-AllFaces.md)
- [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/Unregister-Face.md)
