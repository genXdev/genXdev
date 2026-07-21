# Start-AudioTranscription

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `transcribefile`, `transcribe`

## Synopsis

> Chuyển đổi tệp âm thanh, tệp video hoặc thiết bị ghi âm thành văn bản

## Description

Phiên âm tệp âm thanh, tệp video hoặc thiết bị ghi âm thành văn bản bằng mô hình Whisper AI. Hàm này có thể xử lý nhiều định dạng âm thanh và video, chuyển đổi chúng sang định dạng phù hợp để phiên âm, và tùy chọn dịch đầu ra sang ngôn ngữ khác. Hỗ trợ định dạng phụ đề SRT và các tham số xử lý âm thanh khác nhau để tinh chỉnh chất lượng phiên âm.

## Syntax

```powershell
Start-AudioTranscription [[-Input] <Object>] [[-LanguageIn] <String>] [[-LanguageOut] <String>] [-AudioContextSize <Int32>] [-AudioDevice <String>] [-ClearSession] [-CpuThreads <Int32>] [-DontSuppressBlank] [-EntropyThreshold <Single>] [-IgnoreSilence] [-LengthPenalty <Single>] [-LogProbThreshold <Single>] [-MaxDuration <Object>] [-MaxDurationOfSilence <Object>] [-MaxInitialTimestamp <Object>] [-MaxLastTextTokens <Int32>] [-MaxSegmentLength <Int32>] [-MaxTokensPerSegment <Int32>] [-ModelType <String>] [-NoContext] [-NoSpeechThreshold <Single>] [-Offset <Object>] [-PassThru] [-PreferencesDatabasePath <String>] [-PrintSpecialTokens] [-Prompt <String>] [-SessionOnly] [-SilenceThreshold <Int32>] [-SingleSegmentOnly] [-SkipSession] [-SplitOnWord] [-SRT] [-SuppressRegex <String>] [-Temperature <Single>] [-TemperatureInc <Single>] [-TokenTimestampsSumThreshold <Single>] [-UseDesktopAndRecordingDevice] [-UseDesktopAudioCapture] [-VOX] [-WithBeamSearchSamplingStrategy] [-WithProgress] [-WithTokenTimestamps] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Input` | Object | — | ✅ (ByValue) | 0 | — | Đường dẫn tệp âm thanh hoặc video để phiên âm. Nếu không được cung cấp, sẽ ghi âm từ micrô. |
| `-AudioDevice` | String | — | — | Named | — | Tên thiết bị âm thanh hoặc GUID (hỗ trợ ký tự đại diện, chọn kết quả khớp đầu tiên) |
| `-LanguageIn` | String | — | — | 1 | — | Ngôn ngữ dự kiến trong bản ghi âm. |
| `-LanguageOut` | String | — | — | 2 | `$null` | Đặt ngôn ngữ cần dịch sang. |
| `-TokenTimestampsSumThreshold` | Single | — | — | Named | `0.5` | Ngưỡng tổng cho dấu thời gian của token, mặc định là 0.5 |
| `-MaxTokensPerSegment` | Int32 | — | — | Named | — | Số lượng token tối đa trên mỗi đoạn |
| `-MaxDurationOfSilence` | Object | — | — | Named | — | Thời gian im lặng tối đa trước khi tự động dừng ghi âm |
| `-SilenceThreshold` | Int32 | — | — | Named | — | Ngưỡng phát hiện im lặng (0..32767, mặc định là 30) |
| `-CpuThreads` | Int32 | — | — | Named | `0` | Số lượng luồng CPU để sử dụng, mặc định là 0 (tự động) |
| `-Temperature` | Single | — | — | Named | `0.5` | Nhiệt độ cho nhận dạng giọng nói |
| `-TemperatureInc` | Single | — | — | Named | — | Tăng nhiệt độ |
| `-Prompt` | String | — | — | Named | — | Lời nhắc để sử dụng cho mô hình |
| `-SuppressRegex` | String | — | — | Named | `$null` | Biểu thức chính quy để loại bỏ các token khỏi đầu ra |
| `-AudioContextSize` | Int32 | — | — | Named | — | Kích thước của bối cảnh âm thanh |
| `-MaxDuration` | Object | — | — | Named | — | Thời lượng tối đa của âm thanh |
| `-Offset` | Object | — | — | Named | — | Độ lệch cho âm thanh |
| `-MaxLastTextTokens` | Int32 | — | — | Named | — | Số lượng tối đa của các token văn bản cuối cùng |
| `-MaxSegmentLength` | Int32 | — | — | Named | — | Độ dài đoạn tối đa |
| `-MaxInitialTimestamp` | Object | — | — | Named | — | Bắt đầu thời gian đánh dấu từ thời điểm này |
| `-LengthPenalty` | Single | — | — | Named | — | Hình phạt độ dài |
| `-EntropyThreshold` | Single | — | — | Named | — | Ngưỡng entropy |
| `-LogProbThreshold` | Single | — | — | Named | — | Ngưỡng xác suất log |
| `-NoSpeechThreshold` | Single | — | — | Named | — | Không có ngưỡng giọng nói |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên |
| `-WithTokenTimestamps` | SwitchParameter | — | — | Named | — | Có bao gồm dấu thời gian mã thông báo trong đầu ra hay không |
| `-SplitOnWord` | SwitchParameter | — | — | Named | — | Có nên tách theo ranh giới từ |
| `-IgnoreSilence` | SwitchParameter | — | — | Named | — | Liệu có bỏ qua im lặng (sẽ làm hỏng dấu thời gian) không |
| `-WithProgress` | SwitchParameter | — | — | Named | — | Có hiển thị tiến trình hay không |
| `-DontSuppressBlank` | SwitchParameter | — | — | Named | — | Có không nên loại bỏ các dòng trống |
| `-SingleSegmentOnly` | SwitchParameter | — | — | Named | — | Chỉ sử dụng một phân đoạn duy nhất |
| `-PrintSpecialTokens` | SwitchParameter | — | — | Named | — | Có in các token đặc biệt không |
| `-NoContext` | SwitchParameter | — | — | Named | — | Không sử dụng ngữ cảnh |
| `-WithBeamSearchSamplingStrategy` | SwitchParameter | — | — | Named | — | Sử dụng chiến lược lấy mẫu tìm kiếm chùm |
| `-ModelType` | String | — | — | Named | — | Loại mô hình Whisper sẽ sử dụng, mặc định là LargeV3Turbo |
| `-SRT` | SwitchParameter | — | — | Named | — | 1
00:00:00,000 --> 00:00:02,000
Bạn là một trợ lý hữu ích được thiết kế để xuất ra JSON.

