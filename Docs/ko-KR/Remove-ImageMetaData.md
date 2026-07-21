# Remove-ImageMetaData

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `removeimagedata`

## Synopsis

> 이미지 디렉터리에서 이미지 메타데이터 파일을 제거합니다.

## Description

Remove-ImageMetaData 함수는 이미지와 연결된 동반 JSON 메타데이터 파일을 제거합니다. 키워드(description.json), 사람 데이터(people.json), 개체 데이터(objects.json) 또는 장면 데이터(scenes.json)만 선택적으로 제거하거나, 특정 스위치가 제공되지 않은 경우 모든 메타데이터 파일을 제거할 수 있습니다. Language 매개 변수를 지정하여 언어별 메타데이터 파일을 제거할 수 있으며, AllLanguages 스위치를 사용하여 모든 언어 변형을 제거할 수 있습니다.

## Syntax

```powershell
Remove-ImageMetaData [[-ImageDirectories] <String[]>] [[-Language] <String>] [[-PreferencesDatabasePath] <String>] [-AllLanguages] [-ClearSession] [-OnlyKeywords] [-OnlyObjects] [-OnlyPeople] [-OnlyScenes] [-Recurse] [-SessionOnly] [-SkipSession] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-ImageDirectories` | String[] | — | — | 0 | `@(".\")` | 이미지 메타데이터 제거를 위해 처리할 디렉터리 경로 배열입니다. 지정하지 않으면 기본 시스템 디렉터리를 사용합니다. |
| `-Language` | String | — | — | 1 | — | 언어별 메타데이터 파일을 제거하기 위한 언어입니다. |
| `-PreferencesDatabasePath` | String | — | — | 2 | — | 기본 설정 데이터 파일의 데이터베이스 경로 |
| `-Recurse` | SwitchParameter | — | — | Named | — | 디렉터리를 재귀적으로 검색합니다. |
| `-OnlyKeywords` | SwitchParameter | — | — | Named | — | description.json 파일(키워드/설명)만 제거합니다. |
| `-OnlyPeople` | SwitchParameter | — | — | Named | — | people.json 파일(얼굴 인식 데이터)만 제거하세요. |
| `-OnlyObjects` | SwitchParameter | — | — | Named | — | 객체 감지 데이터인 objects.json 파일만 제거하십시오. |
| `-OnlyScenes` | SwitchParameter | — | — | Named | — | scenes.json 파일(장면 분류 데이터)만 제거하세요. |
| `-AllLanguages` | SwitchParameter | — | — | Named | — | 지원되는 모든 언어에 대한 메타데이터 파일을 제거합니다. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | AI 기본 설정(언어, 이미지 컬렉션 등)에 대해 세션에 저장된 대체 설정 사용 |
| `-ClearSession` | SwitchParameter | — | — | Named | — | AI 기본 설정(언어, 이미지 컬렉션 등)을 위해 세션에 저장된 대체 설정을 지웁니다. |
| `-SkipSession` | SwitchParameter | — | — | Named | — | 언어, 이미지 컬렉션 등 AI 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마세요. |

## Examples

### Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse

```powershell
Remove-ImageMetaData -ImageDirectories @("C:\Photos", "D:\MyImages") -Recurse
```

여러 디렉터리 및 모든 하위 디렉터리에 있는 이미지의 모든 메타데이터 파일을 제거합니다.

### Remove-ImageMetaData -Recurse -OnlyKeywords

```powershell
Remove-ImageMetaData -Recurse -OnlyKeywords
```

기본 시스템 디렉터리 및 하위 디렉터리에서 description.json 파일만 제거합니다.

### Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")

```powershell
Remove-ImageMetaData -OnlyPeople -ImageDirectories @(".\MyPhotos")
```

MyPhotos 디렉터리에서 people.json 파일만 제거합니다.

### Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse

```powershell
Remove-ImageMetaData -Language "Spanish" -OnlyKeywords -Recurse
```

기본 디렉터리에서 영어 및 스페인어 설명 파일을 재귀적으로 제거합니다.

### removeimagedata -AllLanguages -OnlyKeywords

```powershell
removeimagedata -AllLanguages -OnlyKeywords
```

모든 지원 언어에 대한 키워드 파일을 제거하는 데 별칭을 사용합니다.

## Parameter Details

### `-ImageDirectories <String[]>`

> 이미지 메타데이터 제거를 위해 처리할 디렉터리 경로 배열입니다. 지정하지 않으면 기본 시스템 디렉터리를 사용합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 0 |
| **Default value** | `@(".\")` |
| **Accept pipeline input?** | False |
| **Aliases** | `imagespath`, `directories`, `imgdirs`, `imagedirectory` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Language <String>`

> 언어별 메타데이터 파일을 제거하기 위한 언어입니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 1 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-PreferencesDatabasePath <String>`

> 기본 설정 데이터 파일의 데이터베이스 경로

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | 2 |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | `DatabasePath` |
| **Accept wildcard characters?** | No |

<hr/>
### `-Recurse`

> 디렉터리를 재귀적으로 검색합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyKeywords`

> description.json 파일(키워드/설명)만 제거합니다.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyPeople`

> people.json 파일(얼굴 인식 데이터)만 제거하세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyObjects`

> 객체 감지 데이터인 objects.json 파일만 제거하십시오.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-OnlyScenes`

> scenes.json 파일(장면 분류 데이터)만 제거하세요.

| Property | Value |
|:---|:---|
| **Required?** | No |
| **Position?** | Named |
| **Default value** | *(none)* |
| **Accept pipeline input?** | False |
| **Aliases** | *(none)* |
| **Accept wildcard characters?** | No |

<hr/>
### `-AllLanguages`

> 지원되는 모든 언어에 대한 메타데이터 파일을 제거합니다.

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

> AI 기본 설정(언어, 이미지 컬렉션 등)에 대해 세션에 저장된 대체 설정 사용

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

> AI 기본 설정(언어, 이미지 컬렉션 등)을 위해 세션에 저장된 대체 설정을 지웁니다.

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

> 언어, 이미지 컬렉션 등 AI 기본 설정에 대해 세션에 저장된 대체 설정을 사용하지 마세요.

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

- [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Add-EmoticonsToText.md)
- [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertFrom-CorporateSpeak.md)
- [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertFrom-DiplomaticSpeak.md)
- [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-CorporateSpeak.md)
- [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/ConvertTo-DiplomaticSpeak.md)
- [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Find-Image.md)
- [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIKnownFacesRootpath.md)
- [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-AIMetaLanguage.md)
- [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-Fallacy.md)
- [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-ScriptExecutionErrorFixPrompt.md)
- [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Get-SimularMovieTitles.md)
- [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-AIPowershellCommand.md)
- [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageFacesUpdate.md)
- [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageKeywordUpdate.md)
- [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageMetadataUpdate.md)
- [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageObjectsUpdate.md)
- [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-ImageScenesUpdate.md)
- [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMBooleanEvaluation.md)
- [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMQuery.md)
- [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMStringListEvaluation.md)
- [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-LLMTextTransformation.md)
- [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Invoke-QueryImageContent.md)
- [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Save-FoundImageFaces.md)
- [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Save-Transcriptions.md)
- [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AIKnownFacesRootpath.md)
- [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Set-AIMetaLanguage.md)
- [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Show-FoundImagesInBrowser.md)
- [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Start-AudioTranscription.md)
- [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/Update-AllImageMetaData.md)
