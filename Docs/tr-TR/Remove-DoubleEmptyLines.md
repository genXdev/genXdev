# Remove-DoubleEmptyLines

> **Module:** GenXdev.Coding.Templating | **Type:** Function | **Aliases:** —

## Synopsis

> Bir kod dizesinden ardışık çift boş satırları kaldırır, isteğe bağlı olarak çıktıyı yeniden biçimlendirir.

## Description

Ardışık boş satırları tek bir boş satıra dönüştürerek kaynak kodunu veya metni temizler. Bu, okunabilirliği artırır ve yaygın kod biçimlendirme kurallarına uyar. -Reformat anahtarı belirtildiğinde, kod yapısını normalleştirmek için ek biçimlendirme kuralları uygulanır.

## Syntax

```powershell
Remove-DoubleEmptyLines -code <String> [-Reformat] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-code` | String | ✅ | — | 0 | — | PowerShell cmdlet yardım metinlerinden oluşan çevrilecek içeriği talimatlarla karıştırmayın!
Görsel veya başka bir şey eklemeyin. İçeriği mümkün olduğunca doğrudan şu dile çevirin: Türkiye Türkçesi. |
| `-Reformat` | SwitchParameter | — | — | Named | — | .DESCRIPTION
Read-Host cmdlet'i, bir konsoldan girdi satırını okur. Metin içeren bir dize (string) döndürmek için kullanabilirsiniz. Varsayılan olarak, Read-Host cmdlet'i bir dize döndürür, ancak '-AsSecureString' parametresini kullanarak güvenli bir dize de döndürebilirsiniz.

PowerShell uzak bir bilgisayardan komut çalıştırmak için Invoke-Command veya Enter-PSSession cmdlet'lerini kullandığınızda, uzak bilgisayardaki bir kullanıcıdan girdi almak Read-Host cmdlet'i çalıştırıldığında istenir.

Read-Host komutuna birden çok girdi sağlayamazsınız. Örneğin, Read-Host "Lütfen birden çok değer girin: x,y,z" komutunu çalıştırıp ardından virgülle ayrılmış birden çok değer yazarsanız, tüm girdi tek bir dize olarak ele alınır. Girdinizde virgül veya başka bir sınırlayıcı kullanarak kendi listenizi oluşturabilir, ardından dizeyi bölmek için bir komut kullanabilirsiniz. |

## Examples

### $cleanCode = $sourceCode | Remove-DoubleEmptyLines

```powershell
$cleanCode = $sourceCode | Remove-DoubleEmptyLines
```

Fonksiyon aracılığıyla kaynak kodu ardışık boş satırları kaldırmak için geçirir.

### Remove-DoubleEmptyLines -code $sourceCode -Reformat

```powershell
Remove-DoubleEmptyLines -code $sourceCode -Reformat
```

Çift boş satırları kaldırır ve ek biçimlendirme uygular.

## Parameter Details

### `-code <String>`

> PowerShell cmdlet yardım metinlerinden oluşan çevrilecek içeriği talimatlarla karıştırmayın!
Görsel veya başka bir şey eklemeyin. İçeriği mümkün olduğunca doğrudan şu dile çevirin: Türkiye Türkçesi.

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Reformat`

> .DESCRIPTION
Read-Host cmdlet'i, bir konsoldan girdi satırını okur. Metin içeren bir dize (string) döndürmek için kullanabilirsiniz. Varsayılan olarak, Read-Host cmdlet'i bir dize döndürür, ancak '-AsSecureString' parametresini kullanarak güvenli bir dize de döndürebilirsiniz.

PowerShell uzak bir bilgisayardan komut çalıştırmak için Invoke-Command veya Enter-PSSession cmdlet'lerini kullandığınızda, uzak bilgisayardaki bir kullanıcıdan girdi almak Read-Host cmdlet'i çalıştırıldığında istenir.

Read-Host komutuna birden çok girdi sağlayamazsınız. Örneğin, Read-Host "Lütfen birden çok değer girin: x,y,z" komutunu çalıştırıp ardından virgülle ayrılmış birden çok değer yazarsanız, tüm girdi tek bir dize olarak ele alınır. Girdinizde virgül veya başka bir sınırlayıcı kullanarak kendi listenizi oluşturabilir, ardından dizeyi bölmek için bir komut kullanabilirsiniz.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Outputs

- `String`

## Related Links

- [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/Add-ArrayTemplate.md)