2
00:00:02,500 --> 00:00:05,000
## Định dạng phản hồi

3
00:00:05,500 --> 00:00:10,000
Chỉ trả lời bằng đối tượng JSON. Không được có văn bản nào khác. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Trả về các đối tượng thay vì chuỗi |
| `-UseDesktopAudioCapture` | SwitchParameter | — | — | Named | — | Có sử dụng tính năng thu âm màn hình thay vì đầu vào micrô không |
| `-UseDesktopAndRecordingDevice` | SwitchParameter | — | — | Named | — | Sử dụng cả máy tính để bàn và thiết bị ghi âm |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v. |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Xóa các cài đặt thay thế đã lưu trong phiên cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Không sử dụng các thiết lập thay thế được lưu trong phiên làm việc cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v. |
| `-VOX` | SwitchParameter | — | — | Named | — | Sử dụng phát hiện im lặng để tự động dừng ghi âm |

## Examples

### Start-AudioTranscription -Input "C:\path\to\audio.wav" `     -LanguageIn "English" -LanguageOut "French" -SRT

```powershell
Start-AudioTranscription -Input "C:\path\to\audio.wav" `
    -LanguageIn "English" -LanguageOut "French" -SRT
```

### transcribefile "C:\video.mp4" "English"

```powershell
transcribefile "C:\video.mp4" "English"
```

### Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"

```powershell
Get-ChildItem "*.mp4" | Start-AudioTranscription -LanguageIn "English"
```

### Start-AudioTranscription  # Records from microphone when no file specified ##############################################################################

```powershell
Start-AudioTranscription  # Records from microphone when no file specified
##############################################################################
```

## Parameter Details

### `-Input <Object>`

> Đường dẫn tệp âm thanh hoặc video để phiên âm. Nếu không được cung cấp, sẽ ghi âm từ micrô.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | True (ByValue) |
| **Aliases** | `WaveFile`, `FilePath`, `MediaFile` |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioDevice <String>`

