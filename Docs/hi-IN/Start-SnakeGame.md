# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> कंसोल में एक सरल स्नेक गेम शुरू करता है।

## Description

यह फ़ंक्शन PowerShell कंसोल के भीतर एक बुनियादी स्नेक गेम को आरंभ और चलाता है। खिलाड़ी तीर कुंजियों या WASD कुंजियों का उपयोग करके साँप को नियंत्रित करता है, जिसका लक्ष्य भोजन खाना और लंबा होना है, जबकि दीवारों या स्वयं से टकराने से बचना है। गेम में उपलब्ध स्थान और साँप की लंबाई के आधार पर गतिशील गति समायोजन की सुविधा है। डिफ़ॉल्ट रूप से, शुरू करने से पहले कंसोल साफ़ कर दिया जाता है।

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | साँप की प्रारंभिक लंबाई (डिफ़ॉल्ट: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | चालों के बीच मिलीसेकंड में खेल की गति (डिफ़ॉल्ट: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | खेल शुरू करने से पहले कंसोल को साफ़ करने से रोकता है |
| `-WithMaze` | SwitchParameter | — | — | Named | — | एएससीआईआई ड्राइंग वर्णों का उपयोग करके दीवारों और रेखाओं के लिए प्लेफील्ड के भीतर एक भूलभुलैया बनाता है, जैसा कि बॉर्डर के समान है। |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | साँप के सिर से भोजन तक का सबसे छोटा रास्ता छोटे हरे केंद्रित बिंदुओं का उपयोग करके प्रदर्शित करता है |
| `-MazeWidth` | Int32 | — | — | Named | `2` | भूलभुलैया के लिए न्यूनतम मार्ग चौड़ाई (1-10, डिफ़ॉल्ट: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

डिफ़ॉल्ट सेटिंग्स (5 खंड, 300ms गति) के साथ स्नेक गेम प्रारंभ करता है।

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

कंसोल साफ़ किए बिना स्नेक गेम शुरू करता है, छोटे साँप और तेज़ गति के साथ।

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

लंबे प्रारंभिक साँप के साथ उपनाम का उपयोग करके खेल शुरू करता है।

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

सर्प गेम को खेल के मैदान में एक भूलभुलैया के साथ शुरू करता है।

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

मेज़ के साथ स्नेक गेम शुरू करता है और साँप से भोजन तक का सबसे छोटा रास्ता हरे बिंदुओं के साथ दिखाता है।

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

स्नेक गेम को एक ऐसे मेज़ से शुरू करता है जिसमें आसान नेविगेशन के लिए चौड़े रास्ते (न्यूनतम 5 स्थान) होते हैं।

## Parameter Details

### `-InitialLength <Int32>`

> साँप की प्रारंभिक लंबाई (डिफ़ॉल्ट: 5)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Speed <Int32>`

> चालों के बीच मिलीसेकंड में खेल की गति (डिफ़ॉल्ट: 300)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | `300` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoClear`

> खेल शुरू करने से पहले कंसोल को साफ़ करने से रोकता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithMaze`

> एएससीआईआई ड्राइंग वर्णों का उपयोग करके दीवारों और रेखाओं के लिए प्लेफील्ड के भीतर एक भूलभुलैया बनाता है, जैसा कि बॉर्डर के समान है।

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ShowRoute`

> साँप के सिर से भोजन तक का सबसे छोटा रास्ता छोटे हरे केंद्रित बिंदुओं का उपयोग करके प्रदर्शित करता है

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MazeWidth <Int32>`

> भूलभुलैया के लिए न्यूनतम मार्ग चौड़ाई (1-10, डिफ़ॉल्ट: 2)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `2` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/UtcNow.md)
