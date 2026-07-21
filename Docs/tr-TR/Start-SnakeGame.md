# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Konsolda basit bir Snake oyunu başlatır.

## Description

Bu işlev, PowerShell konsolu içinde temel bir Snake oyununu başlatır ve çalıştırır. Oyuncu, yılanı ok tuşları veya WASD tuşlarını kullanarak kontrol eder, yiyecek yiyerek büyümeyi ve duvarlara veya kendine çarpmaktan kaçınmayı hedefler. Oyun, mevcut alan ve yılan uzunluğuna bağlı olarak dinamik hız ayarı içerir. Varsayılan olarak, başlamadan önce konsol temizlenir.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Yılanın başlangıç uzunluğu (varsayılan: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Hamleler arasındaki oyun hızı milisaniye cinsinden (varsayılan: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Oyun başlamadan önce konsolun temizlenmesini engeller |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Oyun alanı içinde, kenarlığa benzer şekilde duvarlar ve çizgiler için ASCII çizim karakterleri kullanarak bir labirent çizer |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Yılanın başından yiyeceğe en kısa yolu, küçük yeşil merkezli noktalar kullanarak görüntüler |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Labirent için minimum yol genişliği (1-10, varsayılan: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Yılan oyununu varsayılan ayarlarla başlatır (5 segment, 300 milisaniye hız).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Konsolu temizlemeden, daha kısa yılan ve daha hızlı hız ile Snake oyununu başlatır.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Oyunu, daha uzun bir başlangıç yılanı ile diğer adı kullanarak başlatır.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Oyun alanında bir labirentle Yılan oyununu başlatır.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Yılan oyununu bir labirentle başlatır ve yılandan yiyeceğe en kısa yolu yeşil noktalarla gösterir.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Daha kolay gezinmek için daha geniş geçitlere (minimum 5 boşluk) sahip bir labirent ile Yılan oyununu başlatır.

## Parameter Details

### `-InitialLength <Int32>`

> Yılanın başlangıç uzunluğu (varsayılan: 5)

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

> Hamleler arasındaki oyun hızı milisaniye cinsinden (varsayılan: 300)

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

> Oyun başlamadan önce konsolun temizlenmesini engeller

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

> Oyun alanı içinde, kenarlığa benzer şekilde duvarlar ve çizgiler için ASCII çizim karakterleri kullanarak bir labirent çizer

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

> Yılanın başından yiyeceğe en kısa yolu, küçük yeşil merkezli noktalar kullanarak görüntüler

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

> Labirent için minimum yol genişliği (1-10, varsayılan: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/UtcNow.md)