> Tên thiết bị âm thanh hoặc GUID (hỗ trợ ký tự đại diện, chọn kết quả khớp đầu tiên)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageIn <String>`

> Ngôn ngữ dự kiến trong bản ghi âm.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LanguageOut <String>`

> Đặt ngôn ngữ cần dịch sang.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TokenTimestampsSumThreshold <Single>`

> Ngưỡng tổng cho dấu thời gian của token, mặc định là 0.5

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxTokensPerSegment <Int32>`

> Số lượng token tối đa trên mỗi đoạn

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDurationOfSilence <Object>`

> Thời gian im lặng tối đa trước khi tự động dừng ghi âm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SilenceThreshold <Int32>`

> Ngưỡng phát hiện im lặng (0..32767, mặc định là 30)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-CpuThreads <Int32>`

> Số lượng luồng CPU để sử dụng, mặc định là 0 (tự động)

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Temperature <Single>`

> Nhiệt độ cho nhận dạng giọng nói

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `0.5` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-TemperatureInc <Single>`

> Tăng nhiệt độ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Prompt <String>`

> Lời nhắc để sử dụng cho mô hình

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SuppressRegex <String>`

> Biểu thức chính quy để loại bỏ các token khỏi đầu ra

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | `$null` |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AudioContextSize <Int32>`

> Kích thước của bối cảnh âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxDuration <Object>`

> Thời lượng tối đa của âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-Offset <Object>`

> Độ lệch cho âm thanh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxLastTextTokens <Int32>`

> Số lượng tối đa của các token văn bản cuối cùng

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxSegmentLength <Int32>`

> Độ dài đoạn tối đa

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-MaxInitialTimestamp <Object>`

> Bắt đầu thời gian đánh dấu từ thời điểm này

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LengthPenalty <Single>`

> Hình phạt độ dài

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-EntropyThreshold <Single>`

> Ngưỡng entropy

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-LogProbThreshold <Single>`

> Ngưỡng xác suất log

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoSpeechThreshold <Single>`

> Không có ngưỡng giọng nói

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

> Đường dẫn cơ sở dữ liệu cho các tệp dữ liệu ưu tiên

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithTokenTimestamps`

> Có bao gồm dấu thời gian mã thông báo trong đầu ra hay không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SplitOnWord`

> Có nên tách theo ranh giới từ

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-IgnoreSilence`

> Liệu có bỏ qua im lặng (sẽ làm hỏng dấu thời gian) không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithProgress`

> Có hiển thị tiến trình hay không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-DontSuppressBlank`

> Có không nên loại bỏ các dòng trống

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SingleSegmentOnly`

> Chỉ sử dụng một phân đoạn duy nhất

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PrintSpecialTokens`

> Có in các token đặc biệt không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-NoContext`

> Không sử dụng ngữ cảnh

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-WithBeamSearchSamplingStrategy`

> Sử dụng chiến lược lấy mẫu tìm kiếm chùm

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-ModelType <String>`

> Loại mô hình Whisper sẽ sử dụng, mặc định là LargeV3Turbo

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-SRT`

> 1
00:00:00,000 --> 00:00:02,000
Bạn là một trợ lý hữu ích được thiết kế để xuất ra JSON.

2
00:00:02,500 --> 00:00:05,000
## Định dạng phản hồi

3
00:00:05,500 --> 00:00:10,000
Chỉ trả lời bằng đối tượng JSON. Không được có văn bản nào khác.

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

> Trả về các đối tượng thay vì chuỗi

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `pt` |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAudioCapture`

> Có sử dụng tính năng thu âm màn hình thay vì đầu vào micrô không

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-UseDesktopAndRecordingDevice`

> Sử dụng cả máy tính để bàn và thiết bị ghi âm

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

> Sử dụng cài đặt thay thế được lưu trong phiên làm việc cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v.

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

> Xóa các cài đặt thay thế đã lưu trong phiên cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v.

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

> Không sử dụng các thiết lập thay thế được lưu trong phiên làm việc cho các tùy chọn AI như Ngôn ngữ, Bộ sưu tập hình ảnh, v.v.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `FromPreferences` |
| **Accept wildcard characters?** | No |

<hr/>
### `-VOX`

> Sử dụng phát hiện im lặng để tự động dừng ghi âm

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Invoke-QueryImageContent.md)
- [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Remove-ImageMetaData.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Show-FoundImagesInBrowser.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/Update-AllImageMetaData.md)
