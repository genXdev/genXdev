# Write-JsonFileAtomic

> **Module:** GenXdev.FileSystem | **Type:** Cmdlet | **Aliases:** —

## Synopsis

> 以原子方式将对象作为 JSON 写入文件以防止损坏。

## Description

* 原子写入：使用临时文件+重命名策略，确保在进程中断时目标文件不会处于损坏状态。
* 重试逻辑：最多重试 MaxRetries 次，每次尝试之间延迟 RetryDelayMs 毫秒。
* 对象支持：接受任何对象，不仅限于哈希表。通过 System.Text.Json 进行序列化，对于无法原生序列化的复杂 .NET 类型，回退到 ConvertTo-Json。
* 防抖支持：当 DebounceMs > 0 时，对同一文件的快速连续写入会被合并——只有在文件未被写入超过 DebounceMs 毫秒后，才会写入最后一个有效负载。
* 目录创建：如果父目录不存在，则自动创建。

## Syntax

```powershell
Write-JsonFileAtomic -FilePath <String> [[-Data] <Object>] [-AsArray] [-Compress] [-DebounceMs <Int32>] [-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>] [-EnumsAsStrings] [-MaxRetries <Int32>] [-RetryDelayMs <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-FilePath` | String | ✅ | — | 0 | — | 要写入的文件的路径。 |
| `-Data` | Object | — | — | 1 | — | 将要序列化为 JSON 并写入文件的对象。 |
| `-MaxRetries` | Int32 | — | — | Named | `0` | 原子写入操作的最大重试次数。默认为4。 |
| `-RetryDelayMs` | Int32 | — | — | Named | `0` | 重试尝试之间的延迟时间（毫秒）。默认值为200。 |
| `-DebounceMs` | Int32 | — | — | Named | `0` | 如果大于0，则对写入此文件进行去抖。默认值为0（禁用）。 |
| `-Depth` | Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]] | — | — | Named | — | JSON 序列化的最大深度。默认值为 30。 |
| `-Compress` | SwitchParameter | — | — | Named | `False` | .EXAMPLE
    Get-Service -Name "win*" | Where-Object {$_.Status -eq "Running"}

This command gets all services with names starting with "win" and then passes them to Where-Object to filter only those with a status of "Running".

The syntax of the Where-Object cmdlet is:
    Where-Object {property operator value}

Where:
- property is the property of the object to compare.
- operator is the comparison operator (e.g., -eq, -lt, -gt, -like).
- value is the value to compare against.

For more information, see the about_Comparison_Operators help topic. |
| `-AsArray` | SwitchParameter | — | — | Named | `False` | .EXAMPLE
    Get-Service -Name "win*" | Where-Object {$_.Status -eq "Running"}

This command gets all services with names starting with "win" and then passes them to Where-Object to filter only those with a status of "Running".

The syntax of the Where-Object cmdlet is:
    Where-Object {property operator value}

Where:
- property is the property of the object to compare.
- operator is the comparison operator (e.g., -eq, -lt, -gt, -like).
- value is the value to compare against.

For more information, see the about_Comparison_Operators help topic. |
| `-EnumsAsStrings` | SwitchParameter | — | — | Named | `False` | 提供一种替代的序列化选项，将所有枚举转换为其字符串表示形式。 |

## Examples

### Example 1

```powershell
$data = @{ Name = "test"; Value = 42 }
Write-JsonFileAtomic -FilePath "config.json" -Data $data
```

将哈希表作为缩进 JSON 原子性地写入 config.json。

### Example 2

```powershell
Get-Process | Select-Object -First 5 |
    Write-JsonFileAtomic -FilePath "processes.json" -Compress
```

将进程对象以原子方式写入压缩JSON。

## Parameter Details

### `-FilePath <String>`

> 要写入的文件的路径。

| Property | Value |
|:---|:---|
| **Required?** | Yes |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Data <Object>`

> 将要序列化为 JSON 并写入文件的对象。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxRetries <Int32>`

> 原子写入操作的最大重试次数。默认为4。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-RetryDelayMs <Int32>`

> 重试尝试之间的延迟时间（毫秒）。默认值为200。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DebounceMs <Int32>`

> 如果大于0，则对写入此文件进行去抖。默认值为0（禁用）。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Depth <Nullable`1[[System.Int32, System.Private.CoreLib, Version=10.0.0.0, Culture=neutral, PublicKeyToken=7cec85d7bea7798e]]>`

> JSON 序列化的最大深度。默认值为 30。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Compress`

> .EXAMPLE
    Get-Service -Name "win*" | Where-Object {$_.Status -eq "Running"}

This command gets all services with names starting with "win" and then passes them to Where-Object to filter only those with a status of "Running".

The syntax of the Where-Object cmdlet is:
    Where-Object {property operator value}

Where:
- property is the property of the object to compare.
- operator is the comparison operator (e.g., -eq, -lt, -gt, -like).
- value is the value to compare against.

For more information, see the about_Comparison_Operators help topic.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AsArray`

> .EXAMPLE
    Get-Service -Name "win*" | Where-Object {$_.Status -eq "Running"}

This command gets all services with names starting with "win" and then passes them to Where-Object to filter only those with a status of "Running".

The syntax of the Where-Object cmdlet is:
    Where-Object {property operator value}

Where:
- property is the property of the object to compare.
- operator is the comparison operator (e.g., -eq, -lt, -gt, -like).
- value is the value to compare against.

For more information, see the about_Comparison_Operators help topic.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EnumsAsStrings`

> 提供一种替代的序列化选项，将所有枚举转换为其字符串表示形式。

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `False` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
## Related Links

- [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Copy-FilesToDateFolder.md)
- [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Expand-Path.md)
- [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-DuplicateFiles.md)
- [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Find-Item.md)
- [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Invoke-Fasti.md)
- [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Move-FilesToDateFolder.md)
- [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Move-ItemWithTracking.md)
- [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Move-ToRecycleBin.md)
- [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/ReadJsonWithRetry.md)
- [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-AllItems.md)
- [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-ItemWithFallback.md)
- [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Remove-OnReboot.md)
- [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Rename-InProject.md)
- [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-FoundLocation.md)
- [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent.md)
- [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent2.md)
- [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent3.md)
- [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent4.md)
- [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Set-LocationParent5.md)
- [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Start-RoboCopy.md)
- [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-FileAtomic.md)
- [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/Write-TextFileAtomic.md)
