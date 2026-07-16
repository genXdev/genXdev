# Find-Image

> **Module:** GenXdev.AI.Queries | **Type:** Function | **Aliases:** `findimages, `li

## Synopsis

> *(No synopsis provided)*

## Syntax

```powershell
Find-Image [[-Any] <String[]>] [[-Name] <String[]>] [-AcceptLang <String>] [-All] [-AllDrives] [-ApplicationMode] [-AttributesToSkip <IO.FileAttributes>] [-AutoAnimateRectangles] [-AutoScrollPixelsPerSecond <Int32>] [-Bottom] [-Centered] [-Chrome] [-Chromium] [-ClearSession] [-Description <String>] [-DescriptionSearch <String[]>] [-DisablePopupBlocker] [-Edge] [-EmbedImages] [-Firefox] [-FocusWindow] [-FollowSymlinkAndJunctions] [-Force] [-FullScreen] [-GeoDistanceInMeters <Double>] [-GeoLocation <Double[]>] [-HasExplicitContent] [-HasNudity] [-Height <Int32>] [-ImageUrlPrefix <String>] [-Interactive] [-KeysToSend <String[]>] [-Keywords <String[]>] [-Language <String>] [-Left] [-MaxFileSize <Int64>] [-Maximize] [-MaxRecursionDepth <Int32>] [-MaxSearchUpDepth <Int32>] [-MetaCameraMake <String[]>] [-MetaCameraModel <String[]>] [-MetaDateTaken <DateTime[]>] [-MetaExposureTime <Double[]>] [-MetaFNumber <Double[]>] [-MetaFocalLength <Double[]>] [-MetaGPSAltitude <Double[]>] [-MetaGPSLatitude <Double[]>] [-MetaGPSLongitude <Double[]>] [-MetaHeight <Int32[]>] [-MetaISO <Int32[]>] [-MetaWidth <Int32[]>] [-MinConfidenceRatio <Double>] [-MinFileSize <Int64>] [-ModifiedAfter <DateTime>] [-ModifiedBefore <DateTime>] [-Monitor <Int32>] [-NeverRebuild] [-NewWindow] [-NoBorders] [-NoBrowserExtensions] [-NoExplicitContent] [-NoFallback] [-NoNudity] [-NoRecurse] [-Objects <String[]>] [-OnlyReturnHtml] [-OverallMood <String[]>] [-PassThru] [-People <String[]>] [-PictureType <String[]>] [-PreferencesDatabasePath <String>] [-Private] [-RestoreFocus] [-Right] [-Scenes <String[]>] [-SendKeyDelayMilliSeconds <Int32>] [-SendKeyEscape] [-SendKeyHoldKeyboardFocus] [-SendKeyUseShiftEnter] [-SessionOnly] [-SetForeground] [-SetRestored] [-ShowInBrowser] [-ShowOnlyPictures] [-SideBySide] [-SingleColumnMode] [-SkipSession] [-StyleType <String[]>] [-Title <String>] [-Top] [-Width <Int32>] [-X <Int32>] [-Y <Int32>] [<CommonParameters>]
```

## Parameters

| Name | Type | Required | Pipeline | Position | Default | Description |
|:---|:---|:---:|:---|:---:|:---|:---|
| `-Any` | String[] | — | — | 0 | `@()` | Will match any of all the possible meta data types. |
| `-Name` | String[] | — | — | 1 | `@('.\')` | Array of directory paths to search for images |
| `-Language` | String | — | — | Named | — | Language for descriptions and keywords. |
| `-DescriptionSearch` | String[] | — | — | Named | `@()` | The description text to look for, wildcards allowed. |
| `-Keywords` | String[] | — | — | Named | `@()` | The keywords to look for, wildcards allowed. |
| `-People` | String[] | — | — | Named | `@()` | People to look for, wildcards allowed. |
| `-Objects` | String[] | — | — | Named | `@()` | Objects to look for, wildcards allowed. |
| `-Scenes` | String[] | — | — | Named | `@()` | Scene categories to look for, wildcards allowed. |
| `-PictureType` | String[] | — | — | Named | `@()` | Picture type to filter by (e.g., 'daylight', 'evening', 'indoor', etc). Supports wildcards. |
| `-StyleType` | String[] | — | — | Named | `@()` | Style type to filter by (e.g., 'casual', 'formal', etc). Supports wildcards. |
| `-OverallMood` | String[] | — | — | Named | `@()` | Overall mood to filter by (e.g., 'calm', 'cheerful', 'sad', etc). Supports wildcards. |
| `-MetaCameraMake` | String[] | — | — | Named | `@()` | Filter by camera make in image EXIF metadata. Supports wildcards. |
| `-MetaCameraModel` | String[] | — | — | Named | `@()` | Filter by camera model in image EXIF metadata. Supports wildcards. |
| `-MetaGPSLatitude` | Double[] | — | — | Named | — | Filter by GPS latitude range in image EXIF metadata. |
| `-MetaGPSLongitude` | Double[] | — | — | Named | — | Filter by GPS longitude range in image EXIF metadata. |
| `-MetaGPSAltitude` | Double[] | — | — | Named | — | Filter by GPS altitude range in image EXIF metadata (in meters). |
| `-GeoLocation` | Double[] | — | — | Named | — | Geographic coordinates [latitude, longitude] to search near. |
| `-GeoDistanceInMeters` | Double | — | — | Named | `1000` | Maximum distance in meters from GeoLocation to search for images. |
| `-MetaExposureTime` | Double[] | — | — | Named | — | Filter by exposure time range in image EXIF metadata (in seconds). |
| `-MetaFNumber` | Double[] | — | — | Named | — | Filter by F-number (aperture) range in image EXIF metadata. |
| `-MetaISO` | Int32[] | — | — | Named | — | Filter by ISO sensitivity range in image EXIF metadata. |
| `-MetaFocalLength` | Double[] | — | — | Named | — | Filter by focal length range in image EXIF metadata (in mm). |
| `-MetaWidth` | Int32[] | — | — | Named | — | Filter by image width range in pixels from EXIF metadata. |
| `-MetaHeight` | Int32[] | — | — | Named | — | Filter by image height range in pixels from EXIF metadata. |
| `-MetaDateTaken` | DateTime[] | — | — | Named | — | Filter by date taken from EXIF metadata. Can be a date range. |
| `-Title` | String | — | — | Named | `'Photo Gallery'` | Title for the gallery |
| `-Description` | String | — | — | Named | `('Hover over images to see face recognition ' +
            'and object detection data')` | Description for the gallery |
