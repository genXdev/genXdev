# Start-SnakeGame

> **Module:** GenXdev.Console | **Type:** Function | **Aliases:** `snake`

## Synopsis

> Memulai permainan Snake sederhana di konsol.

## Description

Fungsi ini menginisialisasi dan menjalankan permainan Snake dasar di dalam konsol PowerShell. Pemain mengendalikan ular menggunakan tombol panah atau tombol WASD, bertujuan untuk memakan makanan dan tumbuh lebih panjang sambil menghindari tabrakan dengan dinding atau dirinya sendiri. Permainan ini menampilkan penyesuaian kecepatan dinamis berdasarkan ruang yang tersedia dan panjang ular. Secara default, konsol dibersihkan sebelum memulai.

## Syntax

```powershell
Start-SnakeGame [[-InitialLength] <Int32>] [[-Speed] <Int32>] [-MazeWidth <Int32>] [-NoClear] [-ShowRoute] [-WithMaze] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-InitialLength` | Int32 | — | — | 0 | `5` | Panjang awal ular (default: 5) |
| `-Speed` | Int32 | — | — | 1 | `300` | Kecepatan permainan dalam milidetik antar langkah (default: 300) |
| `-NoClear` | SwitchParameter | — | — | Named | — | Mencegah pembersihan konsol sebelum memulai permainan |
| `-WithMaze` | SwitchParameter | — | — | Named | — | Menggambar labirin di dalam area bermain menggunakan karakter gambar ASCII untuk dinding dan garis, mirip dengan batas |
| `-ShowRoute` | SwitchParameter | — | — | Named | — | Menampilkan jalur terpendek dari kepala ular ke makanan menggunakan titik hijau kecil di tengah |
| `-MazeWidth` | Int32 | — | — | Named | `2` | Lebar jalur minimum untuk labirin (1-10, bawaan: 2) |

## Examples

### Start-SnakeGame

```powershell
Start-SnakeGame
```

Memulai permainan Snake dengan pengaturan default (5 segmen, kecepatan 300ms).

### Start-SnakeGame -NoClear -InitialLength 3 -Speed 200

```powershell
Start-SnakeGame -NoClear -InitialLength 3 -Speed 200
```

Memulai permainan Snake tanpa membersihkan konsol, dengan ular yang lebih pendek dan kecepatan yang lebih cepat.

### snake -InitialLength 10

```powershell
snake -InitialLength 10
```

Memulai permainan menggunakan alias dengan ular awal yang lebih panjang.

### Start-SnakeGame -WithMaze

```powershell
Start-SnakeGame -WithMaze
```

Memulai game Snake dengan labirin di area bermain.

### Start-SnakeGame -WithMaze -ShowRoute

```powershell
Start-SnakeGame -WithMaze -ShowRoute
```

Memulai permainan Snake dengan labirin dan menampilkan jalur terpendek dari
ular ke makanan dengan titik hijau.

### Start-SnakeGame -WithMaze -MazeWidth 5

```powershell
Start-SnakeGame -WithMaze -MazeWidth 5
```

Memulai permainan Snake dengan labirin yang memiliki jalur lebih lebar (minimal 5 spasi) untuk navigasi yang lebih mudah.

## Parameter Details

### `-InitialLength <Int32>`

> Panjang awal ular (default: 5)

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

> Kecepatan permainan dalam milidetik antar langkah (default: 300)

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

> Mencegah pembersihan konsol sebelum memulai permainan

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

> Menggambar labirin di dalam area bermain menggunakan karakter gambar ASCII untuk dinding dan garis, mirip dengan batas

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

> Menampilkan jalur terpendek dari kepala ular ke makanan menggunakan titik hijau kecil di tengah

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

> Lebar jalur minimum untuk labirin (1-10, bawaan: 2)

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

- [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-IsSpeaking.md)
- [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-MicrosoftShellTab.md)
- [Now](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Now.md)
- [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayDate.md)
- [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayTime.md)
- [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/secondscreen.md)
- [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/sidebyside.md)
- [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-TextToSpeech.md)
- [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Stop-TextToSpeech.md)
- [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/UtcNow.md)