| `-AcceptLang` | String | — | — | Named | `$null` | Set the browser accept-lang http header |
| `-KeysToSend` | String[] | — | — | Named | — | Keystrokes to send to the Browser window, see documentation for cmdlet GenXdev\Send-Key |
| `-SendKeyEscape` | SwitchParameter | — | — | Named | — | Escape control characters and modifiers when sending keys |
| `-SendKeyHoldKeyboardFocus` | SwitchParameter | — | — | Named | — | Prevent returning keyboard focus to PowerShell after sending keys |
| `-SendKeyUseShiftEnter` | SwitchParameter | — | — | Named | — | Use Shift+Enter instead of Enter when sending keys |
| `-SendKeyDelayMilliSeconds` | Int32 | — | — | Named | — | Delay between different input strings in milliseconds when sending keys |
| `-FocusWindow` | SwitchParameter | — | — | Named | — | Focus the browser window after opening |
| `-SetForeground` | SwitchParameter | — | — | Named | — | Set the browser window to foreground after opening |
| `-Maximize` | SwitchParameter | — | — | Named | — | Maximize the window after positioning |
| `-SetRestored` | SwitchParameter | — | — | Named | — | Restore the window to normal state after positioning |
| `-Monitor` | Int32 | — | — | Named | `-2` | The monitor to use, 0 = default, -1 is discard, -2 = Configured secondary monitor, defaults to Global:DefaultSecondaryMonitor or 2 if not found |
| `-Width` | Int32 | — | — | Named | `-1` | The initial width of the webbrowser window |
| `-Height` | Int32 | — | — | Named | `-1` | The initial height of the webbrowser window |
| `-X` | Int32 | — | — | Named | `-999999` | The initial X position of the webbrowser window |
| `-Y` | Int32 | — | — | Named | `-999999` | The initial Y position of the webbrowser window |
| `-PreferencesDatabasePath` | String | — | — | Named | — | Database path for preference data files |
| `-EmbedImages` | SwitchParameter | — | — | Named | — | Embed images as base64. |
| `-NoFallback` | SwitchParameter | — | — | Named | — | Switch to disable fallback behavior. |
| `-NeverRebuild` | SwitchParameter | — | — | Named | — | Switch to skip database initialization and rebuilding. |
| `-AllDrives` | SwitchParameter | — | — | Named | — | Search across all available drives |
| `-NoRecurse` | SwitchParameter | — | — | Named | — | Do not recurse into subdirectories |
| `-FollowSymlinkAndJunctions` | SwitchParameter | — | — | Named | — | Follow symlinks and junctions during directory traversal. |
| `-MaxRecursionDepth` | Int32 | — | — | Named | `0` | Maximum recursion depth for directory traversal. 0 means unlimited. |
| `-MaxSearchUpDepth` | Int32 | — | — | Named | `0` | Maximum recursion depth for continuing searching upwards the tree for relative searches, while no items are found. 0 means disabled. |
| `-MaxFileSize` | Int64 | — | — | Named | `0` | Maximum file size in bytes to include in results. 0 means unlimited. |
| `-MinFileSize` | Int64 | — | — | Named | `0` | Minimum file size in bytes to include in results. 0 means no minimum. |
| `-ModifiedAfter` | DateTime | — | — | Named | — | Only include files modified after this date/time (UTC). |
| `-ModifiedBefore` | DateTime | — | — | Named | — | Only include files modified before this date/time (UTC). |
| `-AttributesToSkip` | IO.FileAttributes | — | — | Named | `[System.IO.FileAttributes]::System` | File attributes to skip (e.g., System, Hidden or None). |
| `-HasNudity` | SwitchParameter | — | — | Named | — | Filter images that contain nudity. |
| `-NoNudity` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain nudity. |
| `-HasExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that contain explicit content. |
| `-NoExplicitContent` | SwitchParameter | — | — | Named | — | Filter images that do NOT contain explicit content. |
| `-ShowInBrowser` | SwitchParameter | — | — | Named | — | Display the search results in a browser-based image gallery. |
| `-PassThru` | SwitchParameter | — | — | Named | — | Return image data as objects. When used with -ShowInBrowser, both displays the gallery and returns the objects. |
| `-NoBorders` | SwitchParameter | — | — | Named | — | Remove window borders and title bar for a cleaner appearance |
| `-SideBySide` | SwitchParameter | — | — | Named | — | Place browser window side by side with PowerShell on the same monitor |
| `-Interactive` | SwitchParameter | — | — | Named | — | Will connect to browser and adds additional buttons like Edit and Delete. Only effective when used with -ShowInBrowser. |
| `-Private` | SwitchParameter | — | — | Named | — | Opens in incognito/private browsing mode |
| `-Force` | SwitchParameter | — | — | Named | — | Force enable debugging port, stopping existing browsers if needed |
| `-Edge` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge |
| `-Chrome` | SwitchParameter | — | — | Named | — | Opens in Google Chrome |
| `-Chromium` | SwitchParameter | — | — | Named | — | Opens in Microsoft Edge or Google Chrome, depending on what the default browser is |
| `-Firefox` | SwitchParameter | — | — | Named | — | Opens in Firefox |
| `-All` | SwitchParameter | — | — | Named | — | Opens in all registered modern browsers |
| `-FullScreen` | SwitchParameter | — | — | Named | — | Opens in fullscreen mode |
| `-Left` | SwitchParameter | — | — | Named | — | Place browser window on the left side of the screen |
| `-Right` | SwitchParameter | — | — | Named | — | Place browser window on the right side of the screen |
| `-Top` | SwitchParameter | — | — | Named | — | Place browser window on the top side of the screen |
| `-Bottom` | SwitchParameter | — | — | Named | — | Place browser window on the bottom side of the screen |
| `-Centered` | SwitchParameter | — | — | Named | — | Place browser window in the center of the screen |
| `-ApplicationMode` | SwitchParameter | — | — | Named | — | Hide the browser controls |
| `-NoBrowserExtensions` | SwitchParameter | — | — | Named | — | Prevent loading of browser extensions |
| `-DisablePopupBlocker` | SwitchParameter | — | — | Named | — | Disable the popup blocker |
| `-RestoreFocus` | SwitchParameter | — | — | Named | — | Restore PowerShell window focus |
| `-NewWindow` | SwitchParameter | — | — | Named | — | Don't re-use existing browser window, instead, create a new one |
| `-OnlyReturnHtml` | SwitchParameter | — | — | Named | — | Only return the generated HTML instead of displaying it in a browser. |
| `-ShowOnlyPictures` | SwitchParameter | — | — | Named | — | Show only pictures in a rounded rectangle, no text below. |
| `-SessionOnly` | SwitchParameter | — | — | Named | — | Use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-ClearSession` | SwitchParameter | — | — | Named | — | Clear alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-SkipSession` | SwitchParameter | — | — | Named | — | Dont use alternative settings stored in session for AI preferences like Language, Image collections, etc |
| `-AutoScrollPixelsPerSecond` | Int32 | — | — | Named | `$null` | Auto-scroll the page by this many pixels per second (null to disable) |
| `-AutoAnimateRectangles` | SwitchParameter | — | — | Named | — | Animate rectangles (objects/faces) in visible range, cycling every 300ms |
| `-SingleColumnMode` | SwitchParameter | — | — | Named | `$false` | Force single column layout (centered, 1/3 screen width) |
| `-ImageUrlPrefix` | String | — | — | Named | `''` | Prefix to prepend to each image path (e.g. for remote URLs) |
| `-MinConfidenceRatio` | Double | — | — | Named | — | Minimum confidence ratio (0.0-1.0) for filtering people, scenes, and objects by confidence. Only returns data for people, scenes, and objects with confidence greater than or equal to this value. |

## Outputs

- `GenXdev.Helpers.ImageSearchResult`
- `String`

## Related Links

- [Find-Image on GitHub](https://github.com/genXdev/genXdev)
