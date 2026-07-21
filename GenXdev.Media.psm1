<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Get-ImageMetadata.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Extracts comprehensive metadata from an image file.

.DESCRIPTION
This function reads EXIF, IPTC and other metadata from an image file. It extracts
a wide range of information including camera details, exposure settings, GPS coordinates,
dates, copyright information, and more. It supports images that contain metadata
in their EXIF data (JPEG, TIFF) as well as PNG metadata.

.PARAMETER ImagePath
The full path to the image file to analyze. The file must be a valid image format
that supports metadata (JPEG, TIFF, PNG, etc.).

.PARAMETER ForceConsent
Force a consent prompt even if a preference is already set for ImageSharp package
installation, overriding any saved consent preferences.

.PARAMETER ConsentToThirdPartySoftwareInstallation
Automatically consent to third-party software installation and set a persistent
preference flag for ImageSharp packages, bypassing interactive consent prompts.

.OUTPUTS
System.Collections.Hashtable
Returns a hashtable containing all available metadata categories including:
- Basic (dimensions, format, etc.)
- Camera (make, model, etc.)
- Exposure (aperture, shutter speed, ISO, etc.)
- GPS (latitude, longitude, etc.)
- DateTime (when taken, modified, etc.)
- Author (artist, copyright, etc.)
- Additional (software, comments, etc.)

.EXAMPLE
Get-ImageMetadata -ImagePath "C:\Pictures\vacation.jpg"

.EXAMPLE
"C:\Pictures\vacation.jpg" | Get-ImageMetadata

.EXAMPLE
Get-ImageMetadata -ImagePath "C:\Pictures\photo.webp" -ConsentToThirdPartySoftwareInstallation
#>
function Get-ImageMetadata {

    [CmdletBinding()]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [OutputType([GenXdev.Helpers.ImageSearchResultMetadata])]

    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'Path to the image file to analyze'
        )]
        [ValidateNotNullOrEmpty()]
        [string]$ImagePath,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force a consent prompt even if preference is set for ImageSharp package installation.'
        )]
        [switch] $ForceConsent,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Automatically consent to third-party software installation and set persistent flag for ImageSharp packages.'
        )]
        [switch] $ConsentToThirdPartySoftwareInstallation
    )

    begin {
        [GenXdev.Helpers.ImageSearchResultMetadata] $metadata = [GenXdev.Helpers.ImageSearchResultMetadata]::new();

        # check if image path exists
        if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $ImagePath)) {

            Microsoft.PowerShell.Utility\Write-Error (
                "The specified image path '$ImagePath' does not exist."
            )

            return
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Processing image: $ImagePath"
        )

        # Define EXIF tags by their ID numbers for lookup
        $exifTags = @{
            # Version tags
            0x9000 = 'ExifVersion'
            0xA000 = 'FlashpixVersion'

            # Image data characteristics
            0xA001 = 'ColorSpace'
            0xA500 = 'Gamma'

            # Date and time
            0x9003 = 'DateTimeOriginal'
            0x9004 = 'DateTimeDigitized'
            0x9290 = 'SubsecTime'
            0x9291 = 'SubsecTimeOriginal'
            0x9292 = 'SubsecTimeDigitized'

            # Camera settings
            0x829A = 'ExposureTime'
            0x829D = 'FNumber'
            0x8822 = 'ExposureProgram'
            0x8824 = 'SpectralSensitivity'
            0x8827 = 'ISOSpeedRatings'
            0x8828 = 'OECF'
            0x9201 = 'ShutterSpeedValue'
            0x9202 = 'ApertureValue'
            0x9203 = 'BrightnessValue'
            0x9204 = 'ExposureBiasValue'
            0x9205 = 'MaxApertureValue'
            0x9206 = 'SubjectDistance'
            0x9207 = 'MeteringMode'
            0x9208 = 'LightSource'
            0x9209 = 'Flash'
            0x920A = 'FocalLength'
            0x9214 = 'SubjectArea'
            0xA20B = 'FlashEnergy'
            0xA20C = 'SpatialFrequencyResponse'
            0xA20E = 'FocalPlaneXResolution'
            0xA20F = 'FocalPlaneYResolution'
            0xA210 = 'FocalPlaneResolutionUnit'
            0xA214 = 'SubjectLocation'
            0xA215 = 'ExposureIndex'
            0xA217 = 'SensingMethod'
            0xA300 = 'FileSource'
            0xA301 = 'SceneType'
            0xA302 = 'CFAPattern'
            0xA401 = 'CustomRendered'
            0xA402 = 'ExposureMode'
            0xA403 = 'WhiteBalance'
            0xA404 = 'DigitalZoomRatio'
            0xA405 = 'FocalLengthIn35mmFilm'
            0xA406 = 'SceneCaptureType'
            0xA407 = 'GainControl'
            0xA408 = 'Contrast'
            0xA409 = 'Saturation'
            0xA40A = 'Sharpness'
            0xA40B = 'DeviceSettingDescription'
            0xA40C = 'SubjectDistanceRange'

            # Other tags
            0xA420 = 'ImageUniqueID'
            0x8769 = 'ExifIFDPointer'
            0x8825 = 'GPSInfoIFDPointer'

            # Maker notes
            0x927C = 'MakerNote'
            0x9286 = 'UserComment'

            # Camera manufacturer and model
            0x010F = 'Make'
            0x0110 = 'Model'
            0x0131 = 'Software'
            0x013B = 'Artist'
            0x8298 = 'Copyright'

            # GPS tags
            0x0000 = 'GPSVersionID'
            0x0001 = 'GPSLatitudeRef'
            0x0002 = 'GPSLatitude'
            0x0003 = 'GPSLongitudeRef'
            0x0004 = 'GPSLongitude'
            0x0005 = 'GPSAltitudeRef'
            0x0006 = 'GPSAltitude'
            0x0007 = 'GPSTimeStamp'
            0x0008 = 'GPSSatellites'
            0x0009 = 'GPSStatus'
            0x000A = 'GPSMeasureMode'
            0x000B = 'GPSDOP'
            0x000C = 'GPSSpeedRef'
            0x000D = 'GPSSpeed'
            0x000E = 'GPSTrackRef'
            0x000F = 'GPSTrack'
            0x0010 = 'GPSImgDirectionRef'
            0x0011 = 'GPSImgDirection'
            0x0012 = 'GPSMapDatum'
            0x0013 = 'GPSDestLatitudeRef'
            0x0014 = 'GPSDestLatitude'
            0x0015 = 'GPSDestLongitudeRef'
            0x0016 = 'GPSDestLongitude'
            0x0017 = 'GPSDestBearingRef'
            0x0018 = 'GPSDestBearing'
            0x0019 = 'GPSDestDistanceRef'
            0x001A = 'GPSDestDistance'
            0x001B = 'GPSProcessingMethod'
            0x001C = 'GPSAreaInformation'
            0x001D = 'GPSDateStamp'
            0x001E = 'GPSDifferential'

            # IPTC tags (added as EXIF tags by some software)
            0x83BB = 'IPTC-NAA'

            # Basic image info
            0x0100 = 'ImageWidth'
            0x0101 = 'ImageLength'
            0x0102 = 'BitsPerSample'
            0x0103 = 'Compression'
            0x0106 = 'PhotometricInterpretation'
            0x0112 = 'Orientation'
            0x0115 = 'SamplesPerPixel'
            0x011A = 'XResolution'
            0x011B = 'YResolution'
            0x011C = 'PlanarConfiguration'
            0x0128 = 'ResolutionUnit'
            0x0132 = 'DateTime'
        }
    }

    process {
        $image = $null
        try {

            # Load the image file
            Microsoft.PowerShell.Utility\Write-Verbose 'Loading image file'

            $actualPath = $ImagePath

            if ([IO.Path]::GetExtension($ImagePath).ToLowerInvariant() -eq '.webp') {

                # If the path is a script, execute it to get the actual image path
                $actualPath = [IO.Path]::GetTempFileName() + ".png";

                # Load ImageSharp packages with embedded consent using Copy-IdenticalParamValues
                $ensureParams = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\EnsureNuGetAssembly' `
                    -DefaultValues (
                    Microsoft.PowerShell.Utility\Get-Variable -Scope Local `
                        -ErrorAction SilentlyContinue
                )

                # Set specific parameters for ImageSharp packages
                $ensureParams['Description'] = 'Required for WebP image format processing and conversion'
                $ensureParams['Publisher'] = 'SixLabors'

                # Load required ImageSharp packages
                $ensureParams['PackageKey'] = 'SixLabors.ImageSharp'
                GenXdev\EnsureNuGetAssembly @ensureParams

                $ensureParams['PackageKey'] = 'Shorthand.ImageSharp.WebP'
                GenXdev\EnsureNuGetAssembly @ensureParams

                $ensureParams['PackageKey'] = 'SixLabors.ImageSharp.Drawing'
                GenXdev\EnsureNuGetAssembly @ensureParams

                try {
                    $webpImage = [SixLabors.ImageSharp.Image]::Load($ImagePath)
                    try {
                        # Use Save method with PNG encoder and file stream
                        $pngEncoder = [SixLabors.ImageSharp.Formats.Png.PngEncoder]::new()
                        $fileStream = [System.IO.File]::Create($actualPath)
                        try {
                            $webpImage.Save($fileStream, $pngEncoder)
                        }
                        finally {
                            $fileStream.Close()
                        }
                    }
                    finally {
                        if ($webpImage -and ($webpImage -is [IDisposable])) {
                            $webpImage.Dispose()
                        }
                    }
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning "Error converting WebP to PNG: $($_.Exception.Message)"
                }
            }
            try {
                $image = [System.Drawing.Image]::FromFile($actualPath)
            }
            catch {

                return;
            }
            finally {
                if ($actualPath -ne $ImagePath) {

                    # Clean up temporary file if created
                    Microsoft.PowerShell.Management\Remove-Item -LiteralPath $actualPath -Force -ErrorAction Ignore
                }
            }

            # Set basic image information
            $metadata.Basic.Width = $image.Width
            $metadata.Basic.Height = $image.Height
            $metadata.Basic.PixelFormat = $image.PixelFormat.ToString()
            $metadata.Basic.Format = $image.RawFormat.ToString()
            $metadata.Basic.HorizontalResolution = $image.HorizontalResolution
            $metadata.Basic.VerticalResolution = $image.VerticalResolution
            $metadata.Basic.FileSizeBytes = (Microsoft.PowerShell.Management\Get-Item -LiteralPath $ImagePath).Length
            $metadata.Basic.FileName = (Microsoft.PowerShell.Management\Get-Item -LiteralPath $ImagePath).Name
            $metadata.Basic.FileExtension = [System.IO.Path]::GetExtension($ImagePath).ToLower()

            # Get all property items
            $propertyItems = $image.PropertyItems

            # Process each property item
            foreach ($item in $propertyItems) {
                $tagName = $exifTags[[int]$item.Id]

                # Skip if we don't know what this tag is
                if (-not $tagName) {
                    continue
                }

                # Process based on tag type
                try {
                    switch ($tagName) {
                        # GPS coordinates handling
                        'GPSLatitude' {
                            # Already processed in GPS section
                        }
                        'GPSLongitude' {
                            # Already processed in GPS section
                        }
                        'GPSLatitudeRef' {
                            # Already processed in GPS section
                        }
                        'GPSLongitudeRef' {
                            # Already processed in GPS section
                        }

                        # Date/time strings
                        { $_ -match 'DateTime' } {
                            $value = [System.Text.Encoding]::ASCII.GetString($item.Value).TrimEnd([char]0)
                            try {
                                $metadata.DateTime."$tagName" = $value
                            }
                            catch {

                            }
                        }

                        # String values
                        { $_ -in 'Make', 'Model', 'Software', 'Artist', 'Copyright', 'UserComment' } {
                            $value = [System.Text.Encoding]::ASCII.GetString($item.Value).TrimEnd([char]0)
                            try {
                                if ($_ -in 'Make', 'Model') {
                                    $metadata.Camera."$tagName" = $value
                                }
                                elseif ($_ -in 'Artist', 'Copyright') {
                                    $metadata.Author."$tagName" = $value
                                }
                                else {
                                    $metadata.Other."$tagName" = $value
                                }
                            }
                            catch {

                            }
                        }

                        # Numeric values for exposure
                        { $_ -in 'FNumber', 'ExposureTime', 'ISOSpeedRatings', 'FocalLength', 'ExposureProgram', 'MeteringMode', 'Flash' } {
                            if ($item.Type -eq 5) {
                                # Rational type
                                if ($item.Value.Length -ge 8) {
                                    $numerator = [BitConverter]::ToUInt32($item.Value, 0)
                                    $denominator = [BitConverter]::ToUInt32($item.Value, 4)
                                    if ($denominator -ne 0) {
                                        $value = [math]::Round($numerator / $denominator, 2)
                                    }
                                    else {
                                        $value = 0
                                    }
                                }
                                else {
                                    $value = "Unknown format"
                                }
                            }
                            else {
                                $value = $item.Value[0]
                            }
                            try {
                                $metadata.Exposure."$tagName" = $value
                            }
                            catch {

                            }
                        }

                        # Default catch-all
                        default {
                            try {
                                $metadata.Other."$tagName" = "Binary data"
                            }
                            catch {

                            }
                        }
                    }
                }
                catch {
                    try {
                        $metadata.Other["Error_$tagName"] = "Failed to parse: $_"
                    }
                    catch {

                    }
                }
            }

            # Special handling for GPS data
            $latitudeRef = $propertyItems | Microsoft.PowerShell.Core\Where-Object { $_.Id -eq 0x0001 }
            $latitude = $propertyItems | Microsoft.PowerShell.Core\Where-Object { $_.Id -eq 0x0002 }
            $longitudeRef = $propertyItems | Microsoft.PowerShell.Core\Where-Object { $_.Id -eq 0x0003 }
            $longitude = $propertyItems | Microsoft.PowerShell.Core\Where-Object { $_.Id -eq 0x0004 }
            $altitude = $propertyItems | Microsoft.PowerShell.Core\Where-Object { $_.Id -eq 0x0006 }
            $altitudeRef = $propertyItems | Microsoft.PowerShell.Core\Where-Object { $_.Id -eq 0x0005 }

            if ($latitude -and $longitude -and $latitudeRef -and $longitudeRef) {
                # Parse latitude
                if ($latitude.Value.Length -ge 24) {
                    # 3 rational values (3 * 8 bytes)
                    $latDegNum = [BitConverter]::ToUInt32($latitude.Value, 0)
                    $latDegDen = [BitConverter]::ToUInt32($latitude.Value, 4)
                    $latMinNum = [BitConverter]::ToUInt32($latitude.Value, 8)
                    $latMinDen = [BitConverter]::ToUInt32($latitude.Value, 12)
                    $latSecNum = [BitConverter]::ToUInt32($latitude.Value, 16)
                    $latSecDen = [BitConverter]::ToUInt32($latitude.Value, 20)

                    if ($latDegDen -ne 0 -and $latMinDen -ne 0 -and $latSecDen -ne 0) {
                        $latDeg = $latDegNum / $latDegDen
                        $latMin = $latMinNum / $latMinDen
                        $latSec = $latSecNum / $latSecDen
                        $latDecimal = $latDeg + ($latMin / 60) + ($latSec / 3600)

                        # Apply reference direction
                        if ($latitudeRef.Value -eq [byte][char]'S') {
                            $latDecimal = - $latDecimal
                        }

                        $metadata.GPS.Latitude = $latDecimal
                        $metadata.GPS.LatitudeDMS = "$latDeg° $latMin' $latSec`""
                    }
                }
                else {
                    try {
                        # Simple rational format
                        $latNum = [BitConverter]::ToUInt32($latitude.Value, 0)
                        $latDen = [BitConverter]::ToUInt32($latitude.Value, 4)
                        if ($latDen -ne 0) {
                            $lat = $latNum / $latDen
                            # Apply reference direction
                            if ($latitudeRef.Value -eq [byte][char]'S') {
                                $lat = - $lat
                            }
                            $metadata.GPS.Latitude = $lat
                        }
                    }
                    catch {
                        $metadata.GPS.LatitudeError = "Failed to parse: $_"
                    }
                }

                # Parse longitude
                if ($longitude.Value.Length -ge 24) {
                    $lonDegNum = [BitConverter]::ToUInt32($longitude.Value, 0)
                    $lonDegDen = [BitConverter]::ToUInt32($longitude.Value, 4)
                    $lonMinNum = [BitConverter]::ToUInt32($longitude.Value, 8)
                    $lonMinDen = [BitConverter]::ToUInt32($longitude.Value, 12)
                    $lonSecNum = [BitConverter]::ToUInt32($longitude.Value, 16)
                    $lonSecDen = [BitConverter]::ToUInt32($longitude.Value, 20)

                    if ($lonDegDen -ne 0 -and $lonMinDen -ne 0 -and $lonSecDen -ne 0) {
                        $lonDeg = $lonDegNum / $lonDegDen
                        $lonMin = $lonMinNum / $lonMinDen
                        $lonSec = $lonSecNum / $lonSecDen
                        $lonDecimal = $lonDeg + ($lonMin / 60) + ($lonSec / 3600)

                        # Apply reference direction
                        if ($longitudeRef.Value -eq [byte][char]'W') {
                            $lonDecimal = - $lonDecimal
                        }

                        $metadata.GPS.Longitude = $lonDecimal
                        $metadata.GPS.LongitudeDMS = "$lonDeg° $lonMin' $lonSec`""
                    }
                }
                else {
                    try {
                        # Simple rational format
                        $lonNum = [BitConverter]::ToUInt32($longitude.Value, 0)
                        $lonDen = [BitConverter]::ToUInt32($longitude.Value, 4)
                        if ($lonDen -ne 0) {
                            $lon = $lonNum / $lonDen
                            # Apply reference direction
                            if ($longitudeRef.Value -eq [byte][char]'W') {
                                $lon = - $lon
                            }
                            $metadata.GPS.Longitude = $lon
                        }
                    }
                    catch {
                        $metadata.GPS.LongitudeError = "Failed to parse: $_"
                    }
                }
            }

            # Process altitude if available
            if ($altitude -and $altitudeRef) {
                try {
                    $altNum = [BitConverter]::ToUInt32($altitude.Value, 0)
                    $altDen = [BitConverter]::ToUInt32($altitude.Value, 4)
                    if ($altDen -ne 0) {
                        $alt = $altNum / $altDen
                        # If altitudeRef is 1, altitude is below sea level
                        if ($altitudeRef.Value -eq 1) {
                            $alt = - $alt
                        }
                        $metadata.GPS.Altitude = $alt
                    }
                }
                catch {
                    $metadata.GPS.AltitudeError = "Failed to parse: $_"
                }
            }

            return
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Error (
                "Failed to process image metadata: $_"
            )
            return
        }
        finally {
            if ($image) {
                $image.Dispose()
            }
        }
    }

    end {
        return $metadata;
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Get-MediaFileCreationDate.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Extracts the best-effort creation date for media and other files.

.DESCRIPTION
Attempts several strategies to determine an accurate creation or capture
date for the specified file. strategies include reading image EXIF metadata,
parsing date/time information from filenames, and falling back to the file's
last-write time when no other reliable information is available. the function
always returns a [DateTime]; when no date can be determined it returns
[DateTime]::MinValue.

.PARAMETER FilePath
Path to the file to inspect. the path is expanded and normalized by
`GenXdev\Expand-Path` before inspection.

.EXAMPLE
Get-MediaFileCreationDate -FilePath '.\IMG_20250601_123000.jpg'

.EXAMPLE
#>

function Get-MediaFileCreationDate {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true)]
        [string]$FilePath
    )
    process {
        # Expand and normalize the incoming path using your custom module helper
        $FilePath = GenXdev\Expand-Path $FilePath

        # Defensive check: if path doesn't exist, gracefully fallback or return epoch/null
        # but to guarantee no throwing, we safely fetch item details
        $fileInfo = $null
        try {
            if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $FilePath -PathType Leaf) {
                $fileInfo = Microsoft.PowerShell.Management\Get-Item -LiteralPath $FilePath -Force
            }
        }
        catch {
            # Suppress errors completely
        }

        if ($null -eq $fileInfo) {
            # Fallback safe return if the file cannot be read or found at all
            return [DateTime]::MinValue
        }

        # --- Method 1: Try Image Metadata for Photos ---
        if ($fileInfo.Extension -match '\.(jpg|jpeg|tif|tiff|png)$') {
            $img = $null
            try {
                # Load picture metadata using the standard .NET System.Drawing namespace
                Microsoft.PowerShell.Utility\Add-Type -AssemblyName System.Drawing -ErrorAction SilentlyContinue

                $img = [System.Drawing.Image]::FromFile($fileInfo.FullName)

                # EXIF tags: 0x9003 = DateTimeOriginal, 0x0132 = DateTime (Modified)
                $dateProperty = $null
                try { $dateProperty = $img.GetPropertyItem(0x9003) } catch {}
                if ($null -eq $dateProperty) {
                    try { $dateProperty = $img.GetPropertyItem(0x0132) } catch {}
                }

                if ($null -ne $dateProperty) {
                    # EXIF string format is typically "YYYY:MM:DD HH:MM:SS\0"
                    $asciiStr = [System.Text.Encoding]::ASCII.GetString($dateProperty.Value)
                    if ($null -ne $asciiStr) {
                        $asciiStr = $asciiStr.Replace("`0", "").Trim()

                        # Convert custom EXIF colons into standard hyphenated date format
                        if ($asciiStr -match '^(\d{4}):(\d{2}):(\d{2})\s(.*)$') {
                            $parsedDateString = "$($Matches[1])-$($Matches[2])-$($Matches[3]) $($Matches[4])"
                            $extractedDate = $parsedDateString -as [DateTime]

                            if ($null -ne $extractedDate) {
                                $img.Dispose()
                                return $extractedDate
                            }
                        }
                    }
                }
            }
            catch {
                # Suppress exceptions completely and step to next method
            }
            finally {
                # Guaranteed cleanup of the file handle lock if open
                if ($null -ne $img) {
                    try { $img.Dispose() } catch {}
                }
            }
        }

        # --- Method 2: Intelligent Filename Parsing ---
        try {
            $baseName = $fileInfo.BaseName
            # Looks for 2026-06-14, 2026_06_14, or 20260614 bordered by non-digits
            $dateRegex = '(?<!\d)(\d{4})([-_]?)(\d{2})\2(\d{2})(?!\d)'

            if ($baseName -match $dateRegex) {
                $year = $Matches[1]
                $month = $Matches[3]
                $day = $Matches[4]

                # Check if there is an accompanying timestamp right after it (e.g., _060619)
                # Looking for an optional non-digit separator followed by HHMMSS
                $timeRegex = "(?<!\d)$year[-_]?$month[-_]?$day[-_ ]?(\d{2})(\d{2})(\d{2})(?!\d)"
                if ($baseName -match $timeRegex) {
                    $hour = $Matches[1]
                    $minute = $Matches[2]
                    $second = $Matches[3]
                    $constructedDateStr = "$year-$month-$day ${hour}:${minute}:$second"
                }
                else {
                    $constructedDateStr = "$year-$month-$day"
                }

                # Natively cast via the safe type operator; never throws an overload error
                $parsedDate = $constructedDateStr -as [DateTime]
                if ($null -ne $parsedDate) {
                    return $parsedDate
                }
            }
        }
        catch {
            # Suppress filename parsing exceptions completely
        }

        # --- Method 3: Ultimate Fallback to File Last Modified Date ---
        try {
            return $fileInfo.LastWriteTime
        }
        catch {
            # Ultimate safety fallback if file IO is entirely restricted
            return [DateTime]::MinValue
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Open-MediaFile.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Opens and plays media files using VLC media player with advanced filtering and
configuration options.

.DESCRIPTION
This function scans for media files based on search patterns,
creates a playlist, and launches VLC media player with comprehensive
configuration options. It supports videos, audio files, and pictures with
automatic VLC installation if needed. The function provides extensive control
over playback behavior, window positioning, audio/video settings, and subtitle
handling.

.PARAMETER Name
File name or pattern to search for. Supports wildcards. Default is '*' to find
all media files.

.PARAMETER InputObject
File name or pattern to search for from pipeline input. Default is "*".

.PARAMETER PlaylistPath
Playlist path to save the media files to. If not specified, the playlist will
be saved in a temporary directory.

.PARAMETER MaxDegreeOfParallelism
Maximum degree of parallelism for directory tasks.

.PARAMETER TimeoutSeconds
Optional: cancellation timeout in seconds.

.PARAMETER SendKeyEscape
Escape control characters and modifiers in the KeysToSend parameter.

.PARAMETER SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when processing KeysToSend.

.PARAMETER SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys.

.PARAMETER SendKeyHoldKeyboardFocus
Prevents returning keyboard focus to PowerShell after sending keys.

.PARAMETER Monitor
The monitor to display VLC on. 0 = default monitor, -1 = discard positioning.

.PARAMETER AspectRatio
Forces a specific aspect ratio for video content.

.PARAMETER Crop
Applies video cropping with specified dimensions.

.PARAMETER SubtitleFile
Path to an external subtitle file to use with video content.

.PARAMETER SubtitleScale
Sets the subtitle text scaling factor (10-500 percent).

.PARAMETER SubtitleLanguage
Specifies the preferred subtitle language from available tracks.

.PARAMETER AudioLanguage
Specifies the preferred audio language from available tracks.

.PARAMETER PreferredAudioLanguage
Sets the default preferred audio language for future playback.

.PARAMETER HttpProxy
HTTP proxy server address for network streaming content.

.PARAMETER HttpProxyPassword
Password for HTTP proxy authentication.

.PARAMETER VerbosityLevel
Sets VLC's log verbosity level (0=quiet, 1=errors, 2=verbose).

.PARAMETER SubdirectoryBehavior
Controls how subdirectories are handled in the playlist.

.PARAMETER IgnoredExtensions
File extensions to ignore during media file scanning.

.PARAMETER VLCPath
Full path to the VLC executable. Defaults to standard installation location.

.PARAMETER ReplayGainMode
Sets the audio replay gain mode to normalize volume levels across tracks.

.PARAMETER ReplayGainPreamp
Sets the replay gain preamp level in decibels (-20.0 to 20.0).

.PARAMETER ForceDolbySurround
Forces detection of Dolby Surround audio encoding.

.PARAMETER AudioFilters
Specifies audio filter modules to apply during playback.

.PARAMETER Visualization
Sets the audio visualization mode for audio-only content.

.PARAMETER Deinterlace
Controls video deinterlacing for improved quality on interlaced content.

.PARAMETER DeinterlaceMode
Specifies the deinterlacing algorithm to use.

.PARAMETER VideoFilters
Specifies video filter modules to apply during playback.

.PARAMETER VideoFilterModules
Additional video filter modules to load and apply.

.PARAMETER Modules
General VLC modules to load during startup.

.PARAMETER AudioFilterModules
Additional audio filter modules to load and apply.

.PARAMETER AudioVisualization
Sets the audio visualization mode for enhanced audio-only experience.

.PARAMETER PreferredSubtitleLanguage
Sets the default preferred subtitle language for future playback.

.PARAMETER IgnoredFileExtensions
File extensions to completely ignore during scanning.

.PARAMETER Arguments
Additional command-line arguments to pass directly to VLC.

.PARAMETER AllDrives
Search across all available drives instead of just the current directory.

.PARAMETER IncludeAlternateFileStreams
Include alternate data streams in search results.

.PARAMETER NoRecurse
Do not recurse into subdirectories during the file search.

.PARAMETER FollowSymlinkAndJunctions
Follow symlinks and junctions during directory traversal.

.PARAMETER MaxRecursionDepth
Maximum recursion depth for directory traversal. 0 means unlimited.

.PARAMETER MaxSearchUpDepth
Maximum recursion depth for continuing searching upwards the tree for relative
searches while no items are found. 0 means disabled.

.PARAMETER MaxFileSize
Maximum file size in bytes to include in results. 0 means unlimited.

.PARAMETER MinFileSize
Minimum file size in bytes to include in results. 0 means no minimum.

.PARAMETER ModifiedAfter
Only include files modified after this date/time (UTC).

.PARAMETER ModifiedBefore
Only include files modified before this date/time (UTC).

.PARAMETER AttributesToSkip
File attributes to skip (e.g., System, Hidden, or None). The default is
System.

.PARAMETER IncludeOpticalDiskDrives
Include optical disk drives.

.PARAMETER SearchDrives
Optional: search specific drives.

.PARAMETER DriveLetter
Optional: search specific drives.

.PARAMETER Root
Optional: search specific base folders combined with provided Names.

.PARAMETER OnlyVideos
Filter to only include video files in the playlist (.mp4, .avi, .mkv, .mov,
.wmv).

.PARAMETER OnlyAudio
Filter to only include audio files in the playlist (.mp3, .flac, .wav, .midi,
.mid, .au, .aiff, .aac, .m4a, .ogg, .wma, .ra, .ram, .rm, .rmm).

.PARAMETER OnlyPictures
Filter to only include picture files in the playlist (.jpg, .jpeg, .png, .gif,
.bmp, .tiff, .tif).

.PARAMETER IncludeVideos
Additionally include video files in the playlist when other filters are
applied.

.PARAMETER IncludeAudio
Additionally include audio files in the playlist when other filters are
applied.

.PARAMETER IncludePictures
Additionally include picture files in the playlist when other filters are
applied.

.PARAMETER NoBorders
Removes the window borders from the VLC player window.

.PARAMETER Left
Place the VLC window on the left side of the screen.

.PARAMETER Right
Place the VLC window on the right side of the screen.

.PARAMETER Top
Place the VLC window on the top side of the screen.

.PARAMETER Bottom
Place the VLC window on the bottom side of the screen.

.PARAMETER Centered
Place the VLC window in the center of the screen.

.PARAMETER Fullscreen
Maximize the VLC window to fullscreen mode.

.PARAMETER AlwaysOnTop
Keeps the VLC window always on top of other windows.

.PARAMETER Random
Enables random playback order (shuffle mode) for the playlist.

.PARAMETER Loop
Enables playlist looping - repeats the entire playlist when finished.

.PARAMETER Repeat
Enables single item repeat - repeats the current media file indefinitely.

.PARAMETER StartPaused
Starts VLC in paused state instead of immediately playing.

.PARAMETER PlayAndExit
Automatically exits VLC when playback is completed.

.PARAMETER DisableAudio
Completely disables audio output during playback.

.PARAMETER DisableSubtitles
Completely disables subtitle display during playback.

.PARAMETER AutoScale
Enables automatic video scaling to fit the window.

.PARAMETER HighPriority
Increases the process priority of the VLC player for better performance.

.PARAMETER EnableTimeStretch
Enables audio time stretching to maintain pitch during speed changes.

.PARAMETER NewWindow
Forces opening a new VLC instance instead of using existing one.

.PARAMETER EnableWallpaperMode
Enables video wallpaper mode where video plays as desktop background.

.PARAMETER EnableAudioTimeStretch
Enables advanced audio time stretching capabilities.

.PARAMETER Close
Closes the VLC media player window.

.PARAMETER SideBySide
Places the VLC window side by side with PowerShell or on a different monitor
for fullscreen mode.

.PARAMETER FocusWindow
Focuses the VLC window after opening.

.PARAMETER SetForeground
Sets the VLC window to foreground after opening.

.PARAMETER Maximize
Maximize the window after positioning.

.PARAMETER RestoreFocus
Restores PowerShell window focus after opening VLC.

.PARAMETER SessionOnly
Uses alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clears alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Stores settings only in persistent preferences without affecting session.

.PARAMETER CaseNameMatching
Gets or sets the case-sensitivity for files and directories.

.PARAMETER MaxRecursionDepth
Maximum recursion depth for directory traversal. 0 means unlimited.

.PARAMETER MaxFileSize
Maximum file size in bytes to include in results. 0 means unlimited.

.PARAMETER MinFileSize
Minimum file size in bytes to include in results. 0 means no minimum.

.PARAMETER ModifiedAfter
Only include files modified after this date/time (UTC).

.PARAMETER ModifiedBefore
Only include files modified before this date/time (UTC).

.PARAMETER AttributesToSkip
File attributes to skip (e.g., System, Hidden or None).

.PARAMETER Exclude
Exclude files or directories matching these wildcard patterns.

.PARAMETER PassThru
Returns the files found by the search.

.PARAMETER PassThruNoOpen
Returns the files found by the search without opening VLC.

.PARAMETER PassThruWindow
Returns the window helper for each process.

.EXAMPLE
Open-MediaFile

Opens all media files in the current directory using default VLC settings.

.EXAMPLE
vlcmedia ~\Pictures -OnlyPictures -Fullscreen

Opens only picture files from the Pictures folder in fullscreen mode using the
alias 'vlcmedia'.

.EXAMPLE
media ~\Videos -OnlyVideos -Loop

Opens video files with looping enabled using the alias 'media'.
#>
function Open-MediaFile {

    [CmdletBinding()]
    [Alias('vlcmedia', 'media', 'findmedia')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = "File name or pattern to search for. Default is '*'"
        )]
        [Alias("like", "Path", "LiteralPath", "Query", "SearchMask", "Include")]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [string[]] $Name = '*',
        <#
        .PARAMETER AllDrives
        Search across all available drives.
        #>
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Search across all available drives'
        )]

        [switch] $AllDrives,
        <#
        .PARAMETER NoRecurse
        Do not recurse into subdirectories.
        #>
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Do not recurse into subdirectories'
        )]
        [switch] $NoRecurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Follow symlinks and junctions during directory traversal.'
        )]
        [switch] $FollowSymlinkAndJunctions,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum recursion depth for continuing searching upwards the tree for relative searches, while no items are found. 0 means disabled.'
        )]
        [Alias('maxupward')]
        [int] $MaxSearchUpDepth = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum file size in bytes to include in results. 0 means unlimited.'
        )]
        [Alias('maxlength', 'maxsize')]
        [long] $MaxFileSize = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Minimum file size in bytes to include in results. 0 means no minimum.'
        )]
        [Alias('minsize', 'minlength')]
        [long] $MinFileSize = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only include files modified after this date/time (UTC).'
        )]
        [Alias('ma', 'after')]
        [DateTime] $ModifiedAfter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only include files modified before this date/time (UTC).'
        )]
        [Alias('before', 'mb')]
        [DateTime] $ModifiedBefore,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'File attributes to skip (e.g., System, Hidden or None).'
        )]
        [Alias('skipattr')]
        [System.IO.FileAttributes] $AttributesToSkip = [System.IO.FileAttributes]::System,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'File name or pattern to search for from pipeline input. Default is "*"'
        )]
        [Alias('FullName')]
        [SupportsWildcards()]
        [object] $InputObject,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Playlist path to save the media files to. If not specified, ' +
            'the playlist will be saved in a temporary directory.'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $PlaylistPath = [System.IO.Path]::GetTempFileName() + '.m3u',
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'The initial width of the window'
        )]
        [int] $Width = -1,
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The initial height of the window'
        )]
        [int] $Height = -1,
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'The initial X position of the window'
        )]
        [int] $X = -999999,
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'The initial Y position of the window'
        )]
        [int] $Y = -999999,
        [Parameter(
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = ('Keystrokes to send to the VLC Player Window, see ' +
                'documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum degree of parallelism for directory tasks'
        )]
        [Alias('threads')]
        [int] $MaxDegreeOfParallelism = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Optional: cancellation timeout in seconds'
        )]
        [Alias('maxseconds')]
        [int] $TimeoutSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers when sending keys to VLC'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter when sending keys to VLC'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay between different input strings in milliseconds when sending keys to VLC'
        )]
        [ValidateRange(0, [int]::MaxValue)]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on the VLC window after sending keys'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard'
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -2,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Source aspect ratio'
        )]
        [string] $AspectRatio,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Video cropping'
        )]
        [string] $Crop,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use subtitle file'
        )]
        [string] $SubtitleFile,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Subtitles text scaling factor'
        )]
        [ValidateRange(10, 500)]
        [int] $SubtitleScale,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Subtitle language'
        )]
        [ValidateSet(
            'Afrikaans', 'Akan', 'Albanian', 'Amharic', 'Arabic', 'Armenian',
            'Azerbaijani', 'Basque', 'Belarusian', 'Bemba', 'Bengali', 'Bihari',
            'Bork, bork, bork!', 'Bosnian', 'Breton', 'Bulgarian', 'Cambodian',
            'Catalan', 'Cherokee', 'Chichewa', 'Chinese (Simplified)',
            'Chinese (Traditional)', 'Corsican', 'Croatian', 'Czech', 'Danish',
            'Dutch', 'Elmer Fudd', 'English', 'Esperanto', 'Estonian', 'Ewe',
            'Faroese', 'Filipino', 'Finnish', 'French', 'Frisian', 'Ga',
            'Galician', 'Georgian', 'German', 'Greek', 'Guarani', 'Gujarati',
            'Hacker', 'Haitian Creole', 'Hausa', 'Hawaiian', 'Hebrew', 'Hindi',
            'Hungarian', 'Icelandic', 'Igbo', 'Indonesian', 'Interlingua',
            'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada', 'Kazakh',
            'Kinyarwanda', 'Kirundi', 'Klingon', 'Kongo', 'Korean',
            'Krio (Sierra Leone)', 'Kurdish', 'Kurdish (Soranî)', 'Kyrgyz',
            'Laothian', 'Latin', 'Latvian', 'Lingala', 'Lithuanian', 'Lozi',
            'Luganda', 'Luo', 'Macedonian', 'Malagasy', 'Malay', 'Malayalam',
            'Maltese', 'Maori', 'Marathi', 'Mauritian Creole', 'Moldavian',
            'Mongolian', 'Montenegrin', 'Nepali', 'Nigerian Pidgin',
            'Northern Sotho', 'Norwegian', 'Norwegian (Nynorsk)', 'Occitan',
            'Oriya', 'Oromo', 'Pashto', 'Persian', 'Pirate', 'Polish',
            'Portuguese (Brazil)', 'Portuguese (Portugal)', 'Punjabi',
            'Quechua', 'Romanian', 'Romansh', 'Runyakitara', 'Russian',
            'Scots Gaelic', 'Serbian', 'Serbo-Croatian', 'Sesotho', 'Setswana',
            'Seychellois Creole', 'Shona', 'Sindhi', 'Sinhalese', 'Slovak',
            'Slovenian', 'Somali', 'Spanish', 'Spanish (Latin American)',
            'Sundanese', 'Swahili', 'Swedish', 'Tajik', 'Tamil', 'Tatar',
            'Telugu', 'Thai', 'Tigrinya', 'Tonga', 'Tshiluba', 'Tumbuka',
            'Turkish', 'Turkmen', 'Twi', 'Uighur', 'Ukrainian', 'Urdu',
            'Uzbek', 'Vietnamese', 'Welsh', 'Wolof', 'Xhosa', 'Yiddish',
            'Yoruba', 'Zulu')]
        [string] $SubtitleLanguage,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio language'
        )]
        [ValidateSet(
            'Afrikaans', 'Akan', 'Albanian', 'Amharic', 'Arabic', 'Armenian',
            'Azerbaijani', 'Basque', 'Belarusian', 'Bemba', 'Bengali', 'Bihari',
            'Bork, bork, bork!', 'Bosnian', 'Breton', 'Bulgarian', 'Cambodian',
            'Catalan', 'Cherokee', 'Chichewa', 'Chinese (Simplified)',
            'Chinese (Traditional)', 'Corsican', 'Croatian', 'Czech', 'Danish',
            'Dutch', 'Elmer Fudd', 'English', 'Esperanto', 'Estonian', 'Ewe',
            'Faroese', 'Filipino', 'Finnish', 'French', 'Frisian', 'Ga',
            'Galician', 'Georgian', 'German', 'Greek', 'Guarani', 'Gujarati',
            'Hacker', 'Haitian Creole', 'Hausa', 'Hawaiian', 'Hebrew', 'Hindi',
            'Hungarian', 'Icelandic', 'Igbo', 'Indonesian', 'Interlingua',
            'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada', 'Kazakh',
            'Kinyarwanda', 'Kirundi', 'Klingon', 'Kongo', 'Korean',
            'Krio (Sierra Leone)', 'Kurdish', 'Kurdish (Soranî)', 'Kyrgyz',
            'Laothian', 'Latin', 'Latvian', 'Lingala', 'Lithuanian', 'Lozi',
            'Luganda', 'Luo', 'Macedonian', 'Malagasy', 'Malay', 'Malayalam',
            'Maltese', 'Maori', 'Marathi', 'Mauritian Creole', 'Moldavian',
            'Mongolian', 'Montenegrin', 'Nepali', 'Nigerian Pidgin',
            'Northern Sotho', 'Norwegian', 'Norwegian (Nynorsk)', 'Occitan',
            'Oriya', 'Oromo', 'Pashto', 'Persian', 'Pirate', 'Polish',
            'Portuguese (Brazil)', 'Portuguese (Portugal)', 'Punjabi',
            'Quechua', 'Romanian', 'Romansh', 'Runyakitara', 'Russian',
            'Scots Gaelic', 'Serbian', 'Serbo-Croatian', 'Sesotho', 'Setswana',
            'Seychellois Creole', 'Shona', 'Sindhi', 'Sinhalese', 'Slovak',
            'Slovenian', 'Somali', 'Spanish', 'Spanish (Latin American)',
            'Sundanese', 'Swahili', 'Swedish', 'Tajik', 'Tamil', 'Tatar',
            'Telugu', 'Thai', 'Tigrinya', 'Tonga', 'Tshiluba', 'Tumbuka',
            'Turkish', 'Turkmen', 'Twi', 'Uighur', 'Ukrainian', 'Urdu',
            'Uzbek', 'Vietnamese', 'Welsh', 'Wolof', 'Xhosa', 'Yiddish',
            'Yoruba', 'Zulu')]
        [string] $AudioLanguage,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Preferred audio language'
        )]
        [ValidateSet(
            'Afrikaans', 'Akan', 'Albanian', 'Amharic', 'Arabic', 'Armenian',
            'Azerbaijani', 'Basque', 'Belarusian', 'Bemba', 'Bengali', 'Bihari',
            'Bork, bork, bork!', 'Bosnian', 'Breton', 'Bulgarian', 'Cambodian',
            'Catalan', 'Cherokee', 'Chichewa', 'Chinese (Simplified)',
            'Chinese (Traditional)', 'Corsican', 'Croatian', 'Czech', 'Danish',
            'Dutch', 'Elmer Fudd', 'English', 'Esperanto', 'Estonian', 'Ewe',
            'Faroese', 'Filipino', 'Finnish', 'French', 'Frisian', 'Ga',
            'Galician', 'Georgian', 'German', 'Greek', 'Guarani', 'Gujarati',
            'Hacker', 'Haitian Creole', 'Hausa', 'Hawaiian', 'Hebrew', 'Hindi',
            'Hungarian', 'Icelandic', 'Igbo', 'Indonesian', 'Interlingua',
            'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada', 'Kazakh',
            'Kinyarwanda', 'Kirundi', 'Klingon', 'Kongo', 'Korean',
            'Krio (Sierra Leone)', 'Kurdish', 'Kurdish (Soranî)', 'Kyrgyz',
            'Laothian', 'Latin', 'Latvian', 'Lingala', 'Lithuanian', 'Lozi',
            'Luganda', 'Luo', 'Macedonian', 'Malagasy', 'Malay', 'Malayalam',
            'Maltese', 'Maori', 'Marathi', 'Mauritian Creole', 'Moldavian',
            'Mongolian', 'Montenegrin', 'Nepali', 'Nigerian Pidgin',
            'Northern Sotho', 'Norwegian', 'Norwegian (Nynorsk)', 'Occitan',
            'Oriya', 'Oromo', 'Pashto', 'Persian', 'Pirate', 'Polish',
            'Portuguese (Brazil)', 'Portuguese (Portugal)', 'Punjabi',
            'Quechua', 'Romanian', 'Romansh', 'Runyakitara', 'Russian',
            'Scots Gaelic', 'Serbian', 'Serbo-Croatian', 'Sesotho', 'Setswana',
            'Seychellois Creole', 'Shona', 'Sindhi', 'Sinhalese', 'Slovak',
            'Slovenian', 'Somali', 'Spanish', 'Spanish (Latin American)',
            'Sundanese', 'Swahili', 'Swedish', 'Tajik', 'Tamil', 'Tatar',
            'Telugu', 'Thai', 'Tigrinya', 'Tonga', 'Tshiluba', 'Tumbuka',
            'Turkish', 'Turkmen', 'Twi', 'Uighur', 'Ukrainian', 'Urdu',
            'Uzbek', 'Vietnamese', 'Welsh', 'Wolof', 'Xhosa', 'Yiddish',
            'Yoruba', 'Zulu')]
        [string] $PreferredAudioLanguage,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'HTTP proxy'
        )]
        [string] $HttpProxy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'HTTP proxy password'
        )]
        [string] $HttpProxyPassword,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Verbosity level'
        )]
        [ValidateRange(0, 2)]
        [int] $VerbosityLevel,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Subdirectory behavior'
        )]
        [ValidateSet('None', 'Collapse', 'Expand')]
        [string] $SubdirectoryBehavior,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Ignored extensions'
        )]
        [string] $IgnoredExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Path to VLC executable'
        )]
        [string] $VLCPath = "${env:ProgramFiles}\VideoLAN\VLC\vlc.exe",
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Replay gain mode'
        )]
        [ValidateSet('None', 'Track', 'Album')]
        [string] $ReplayGainMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Replay gain preamp'
        )]
        [ValidateRange(-20.0, 20.0)]
        [float] $ReplayGainPreamp,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force detection of Dolby Surround'
        )]
        [ValidateSet('Auto', 'On', 'Off')]
        [string] $ForceDolbySurround,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio filters'
        )]
        [string[]] $AudioFilters,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio visualizations'
        )]
        [ValidateSet('None', 'Goom', 'ProjectM', 'Visual', 'GLSpectrum')]
        [string] $Visualization,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Deinterlace'
        )]
        [ValidateSet('Off', 'Automatic', 'On')]
        [string] $Deinterlace,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Deinterlace mode'
        )]
        [ValidateSet('Auto', 'Discard', 'Blend', 'Mean', 'Bob', 'Linear', 'X',
            'Yadif', 'Yadif2x', 'Phosphor', 'IVTC')]
        [string] $DeinterlaceMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Video filter module'
        )]
        [string[]] $VideoFilters,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Video filter modules'
        )]
        [string[]] $VideoFilterModules,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Modules'
        )]
        [string[]] $Modules,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio filter modules'
        )]
        [string[]] $AudioFilterModules,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio visualization mode'
        )]
        [ValidateSet('None', 'Goom', 'ProjectM', 'Visual', 'GLSpectrum')]
        [string] $AudioVisualization,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Preferred subtitle language'
        )]
        [string] $PreferredSubtitleLanguage,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Ignored file extensions'
        )]
        [string] $IgnoredFileExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Additional arguments'
        )]
        [string] $Arguments,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Include alternate data streams in search results'
        )]
        [Alias('ads')]
        [switch] $IncludeAlternateFileStreams,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only include video files in the playlist'
        )]
        [switch] $OnlyVideos,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only include audio files in the playlist'
        )]
        [switch] $OnlyAudio,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Only include pictures in the playlist'
        )]
        [switch] $OnlyPictures,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Additionally include videos in the playlist'
        )]
        [switch] $IncludeVideos,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Additionally include audio files in the playlist'
        )]
        [switch] $IncludeAudio,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Additionally include pictures in the playlist'
        )]
        [switch] $IncludePictures,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the left side of the screen'
        )]
        [switch] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the right side of the screen'
        )]
        [switch] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the top side of the screen'
        )]
        [switch] $Top,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the bottom side of the screen'
        )]
        [switch] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window in the center of the screen'
        )]
        [switch] $Centered,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sends F11 to the window'
        )]
        [Alias('fs')]
        [switch]$FullScreen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Always on top'
        )]
        [switch] $AlwaysOnTop,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Play files randomly forever'
        )]
        [Alias('Shuffle')]
        [switch] $Random,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Repeat all'
        )]
        [switch] $Loop,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Repeat current item'
        )]
        [switch] $Repeat,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Start paused'
        )]
        [switch] $StartPaused,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Play and exit'
        )]
        [switch] $PlayAndExit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable audio'
        )]
        [switch] $DisableAudio,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable subtitles'
        )]
        [switch] $DisableSubtitles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Video Auto Scaling'
        )]
        [switch] $AutoScale,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Increase the priority of the process'
        )]
        [switch] $HighPriority,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable time stretching audio'
        )]
        [switch] $EnableTimeStretch,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open new VLC mediaplayer instance'
        )]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable video wallpaper mode'
        )]
        [switch] $EnableWallpaperMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable audio time stretching'
        )]
        [switch] $EnableAudioTimeStretch,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Close the VLC media player window'
        )]
        [switch] $Close,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Will either set the window fullscreen on a ' +
                'different monitor than Powershell, or side by side ' +
                'with Powershell on the same monitor')
        )]
        [Alias('sbs')]
        [switch]$SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the VLC window after opening'
        )]
        [Alias('fw', 'focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the VLC window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window'
        )]
        [switch] $Maximize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restores PowerShell window focus after opening VLC.'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use alternative settings stored in session for AI preferences'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences'
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Store settings only in persistent preferences without affecting session'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Gets or sets the case-sensitivity for files and directories'
        )]
        [Alias('casing', 'CaseSearchMaskMatching')]
        [System.IO.MatchCasing] $CaseNameMatching = [System.IO.MatchCasing]::PlatformDefault,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximum recursion depth for directory traversal. 0 means unlimited.'
        )]
        [Alias('md', 'depth', 'maxdepth')]
        [int] $MaxRecursionDepth = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Exclude files or directories matching these wildcard patterns (e.g., *.tmp, *\\bin\\*).'
        )]
        [Alias('skiplike')]
        [string[]] $Exclude = @('*\\.git\\*'),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns the files found by the search'
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns the files found by the search without opening VLC'
        )]
        [switch] $PassThruNoOpen,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns the window helper for each process'
        )]
        [switch] $PassThruWindow
    )

    begin {

        # set comfortable default that can be overridden by user
        $RestoreFocus = $PSBoundParameters.ContainsKey('RestoreFocus') ?
        $RestoreFocus : $true;

        $SideBySide = $PSBoundParameters.ContainsKey('SideBySide') ?
        $SideBySide : (GenXdev\Get-MonitorCount) -lt 2;

        $FullScreen = $PSBoundParameters.ContainsKey('FullScreen') ?
        $FullScreen : (-not $SideBySide);

        # expand the playlist path and ensure directory exists for m3u file
        $PlaylistPath = GenXdev\Expand-Path $PlaylistPath `
            -CreateDirectory `
            -DeleteExistingFile

        # copy parameters from current function to find-item function parameters
        # this maintains consistency in parameter handling across functions
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -FunctionName 'GenXdev\Find-Item' `
            -BoundParameters $PSBoundParameters `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

        # ensure we get file objects back instead of just paths for processing
        $invocationParams.PassThru = $true

        # determine which media categories to search for based on user filters
        $invocationParams.Category = @(
            (
                @($OnlyVideos ? 'Videos' : (
                        $OnlyAudio ? 'Music' : (
                            $OnlyPictures ? 'Pictures' : @()
                        )
                    )) +
                ($IncludeVideos ? 'Videos' : @()) +
                ($IncludeAudio ? 'Music' : @()) +
                ($IncludePictures ? 'Pictures' : @())
            ) |
                Microsoft.PowerShell.Utility\Select-Object -Unique
        )

        # default to all media types if no specific category filters applied
        if ($invocationParams.Category.Count -eq 0) {

            $invocationParams.Category = @('Videos', 'Music', 'Pictures')
        }

        # log the search parameters for troubleshooting purposes
        Microsoft.PowerShell.Utility\Write-Verbose ('Searching for files with ' +
            'parameters: ' + ($invocationParams.Keys -join ', '))

        # log the playlist location for debugging and troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose ('Creating playlist at: ' +
            $playlistPath)

        # initialize stream variables for safe disposal in finally block
        $fileStream = $null
        $streamWriter = $null

        # create file stream for writing playlist with proper encoding and buffering
        $fileStream = [System.IO.FileStream]::new(
            $PlaylistPath,
            [System.IO.FileMode]::Create,
            [System.IO.FileAccess]::Write,
            [System.IO.FileShare]::Read
        )

        # create stream writer with utf-8 encoding for proper m3u compatibility
        $streamWriter = [System.IO.StreamWriter]::new(
            $fileStream,
            [System.Text.Encoding]::UTF8
        )

        # write the m3u header to start the playlist file
        $streamWriter.WriteLine("#EXTM3U")

        # initialize collections for managing input and found files
        [System.Collections.Generic.List[System.IO.FileInfo]] $inputFiles = @()
        [System.Collections.Generic.List[System.IO.FileInfo]] $allFiles = @()
    }

    process {

        # log current parameter set name for debugging pipeline behavior
        Microsoft.PowerShell.Utility\Write-Verbose (
            "process: Detected paramset : $($PSCmdlet.ParameterSetName)")

        # skip processing if no input received from pipeline
        if ($null -eq $Input) { return }

        # recursive function to process various input object types
        function processObject($inputObj) {

            # log the type of object being processed for troubleshooting
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Processing input object of type: $($inputObj.GetType().FullName)")

            # directly add fileinfo objects to the final collection
            if ($inputObj -is [System.IO.FileInfo]) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Adding FileInfo to allFiles: $($inputObj.FullName)")

                $null = $allFiles.Add($inputObj)
                return
            }

            # add strings and directory objects to search collection
            if ($inputObj -is [string] -or $inputObj -is [System.IO.DirectoryInfo]) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Adding String or DirectoryInfo to inputFiles: $inputObj")

                $null = $inputFiles.Add($inputObj)
                return
            }

            # recursively process enumerable collections
            if ($inputObj -is [System.Collections.IEnumerable]) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Processing IEnumerable, iterating through items...")

                foreach ($item in $inputObj) {

                    processObject($item)
                }
                return
            }

            # handle any other object types by forcing array conversion
            @($inputObj) |
                Microsoft.PowerShell.Core\ForEach-Object {

                    # avoid infinite recursion for the same object
                    if ($_ -ne $inputObj) {

                        processObject($_)
                    }
                }
        }

        # process the pipeline input through our recursive handler
        processObject($Input)
    }

    end {
        Microsoft.PowerShell.Utility\Write-Verbose "end: Detected paramset : $($PSCmdlet.ParameterSetName)"

        try {

            # Only use Find-Item if we're in Default parameter set (no pipeline input)
            # OR if we received directories/strings that need to be searched
            # BUT NOT if we already have FileInfo objects from pipeline
            $shouldUseFindItem = ($PSBoundParameters.ContainsKey("Name") -or
                ($inputFiles.Count -gt 0) -or ($allFiles.Count -eq 0))

            if ($shouldUseFindItem) {

                Microsoft.PowerShell.Utility\Write-Verbose "** Performing search for provided names.`r`n$($invocationParams | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 3)"

                Microsoft.PowerShell.Utility\Write-Verbose ($InvocationParams | Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 3)

                if ($inputFiles.Count -gt 0) {

                    Microsoft.PowerShell.Utility\Write-Verbose "Processing $($inputFiles.Count) input files or directories."

                    # find all matching files and sort them alphabetically by full path
                    $InputFiles | GenXdev\Find-Item @invocationParams | Microsoft.PowerShell.Core\ForEach-Object {

                        $null = $allFiles.Add($_)
                    }
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose "No input files or directories provided, searching based on Names parameter only.";

                    # find all matching files and sort them alphabetically by full path
                    GenXdev\Find-Item @invocationParams | Microsoft.PowerShell.Core\ForEach-Object {

                        $null = $allFiles.Add($_)
                    }
                }
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Found $($allFiles.Count) files matching criteria."

            $allFiles | Microsoft.PowerShell.Utility\Sort-Object -Property FullName | Microsoft.PowerShell.Core\ForEach-Object {

                # log each file being added to the playlist for troubleshooting
                Microsoft.PowerShell.Utility\Write-Verbose ('Adding file to ' +
                    'playlist: ' + $_.FullName)

                # create more readable display names by cleaning up file names
                $displayName = $_.Name.Replace('_', ' ').Replace('.', ' ').Replace('  ', ' ')

                # build m3u format entry with duration (-1 = unknown) and file path
                # extinf format: #extinf:duration,title followed by path on next line
                $streamWriter.WriteLine("#EXTINF:-1, $displayName")
                $streamWriter.WriteLine($_.FullName)

                if ($PassThru) {

                    Microsoft.PowerShell.Utility\Write-Output $_
                }
            }
        }
        catch {

            # log any errors encountered during playlist creation for troubleshooting
            Microsoft.PowerShell.Utility\Write-Error (
                'Error creating playlist: ' + $_.Exception.Message)
            return
        }
        finally {

            # ensure the stream writer is properly disposed to flush all data
            if ($streamWriter) {

                $streamWriter.Flush()
                $streamWriter.Dispose()
                $streamWriter = $null
            }

            # ensure the file stream is properly disposed to release file handle
            if ($fileStream) {

                $fileStream.Dispose()
                $fileStream = $null
            }
        }

        # return early if user only wants file list without opening vlc
        if ($PassThruNoOpen) {

            return
        }

        # confirm playlist creation was successful for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose ('Playlist created ' +
            'successfully')

        # ensure no existing vlc instances are running to avoid conflicts
        Microsoft.PowerShell.Utility\Write-Verbose 'Stopping existing VLC processes'

        # forcibly terminate any running vlc processes to ensure clean launch
        $null = Microsoft.PowerShell.Management\Get-Process vlc `
            -ErrorAction SilentlyContinue |
            Microsoft.PowerShell.Management\Stop-Process -Force

        # copy all relevant parameters from current function to vlc media player
        # this ensures consistent parameter handling and reduces code duplication
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -FunctionName 'GenXdev\Open-VlcMediaPlayer' `
            -BoundParameters $PSBoundParameters `
        (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Core\Where-Object {
                    $_.Value -isnot [int] -or $_.Value -ne 0
                })

        # configure specific parameters for vlc media player invocation
        $invocationParams.Path = $playlistPath        # use our generated playlist
        $invocationParams.PassThru = $true            # return window helper object

        # log that we're about to launch vlc media player with playlist
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting VLC player'

        # launch vlc with all configured parameters and capture the window helper
        # for potential manipulation if passthru window is requested
        $vlcWindowHelper = GenXdev\Open-VlcMediaPlayer @invocationParams

        # return the window helper object only if explicitly requested via passthru
        # this allows further manipulation of the vlc window programmatically
        if ($PassThruWindow) {

            Microsoft.PowerShell.Utility\Write-Output $vlcWindowHelper
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Open-VlcMediaPlayer.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Launches and controls VLC Media Player with extensive configuration options.

.DESCRIPTION
This function provides a comprehensive interface to launch and control VLC
Media Player with support for window positioning, monitor selection, playback
settings, audio and video filters, subtitle handling, multiple language
support, network proxy settings, and advanced performance options. The
function can automatically install VLC if not present and provides extensive
customization for media playbook scenarios. It integrates seamlessly with the
GenXdev window management system and supports keyboard input automation through
the Send-Key functionality.

.PARAMETER Path
The media file(s) or URL(s) to open in VLC. Supports local files, network

.PARAMETER Width
The initial width of the VLC window in pixels. Used for precise window sizing.

.PARAMETER Height
The initial height of the VLC window in pixels. Used for precise window sizing.

.PARAMETER X
The initial X position of the VLC window on the screen in pixels.

.PARAMETER Y
The initial Y position of the VLC window on the screen in pixels.

.PARAMETER KeysToSend
Keystrokes to send to the VLC Player Window after opening. Uses the same
syntax as the GenXdev\Send-Key function for automation purposes.

.PARAMETER SendKeyEscape
Escape control characters and modifiers when sending keys to VLC to ensure
literal key interpretation.

.PARAMETER SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys to VLC for line breaks.

.PARAMETER SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys to
ensure reliable delivery.

.PARAMETER SendKeyHoldKeyboardFocus
Hold keyboard focus on the VLC window after sending keys instead of returning
focus to PowerShell.

.PARAMETER Monitor
The monitor to use for VLC display. 0 = default monitor, -1 = discard
positioning, >0 = specific monitor number.

.PARAMETER AspectRatio
Source aspect ratio for video display to ensure correct proportions.

.PARAMETER Crop
Video cropping settings to adjust the visible video area.

.PARAMETER SubtitleFile
Path to subtitle file to use with the media for caption display.

.PARAMETER SubtitleScale
Subtitles text scaling factor percentage for readability adjustment.

.PARAMETER SubtitleLanguage
Subtitle language preference for multi-language content selection.

.PARAMETER AudioLanguage
Audio language preference for multi-language content selection.

.PARAMETER PreferredAudioLanguage
Preferred audio language for multi-language content when multiple tracks exist.

.PARAMETER HttpProxy
HTTP proxy server for network streams when behind corporate firewalls.

.PARAMETER HttpProxyPassword
HTTP proxy password for authentication when required by proxy server.

.PARAMETER VerbosityLevel
Verbosity level for VLC output to control logging detail.

.PARAMETER SubdirectoryBehavior
How to handle subdirectories in playlists for folder-based media organization.

.PARAMETER IgnoredExtensions
File extensions to ignore when building playlists to filter unwanted files.

.PARAMETER VLCPath
Custom path to VLC executable when installed in non-standard location.

.PARAMETER ReplayGainMode
Replay gain mode for audio normalization to maintain consistent volume levels.

.PARAMETER ReplayGainPreamp
Replay gain preamp value in decibels for volume adjustment.

.PARAMETER ForceDolbySurround
Force detection of Dolby Surround audio for enhanced audio processing.

.PARAMETER AudioFilters
Audio filters to apply during playback for sound enhancement.

.PARAMETER Visualization
Audio visualization type to display for audio-only content.

.PARAMETER Deinterlace
Deinterlace video content to improve quality of interlaced video.

.PARAMETER DeinterlaceMode
Deinterlace algorithm to use for optimal video quality processing.

.PARAMETER VideoFilters
Video filters to apply during playback for visual enhancement.

.PARAMETER VideoFilterModules
Video filter modules to load for advanced video processing.

.PARAMETER Modules
Additional modules to load for extended VLC functionality.

.PARAMETER AudioFilterModules
Audio filter modules to load for advanced audio processing.

.PARAMETER AudioVisualization
Audio visualization mode for visual representation of audio content.

.PARAMETER PreferredSubtitleLanguage
Preferred subtitle language for automatic subtitle selection.

.PARAMETER IgnoredFileExtensions
File extensions to ignore during media file processing.

.PARAMETER Arguments
Additional command-line arguments to pass to VLC for custom configuration.

.PARAMETER NoBorders
Removes window borders for a cleaner, distraction-free viewing experience.

.PARAMETER Left
Places VLC window on left side of screen for side-by-side arrangements.

.PARAMETER Right
Places VLC window on right side of screen for side-by-side arrangements.

.PARAMETER Top
Places VLC window on top side of screen for vertical arrangements.

.PARAMETER Bottom
Places VLC window on bottom side of screen for vertical arrangements.

.PARAMETER Centered
Centers the VLC window on screen for optimal viewing position.

.PARAMETER Fullscreen
Maximizes the VLC window to fullscreen for immersive viewing.

.PARAMETER PassThru
Returns the window helper object for further manipulation and control.

.PARAMETER AlwaysOnTop
Keeps the VLC window always on top of other windows for persistent visibility.

.PARAMETER Random
Play files randomly forever in shuffle mode for varied playback order.

.PARAMETER Loop
Repeat all files in the playlist continuously for extended viewing.

.PARAMETER Repeat
Repeat current item continuously for focused content consumption.

.PARAMETER StartPaused
Start playback in paused state for manual playback control.

.PARAMETER PlayAndExit
Play media and exit VLC when finished for automated batch processing.

.PARAMETER DisableAudio
Disable audio output completely for silent video playback.

.PARAMETER DisableSubtitles
Disable all subtitles for clean video display without captions.

.PARAMETER AutoScale
Enable automatic video scaling for optimal display size adjustment.

.PARAMETER HighPriority
Increase the priority of the VLC process for better performance.

.PARAMETER EnableTimeStretch
Enable time stretching audio during playback for speed adjustments.

.PARAMETER NewWindow
Open new VLC mediaplayer instance instead of reusing existing windows.

.PARAMETER EnableWallpaperMode
Enable video wallpaper mode for desktop background video display.

.PARAMETER EnableAudioTimeStretch
Enable audio time stretching for playback speed modifications.

.PARAMETER Close
Close the VLC media player window and terminate the process.

.PARAMETER SideBySide
Will either set the window fullscreen on a different monitor than PowerShell,
or side by side with PowerShell on the same monitor for workflow optimization.

.PARAMETER FocusWindow
Focus the VLC window after opening for immediate interaction readiness.

.PARAMETER SetForeground
Set the VLC window to foreground after opening for visibility assurance.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus after opening VLC for continued workflow.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences during current
session only.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences to reset
configuration.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session to
maintain separation.

.EXAMPLE
Open-VlcMediaPlayer -Path "video.mp4" -Fullscreen -Monitor 0
Opens a video file in fullscreen mode on the primary monitor for immersive
viewing experience.

.EXAMPLE
vlc "video.mp4" -fs -m 0
Short form using aliases to open video fullscreen on monitor 0 with minimal
typing required.

.EXAMPLE
Open-VlcMediaPlayer -Path "movie.mkv" -SubtitleFile "movie.srt" -AudioLanguage "English"
Opens a movie with external subtitles and specific audio language for
enhanced viewing with captions.
#>
function Open-VlcMediaPlayer {

    [CmdletBinding()]
    [Alias('vlc')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The media file(s) or URL(s) to open in VLC'
        )]
        [string[]]$Path,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'The initial width of the window'
        )]
        [int] $Width = -1,
        [Parameter(
            Position = 2,
            Mandatory = $false,
            HelpMessage = 'The initial height of the window'
        )]
        [int] $Height = -1,
        [Parameter(
            Position = 3,
            Mandatory = $false,
            HelpMessage = 'The initial X position of the window'
        )]
        [int] $X = -999999,
        [Parameter(
            Position = 4,
            Mandatory = $false,
            HelpMessage = 'The initial Y position of the window'
        )]
        [int] $Y = -999999,
        [Parameter(
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = ('Keystrokes to send to the VLC Player Window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers when sending keys to VLC'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter when sending keys to VLC'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay between different input strings in milliseconds when sending keys to VLC'
        )]
        [ValidateRange(0, [int]::MaxValue)]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds = 50,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on the VLC window after sending keys'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Alias('m', 'mon')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard'
        )]
        [int] $Monitor = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Source aspect ratio'
        )]
        [string]$AspectRatio,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Video cropping'
        )]
        [string]$Crop,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use subtitle file'
        )]
        [string]$SubtitleFile,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Subtitles text scaling factor'
        )]
        [ValidateRange(10, 500)]
        [int]$SubtitleScale,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Subtitle language'
        )]
        [ValidateSet(
            'Afrikaans', 'Akan', 'Albanian', 'Amharic', 'Arabic', 'Armenian', 'Azerbaijani', 'Basque', 'Belarusian',
            'Bemba', 'Bengali', 'Bihari', 'Bork, bork, bork!', 'Bosnian', 'Breton', 'Bulgarian', 'Cambodian',
            'Catalan', 'Cherokee', 'Chichewa', 'Chinese (Simplified)', 'Chinese (Traditional)', 'Corsican',
            'Croatian', 'Czech', 'Danish', 'Dutch', 'Elmer Fudd', 'English', 'Esperanto', 'Estonian', 'Ewe',
            'Faroese', 'Filipino', 'Finnish', 'French', 'Frisian', 'Ga', 'Galician', 'Georgian', 'German', 'Greek',
            'Guarani', 'Gujarati', 'Hacker', 'Haitian Creole', 'Hausa', 'Hawaiian', 'Hebrew', 'Hindi', 'Hungarian',
            'Icelandic', 'Igbo', 'Indonesian', 'Interlingua', 'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada',
            'Kazakh', 'Kinyarwanda', 'Kirundi', 'Klingon', 'Kongo', 'Korean', 'Krio (Sierra Leone)', 'Kurdish',
            'Kurdish (Soranî)', 'Kyrgyz', 'Laothian', 'Latin', 'Latvian', 'Lingala', 'Lithuanian', 'Lozi', 'Luganda',
            'Luo', 'Macedonian', 'Malagasy', 'Malay', 'Malayalam', 'Maltese', 'Maori', 'Marathi', 'Mauritian Creole',
            'Moldavian', 'Mongolian', 'Montenegrin', 'Nepali', 'Nigerian Pidgin', 'Northern Sotho', 'Norwegian',
            'Norwegian (Nynorsk)', 'Occitan', 'Oriya', 'Oromo', 'Pashto', 'Persian', 'Pirate', 'Polish',
            'Portuguese (Brazil)', 'Portuguese (Portugal)', 'Punjabi', 'Quechua', 'Romanian', 'Romansh', 'Runyakitara',
            'Russian', 'Scots Gaelic', 'Serbian', 'Serbo-Croatian', 'Sesotho', 'Setswana', 'Seychellois Creole',
            'Shona', 'Sindhi', 'Sinhalese', 'Slovak', 'Slovenian', 'Somali', 'Spanish', 'Spanish (Latin American)',
            'Sundanese', 'Swahili', 'Swedish', 'Tajik', 'Tamil', 'Tatar', 'Telugu', 'Thai', 'Tigrinya', 'Tonga',
            'Tshiluba', 'Tumbuka', 'Turkish', 'Turkmen', 'Twi', 'Uighur', 'Ukrainian', 'Urdu', 'Uzbek', 'Vietnamese',
            'Welsh', 'Wolof', 'Xhosa', 'Yiddish', 'Yoruba', 'Zulu')]
        [string]$SubtitleLanguage,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio language'
        )]
        [ValidateSet(
            'Afrikaans', 'Akan', 'Albanian', 'Amharic', 'Arabic', 'Armenian', 'Azerbaijani', 'Basque', 'Belarusian',
            'Bemba', 'Bengali', 'Bihari', 'Bork, bork, bork!', 'Bosnian', 'Breton', 'Bulgarian', 'Cambodian',
            'Catalan', 'Cherokee', 'Chichewa', 'Chinese (Simplified)', 'Chinese (Traditional)', 'Corsican',
            'Croatian', 'Czech', 'Danish', 'Dutch', 'Elmer Fudd', 'English', 'Esperanto', 'Estonian', 'Ewe',
            'Faroese', 'Filipino', 'Finnish', 'French', 'Frisian', 'Ga', 'Galician', 'Georgian', 'German', 'Greek',
            'Guarani', 'Gujarati', 'Hacker', 'Haitian Creole', 'Hausa', 'Hawaiian', 'Hebrew', 'Hindi', 'Hungarian',
            'Icelandic', 'Igbo', 'Indonesian', 'Interlingua', 'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada',
            'Kazakh', 'Kinyarwanda', 'Kirundi', 'Klingon', 'Kongo', 'Korean', 'Krio (Sierra Leone)', 'Kurdish',
            'Kurdish (Soranî)', 'Kyrgyz', 'Laothian', 'Latin', 'Latvian', 'Lingala', 'Lithuanian', 'Lozi', 'Luganda',
            'Luo', 'Macedonian', 'Malagasy', 'Malay', 'Malayalam', 'Maltese', 'Maori', 'Marathi', 'Mauritian Creole',
            'Moldavian', 'Mongolian', 'Montenegrin', 'Nepali', 'Nigerian Pidgin', 'Northern Sotho', 'Norwegian',
            'Norwegian (Nynorsk)', 'Occitan', 'Oriya', 'Oromo', 'Pashto', 'Persian', 'Pirate', 'Polish',
            'Portuguese (Brazil)', 'Portuguese (Portugal)', 'Punjabi', 'Quechua', 'Romanian', 'Romansh', 'Runyakitara',
            'Russian', 'Scots Gaelic', 'Serbian', 'Serbo-Croatian', 'Sesotho', 'Setswana', 'Seychellois Creole',
            'Shona', 'Sindhi', 'Sinhalese', 'Slovak', 'Slovenian', 'Somali', 'Spanish', 'Spanish (Latin American)',
            'Sundanese', 'Swahili', 'Swedish', 'Tajik', 'Tamil', 'Tatar', 'Telugu', 'Thai', 'Tigrinya', 'Tonga',
            'Tshiluba', 'Tumbuka', 'Turkish', 'Turkmen', 'Twi', 'Uighur', 'Ukrainian', 'Urdu', 'Uzbek', 'Vietnamese',
            'Welsh', 'Wolof', 'Xhosa', 'Yiddish', 'Yoruba', 'Zulu')]
        [string]$AudioLanguage,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Preferred audio language'
        )]
        [ValidateSet(
            'Afrikaans', 'Akan', 'Albanian', 'Amharic', 'Arabic', 'Armenian', 'Azerbaijani', 'Basque', 'Belarusian',
            'Bemba', 'Bengali', 'Bihari', 'Bork, bork, bork!', 'Bosnian', 'Breton', 'Bulgarian', 'Cambodian',
            'Catalan', 'Cherokee', 'Chichewa', 'Chinese (Simplified)', 'Chinese (Traditional)', 'Corsican',
            'Croatian', 'Czech', 'Danish', 'Dutch', 'Elmer Fudd', 'English', 'Esperanto', 'Estonian', 'Ewe',
            'Faroese', 'Filipino', 'Finnish', 'French', 'Frisian', 'Ga', 'Galician', 'Georgian', 'German', 'Greek',
            'Guarani', 'Gujarati', 'Hacker', 'Haitian Creole', 'Hausa', 'Hawaiian', 'Hebrew', 'Hindi', 'Hungarian',
            'Icelandic', 'Igbo', 'Indonesian', 'Interlingua', 'Irish', 'Italian', 'Japanese', 'Javanese', 'Kannada',
            'Kazakh', 'Kinyarwanda', 'Kirundi', 'Klingon', 'Kongo', 'Korean', 'Krio (Sierra Leone)', 'Kurdish',
            'Kurdish (Soranî)', 'Kyrgyz', 'Laothian', 'Latin', 'Latvian', 'Lingala', 'Lithuanian', 'Lozi', 'Luganda',
            'Luo', 'Macedonian', 'Malagasy', 'Malay', 'Malayalam', 'Maltese', 'Maori', 'Marathi', 'Mauritian Creole',
            'Moldavian', 'Mongolian', 'Montenegrin', 'Nepali', 'Nigerian Pidgin', 'Northern Sotho', 'Norwegian',
            'Norwegian (Nynorsk)', 'Occitan', 'Oriya', 'Oromo', 'Pashto', 'Persian', 'Pirate', 'Polish',
            'Portuguese (Brazil)', 'Portuguese (Portugal)', 'Punjabi', 'Quechua', 'Romanian', 'Romansh', 'Runyakitara',
            'Russian', 'Scots Gaelic', 'Serbian', 'Serbo-Croatian', 'Sesotho', 'Setswana', 'Seychellois Creole',
            'Shona', 'Sindhi', 'Sinhalese', 'Slovak', 'Slovenian', 'Somali', 'Spanish', 'Spanish (Latin American)',
            'Sundanese', 'Swahili', 'Swedish', 'Tajik', 'Tamil', 'Tatar', 'Telugu', 'Thai', 'Tigrinya', 'Tonga',
            'Tshiluba', 'Tumbuka', 'Turkish', 'Turkmen', 'Twi', 'Uighur', 'Ukrainian', 'Urdu', 'Uzbek', 'Vietnamese',
            'Welsh', 'Wolof', 'Xhosa', 'Yiddish', 'Yoruba', 'Zulu')]
        [string]$PreferredAudioLanguage,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'HTTP proxy'
        )]
        [string]$HttpProxy,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'HTTP proxy password'
        )]
        [string]$HttpProxyPassword,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Verbosity level'
        )]
        [ValidateRange(0, 2)]
        [int]$VerbosityLevel,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Subdirectory behavior'
        )]
        [ValidateSet('None', 'Collapse', 'Expand')]
        [string]$SubdirectoryBehavior,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Ignored extensions'
        )]
        [string]$IgnoredExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Path to VLC executable'
        )]
        [string]$VLCPath = "${env:ProgramFiles}\VideoLAN\VLC\vlc.exe",
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Replay gain mode'
        )]
        [ValidateSet('None', 'Track', 'Album')]
        [string]$ReplayGainMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Replay gain preamp'
        )]
        [ValidateRange(-20.0, 20.0)]
        [float]$ReplayGainPreamp,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Force detection of Dolby Surround'
        )]
        [ValidateSet('Auto', 'On', 'Off')]
        [string]$ForceDolbySurround,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio filters'
        )]
        [string[]]$AudioFilters,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio visualizations'
        )]
        [ValidateSet('None', 'Goom', 'ProjectM', 'Visual', 'GLSpectrum')]
        [string]$Visualization,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Deinterlace'
        )]
        [ValidateSet('Off', 'Automatic', 'On')]
        [string]$Deinterlace,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Deinterlace mode'
        )]
        [ValidateSet('Auto', 'Discard', 'Blend', 'Mean', 'Bob', 'Linear', 'X', 'Yadif', 'Yadif2x', 'Phosphor', 'IVTC')]
        [string]$DeinterlaceMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Video filter module'
        )]
        [string[]]$VideoFilters,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Video filter modules'
        )]
        [string[]]$VideoFilterModules,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Modules'
        )]
        [string[]]$Modules,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio filter modules'
        )]
        [string[]]$AudioFilterModules,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Audio visualization mode'
        )]
        [ValidateSet('None', 'Goom', 'ProjectM', 'Visual', 'GLSpectrum')]
        [string]$AudioVisualization,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Preferred subtitle language'
        )]
        [string]$PreferredSubtitleLanguage,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Ignored file extensions'
        )]
        [string]$IgnoredFileExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Additional arguments'
        )]
        [string]$Arguments,
        [Alias('nb')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the window'
        )]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the left side of the screen'
        )]
        [switch] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the right side of the screen'
        )]
        [switch] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the top side of the screen'
        )]
        [switch] $Top,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the bottom side of the screen'
        )]
        [switch] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place window in the center of the screen'
        )]
        [switch] $Centered,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Sends F11 to the window'
        )]
        [Alias('fs')]
        [switch]$FullScreen,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Returns the window helper for each process'
        )]
        [Alias('pt')]
        [switch]$PassThru,

        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Always on top'
        )]
        [switch]$AlwaysOnTop,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Play files randomly forever'
        )]
        [Alias('Shuffle')]
        [switch]$Random,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Repeat all'
        )]
        [switch]$Loop,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Repeat current item'
        )]
        [switch]$Repeat,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Start paused'
        )]
        [switch]$StartPaused,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Play and exit'
        )]
        [switch]$PlayAndExit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable audio'
        )]
        [switch]$DisableAudio,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable subtitles'
        )]
        [switch]$DisableSubtitles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Video Auto Scaling'
        )]
        [switch]$AutoScale,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Increase the priority of the process'
        )]
        [switch]$HighPriority,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable time stretching audio'
        )]
        [switch]$EnableTimeStretch,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open new VLC mediaplayer instance'
        )]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable video wallpaper mode'
        )]
        [switch]$EnableWallpaperMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Enable audio time stretching'
        )]
        [switch]$EnableAudioTimeStretch,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Close the VLC media player window'
        )]
        [switch] $Close,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will either set the window fullscreen on a different monitor than Powershell, or ' +
            'side by side with Powershell on the same monitor'
        )]
        [Alias('sbs')]
        [switch]$SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the VLC window after opening'
        )]
        [Alias('fw', 'focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the VLC window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window'
        )]
        [switch] $Maximize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus after opening VLC'
        )]
        [Alias('rf', 'bg')]
        [switch]$RestoreFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use alternative settings stored in session for AI preferences'
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear alternative settings stored in session for AI preferences'
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Store settings only in persistent preferences without affecting session'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # exit early if only closing vlc windows
        if ($Close) {

            Microsoft.PowerShell.Utility\Write-Verbose 'Closing VLC windows'

            # stop all vlc processes
            Microsoft.PowerShell.Management\Get-Process vlc `
                -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Management\Stop-Process -Force

            return
        }

        $positioningParams = @(
            "Monitor",
            "NoBorders",
            "Width",
            "Height",
            "X",
            "Y",
            "Left",
            "Right",
            "Top",
            "Bottom",
            "Centered",
            "Fullscreen",
            "SideBySide",
            "FocusWindow",
            #            "RestoreFocus",
            "SetForeground",
            "Minimize",
            "Maximize",
            "KeysToSend",
            "SendKeyEscape",
            "SendKeyHoldKeyboardFocus",
            "SendKeyUseShiftEnter",
            "SendKeyDelayMilliSeconds"
        );

        $haveOnlyPositioningParams = $true;
        foreach ($param in $PSBoundParameters.Keys) {
            if ($positioningParams -notcontains $param) {
                $haveOnlyPositioningParams = $false;
                break;
            }
        }

        if (-not $PSBoundParameters.ContainsKey('Monitor')) {
            $Monitor = -1
            $PSBoundParameters['Monitor'] = $Monitor
        }

        # Check if VLC is already running and we have no positioning parameters (just focus)
        $vlcWindow = GenXdev\Get-Window -ProcessName vlc -ErrorAction SilentlyContinue
        $hasPositioningParams = $PSBoundParameters.Keys | Microsoft.PowerShell.Core\Where-Object {
            $_ -in $positioningParams
        }
        $hasNonPositioningParams = $PSBoundParameters.Keys | Microsoft.PowerShell.Core\Where-Object {
            $_ -notin $positioningParams
        }

        # If VLC is running and we only have positioning params, just focus without repositioning
        if (($null -ne $vlcWindow) -and (-not $hasNonPositioningParams)) {
            Microsoft.PowerShell.Utility\Write-Verbose 'VLC already running with only positioning params, just focusing window without repositioning'

            # Just focus the existing VLC window without any repositioning
            GenXdev\Set-WindowPosition -WindowHelper $vlcWindow -FocusWindow -SetForeground

            return
        }

        # If VLC is running and we have non-positioning params, skip window positioning entirely
        $skipWindowPositioning = ($null -ne $vlcWindow) -and $hasNonPositioningParams -and (-not $hasPositioningParams)

        if ($haveOnlyPositioningParams) {

            $params = GenXdev\Copy-IdenticalParamValues `
                -BoundParameters $PSBoundParameters `
                -FunctionName 'GenXdev\Set-WindowPosition' `
                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable -Scope Local -ErrorAction SilentlyContinue)

            # Only add fullscreen keystroke if user explicitly requested Fullscreen
            # Don't use $FullScreen variable here as it may be set by default logic later
            if ($PSBoundParameters.ContainsKey('Fullscreen') -and $Fullscreen) {
                $params.KeysToSend = @("f") + $KeysToSend
                $params.RestoreFocus = $true
            }

            if ($params.ContainsKey(("KeysToSend"))) {

                $null = $params.Remove("KeysToSend")
            }

            GenXdev\Set-WindowPosition @params -ProcessName 'vlc'

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Only positioning parameters specified, exiting...';
            return;
        }

        # ensure vlc is installed and install if needed
        if (-not (Microsoft.PowerShell.Management\Test-Path `
                    -LiteralPath "${env:ProgramFiles}\VideoLAN\VLC\vlc.exe")) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'VLC not found, installing via WinGet...'

            # check consent for VLC installation
            $vlcConsent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName 'VLC Media Player' `
                -Source 'WinGet' `
                -Description 'Media player required for video/audio playback functionality' `
                -Publisher 'VideoLAN'

            if (-not $vlcConsent) {
                throw 'Installation consent denied for VLC Media Player. Cannot proceed without media player.'
            }

            # check and install winget module if not present
            if (-not (Microsoft.PowerShell.Core\Get-Module -ListAvailable `
                        -Name 'Microsoft.WinGet.Client')) {

                # check consent for WinGet client module installation
                $wingetConsent = GenXdev\Confirm-InstallationConsent `
                    -ApplicationName 'Microsoft.WinGet.Client' `
                    -Source 'PowerShell Gallery' `
                    -Description 'Required PowerShell module for installing VLC Media Player' `
                    -Publisher 'Microsoft'

                if (-not $wingetConsent) {
                    throw 'Installation consent denied for Microsoft.WinGet.Client module. Cannot install VLC without WinGet client.'
                }

                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Installing WinGet client module'

                $null = PowerShellGet\Install-Module `
                    -Name 'Microsoft.WinGet.Client' `
                    -Force -Scope CurrentUser -AllowClobber -SkipPublisherCheck

                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Importing WinGet client module'

                Microsoft.PowerShell.Core\Import-Module `
                    -Name 'Microsoft.WinGet.Client'
            }

            # install vlc media player using winget
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Installing VLC media player'

            Microsoft.WinGet.Client\Install-WinGetPackage `
                -Id 'VideoLAN.VLC' -Scope System -Force

            # Configure VLC to not resize window on media change
            Microsoft.PowerShell.Utility\Write-Verbose `
                'Configuring VLC to prevent window auto-resizing'

            $vlcConfigPath = "${env:APPDATA}\vlc"
            $vlcrcPath = Microsoft.PowerShell.Management\Join-Path $vlcConfigPath 'vlcrc'

            # Ensure config directory exists
            if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $vlcConfigPath)) {
                $null = Microsoft.PowerShell.Management\New-Item `
                    -Path $vlcConfigPath -ItemType Directory -Force
            }

            # Configure settings to prevent window resizing
            if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $vlcrcPath) {
                # Read existing config
                $vlcConfig = Microsoft.PowerShell.Management\Get-Content `
                    -Path $vlcrcPath -Raw

                # Update or add qt-video-autoresize setting
                if ($vlcConfig -match '#?qt-video-autoresize=') {
                    $vlcConfig = $vlcConfig -replace '#?qt-video-autoresize=.*', 'qt-video-autoresize=0'
                }
                else {
                    $vlcConfig += "`nqt-video-autoresize=0"
                }

                # Update or add autoscale setting
                if ($vlcConfig -match '#?autoscale=') {
                    $vlcConfig = $vlcConfig -replace '#?autoscale=.*', 'autoscale=0'
                }
                else {
                    $vlcConfig += "`nautoscale=0"
                }

                # Write updated config
                Microsoft.PowerShell.Management\Set-Content `
                    -Path $vlcrcPath -Value $vlcConfig -Force
            }
            else {
                # Create new config file with settings
                $newConfig = @"
# VLC media player preferences
qt-video-autoresize=0
autoscale=0
"@
                Microsoft.PowerShell.Management\Set-Content `
                    -Path $vlcrcPath -Value $newConfig -Force
            }

            Microsoft.PowerShell.Utility\Write-Verbose `
                'VLC configured: window auto-resize disabled'
        }

        # create vlc parameter conversion function
        function ConvertTo-VLCParameter {

            param (
                [string]$parameterName,
                $parameterValue
            )

            # convert powershell parameters to vlc command line arguments
            switch ($parameterName) {

                # parameters that need explicit off states
                'Random' {
                    return $parameterValue ? '--random' : '--no-random'
                }
                'Loop' {
                    return $parameterValue ? '--loop' : '--no-loop'
                }
                'Repeat' {
                    return $parameterValue ? '--repeat' : '--no-repeat'
                }
                'StartPaused' {
                    return $parameterValue ? '--start-paused' : `
                        '--no-start-paused'
                }
                'PlayAndExit' {
                    return $parameterValue ? '--play-and-exit' : `
                        '--no-play-and-exit'
                }
                'AlwaysOnTop' {
                    return $parameterValue ? '--video-on-top' : `
                        '--no-video-on-top'
                }
                'DisableAudio' {
                    return $parameterValue ? '--no-audio' : '--audio'
                }

                # parameters with value mappings
                'ReplayGainMode' {
                    return "--audio-replay-gain-mode=$($parameterValue.ToLower())"
                }
                'ReplayGainPreamp' {
                    return "--audio-replay-gain-preamp=$parameterValue"
                }
                'ForceDolbySurround' {
                    return "--force-dolby-surround=$($parameterValue.ToLower())"
                }
                'AudioFilters' {
                    return "--audio-filter=$($parameterValue -join ',')"
                }
                'Visualization' {
                    return "--audio-visual=$($parameterValue.ToLower())"
                }
                'Deinterlace' {
                    return "--deinterlace=$($parameterValue.ToLower())"
                }
                'DeinterlaceMode' {
                    return "--deinterlace-mode=$($parameterValue.ToLower())"
                }
                'AspectRatio' {
                    return "--aspect-ratio=$parameterValue"
                }
                'Crop' {
                    return "--crop=$parameterValue"
                }
                'AutoScale' {
                    if ($parameterValue) {
                        return '--autoscale'
                    }
                }
                'VideoFilters' {
                    return "--video-filter=$($parameterValue -join ',')"
                }
                'SubtitleFile' {
                    return "--sub-file=$parameterValue"
                }
                'DisableSubtitles' {
                    if ($parameterValue) {
                        return '--no-spu'
                    }
                }
                'SubtitleScale' {
                    return "--sub-text-scale=$parameterValue"
                }
                'SubtitleLanguage' {
                    $languageDict = GenXdev\Get-WebLanguageDictionary
                    return "--sub-language=$($languageDict[$parameterValue])"
                }
                'AudioLanguage' {
                    $languageDict = GenXdev\Get-WebLanguageDictionary
                    return "--audio-language=$($languageDict[$parameterValue])"
                }
                'PreferredAudioLanguage' {
                    $languageDict = GenXdev\Get-WebLanguageDictionary
                    return "--preferred-audio-language=$($languageDict[$parameterValue])"
                }
                'HttpProxy' {
                    return "--http-proxy=$parameterValue"
                }
                'HttpProxyPassword' {
                    return "--http-proxy-pwd=$parameterValue"
                }
                'VerbosityLevel' {
                    return "--verbose=$parameterValue"
                }
                'SubdirectoryBehavior' {
                    return "--recursive=$($parameterValue.ToLower())"
                }
                'IgnoredExtensions' {
                    return "--ignore-filetypes=$parameterValue"
                }
                'HighPriority' {
                    if ($parameterValue) {
                        return '--high-priority'
                    }
                }
                'EnableTimeStretch' {
                    if ($parameterValue) {
                        return '--audio-time-stretch'
                    }
                }
                'EnableWallpaperMode' {
                    if ($parameterValue) {
                        return '--video-wallpaper'
                    }
                }
                'VideoFilterModules' {
                    return "--video-filter=$($parameterValue -join ',')"
                }
                'Modules' {
                    return "--modules=$($parameterValue -join ',')"
                }
                'AudioFilterModules' {
                    return "--audio-filter=$($parameterValue -join ',')"
                }
                'AudioVisualization' {
                    return "--audio-visual=$($parameterValue.ToLower())"
                }
                'PreferredSubtitleLanguage' {
                    return "--sub-language=$parameterValue"
                }
                'IgnoredFileExtensions' {
                    return "--ignore-filetypes=$parameterValue"
                }
                'EnableAudioTimeStretch' {
                    if ($parameterValue) {
                        return '--audio-time-stretch'
                    }
                }
            }
        }

        # check if vlc is already running (if not already checked above)
        $vlcProcess = $null
        if ($null -eq $vlcWindow) {
            $vlcWindow = GenXdev\Get-Window -ProcessName vlc `
                -ErrorAction SilentlyContinue
        }

        # initialize vlc argument list
        [System.Collections.Generic.List[string]]$vlcArgs = @()

        # Check if positioning parameters are supplied
        $hasPositioningParams = $PSBoundParameters.Keys | Microsoft.PowerShell.Core\Where-Object {
            $_ -in @('Monitor', 'Width', 'Height', 'X', 'Y',
                'Left', 'Right', 'Top', 'Bottom', 'Centered', 'Fullscreen',
                'SideBySide')
        }

        # Note: VLC's initial positioning arguments (--video-x, --video-y, --width, --height)
        # are unreliable for main window positioning. We'll rely entirely on post-launch
        # Set-WindowPosition for accurate positioning instead.

        # Only add --fullscreen if no positioning will occur, since positioning handles fullscreen via F11
        if ($FullScreen -and (-not $hasPositioningParams) -and ($null -eq $KeysToSend -or $KeysToSend.Count -eq 0)) {
            $vlcArgs.Add('--fullscreen')
            $FullScreen = $false
            $Maximize = $false
        }

        # configure instance mode
        if ($NewWindow) {

            $null = $vlcArgs.Add('--no-one-instance')
        }
        else {

            $null = $vlcArgs.Add('--one-instance')
        }

        # process each parameter and convert to vlc arguments
        $null = $PSBoundParameters.GetEnumerator() |
            Microsoft.PowerShell.Core\ForEach-Object {

                if ($_.Key -notin @('VLCPath', 'Path', 'Arguments', 'Close',
                        'SideBySide', 'FocusWindow', 'SetForeground',
                        'Maximize', 'RestoreFocus', 'SessionOnly',
                        'ClearSession', 'SkipSession', 'PassThru',
                        'KeysToSend', 'SendKeyEscape', 'SendKeyUseShiftEnter',
                        'SendKeyDelayMilliSeconds', 'SendKeyHoldKeyboardFocus',
                        'Monitor', 'NoBorders', 'Left', 'Right', 'Top',
                        'Bottom', 'Centered', 'Fullscreen', 'Width', 'Height',
                        'X', 'Y', 'NewWindow')) {

                    $vlcArgument = ConvertTo-VLCParameter -parameterName $_.Key `
                        -parameterValue $_.Value

                    if ($vlcArgument) {

                        $null = $vlcArgs.Add($vlcArgument)
                    }
                }
            }

        # add custom arguments if specified
        if ($Arguments) {

            $Arguments |
                Microsoft.PowerShell.Core\ForEach-Object {

                    $null = $vlcArgs.Add($_)
                }
        }

        # add media paths to argument list
        @($Path) |
            Microsoft.PowerShell.Core\ForEach-Object {

                if ($null -eq $_) {
                    return
                }

                $expandedPath = GenXdev\Expand-Path $_
                $null = $vlcArgs.Add("`"$expandedPath`"")
            }

        # build the process start arguments
        $processArgs = @{
            FilePath     = $VLCPath
            ArgumentList = $vlcArgs
            PassThru     = $true
            ErrorAction  = 'SilentlyContinue'
        }

        # Start VLC minimized if we'll be positioning it later to prevent visual jumping
        if ($hasPositioningParams) {

            Microsoft.PowerShell.Utility\Write-Verbose 'Starting VLC minimized since positioning will occur'
            $processArgs.WindowStyle = 'Minimized'
        }

        # handle existing vlc instance
        if ($null -eq $vlcWindow) {

            # ensure vlc executable exists
            if (-not (Microsoft.PowerShell.Management\Test-Path `
                        -LiteralPath $processArgs.FilePath -ErrorAction SilentlyContinue)) {

                throw 'VLC Media Player executable not found. Please ensure VLC is properly installed.'
            }

            # close any existing vlc processes
            Microsoft.PowerShell.Management\Get-Process vlc `
                -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Management\Stop-Process -Force
        }
        else {

            # get existing vlc process with main window
            $vlcProcess = Microsoft.PowerShell.Management\Get-Process `
                -Name vlc -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Core\Where-Object `
                    -Property MainWindowHandle -NE 0
        }

        # start vlc if needed
        # Only restart VLC if:
        # 1. VLC is not running, OR
        # 2. We have media files to open (Path parameter provided), OR
        # 3. We have significant configuration changes (more than just --one-instance)
        $hasMediaFiles = ($null -ne $Path) -and ($Path.Count -gt 0)
        $hasSignificantArgs = ($processArgs.ArgumentList.Count -gt 1) -and $hasMediaFiles

        if (($null -eq $vlcWindow) -or $hasSignificantArgs) {

            # start vlc with configured arguments
            try {

                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Starting VLC with arguments: $($vlcArgs -join ' ')"

                $vlcProcess = Microsoft.PowerShell.Management\Start-Process `
                    @processArgs

                Microsoft.PowerShell.Utility\Write-Verbose `
                    "VLC started with PID: $($vlcProcess.Id)"

                Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 2500
            }
            catch {

                Microsoft.PowerShell.Utility\Write-Error `
                    "Failed to start VLC: $_"
            }
        }

        # wait up to 20 seconds for vlc window to appear
        $vlcWindow = $null
        for ($i = 0; $i -lt 20; $i++) {
            $vlcWindow = GenXdev\Get-Window -ProcessName vlc `
                -ErrorAction SilentlyContinue
            if ($vlcWindow) { break }
            Microsoft.PowerShell.Utility\Start-Sleep -Seconds 1
        }

        # verify vlc window was found
        if ($null -eq $vlcWindow) {

            Microsoft.PowerShell.Utility\Write-Warning `
                'Failed to find VLC window'

            return
        }

        # Check if any positioning param (other than KeysToSend and RestoreFocus) was explicitly provided
        $hasPositioningParams = $PSBoundParameters.Keys | Microsoft.PowerShell.Core\Where-Object {
            $_ -in @('Monitor', 'NoBorders', 'Width', 'Height', 'X', 'Y',
                'Left', 'Right', 'Top', 'Bottom', 'Centered', 'Fullscreen',
                'SideBySide', 'FocusWindow', 'SetForeground', 'Minimize', 'Maximize')
        }

        # Check if this is a "keys only" operation (no positioning, no new media)
        $isKeysOnlyOperation = ($null -ne $KeysToSend) -and ($KeysToSend.Count -gt 0) -and
        (-not $hasPositioningParams) -and
        (-not $PSBoundParameters.ContainsKey('Path'))

        # prepare window positioning parameters
        if ($PSBoundParameters.ContainsKey('Process')) {
            $null = $PSBoundParameters.Remove('Process')
        }

        # copy window positioning parameters using helper function, but exclude RestoreFocus for keys-only operations
        $parametersToCopy = $PSBoundParameters
        if ($isKeysOnlyOperation) {
            # Create a copy without RestoreFocus to prevent unwanted positioning
            $parametersToCopy = @{}
            $PSBoundParameters.GetEnumerator() | Microsoft.PowerShell.Core\ForEach-Object {
                if ($_.Key -ne 'RestoreFocus') {
                    $parametersToCopy[$_.Key] = $_.Value
                }
            }
        }

        # If we're skipping window positioning, exclude KeysToSend params since they'll be handled separately
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Set-WindowPosition' `
            -DefaultValues @((Microsoft.PowerShell.Utility\Get-Variable -Name 'Monitor' -Scope Local))

        $invocationParams.WindowHelper = $vlcWindow
        $invocationParams.SideBySide = $SideBySide

        # Only set default monitor and fullscreen if we have actual positioning params
        # OR if Path is provided (opening VLC, not just sending keys)
        # AND we're not skipping window positioning
        if ((-not $PSBoundParameters.ContainsKey('Monitor')) -and (-not $SideBySide) -and ($hasPositioningParams -or $PSBoundParameters.ContainsKey('Path')) -and
            ($null -eq $KeysToSend -or $KeysToSend.Count -eq 0) -and (-not $skipWindowPositioning)
        ) {
            $invocationParams.Monitor = -2
            $Fullscreen = $true
        }
        if ($FullScreen) {
            # $invocationParams.Maximize = $true
            $invocationParams.Fullscreen = $false
            # Only set fullscreen keystroke if user didn't provide KeysToSend
            if (-not $PSBoundParameters.ContainsKey('KeysToSend')) {
                $invocationParams.KeysToSend = @('f')
            }
            $invocationParams.RestoreFocus = $true
        }

        if ($invocationParams.ContainsKey(("KeysToSend"))) {

            $null = $invocationParams.Remove("KeysToSend")
        }

        # Only apply window positioning if not a keys-only operation AND not skipping window positioning
        if (-not $isKeysOnlyOperation -and -not $skipWindowPositioning) {
            # apply window positioning if parameters specified
            $null = GenXdev\Set-WindowPosition @invocationParams
        }

        Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 500
    }


    process {

        # handle close request
        if ($Close) {

            Microsoft.PowerShell.Utility\Write-Verbose 'Closing VLC windows'

            if ($vlcProcess) {

                $null = $vlcProcess.CloseMainWindow()

                $null = $vlcProcess.WaitForExit(2000)
            }

            $null = Microsoft.PowerShell.Management\Get-Process vlc `
                -ErrorAction SilentlyContinue |
                Microsoft.PowerShell.Management\Stop-Process -Force

            return
        }

        if ($haveOnlyPositioningParams) {

            return
        }

        # exit if no keys to send
        if ($null -eq $KeysToSend -or ($KeysToSend.Count -eq 0)) {

            return
        }

        Microsoft.PowerShell.Utility\Write-Verbose `
            'Sending keystrokes to VLC window'

        # copy key sending parameters using helper function
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Send-Key'

        $invocationParams.WindowHandle = $vlcWindow.Handle

        # send keys to vlc window
        $null = GenXdev\Send-Key @invocationParams
    }

    end {

        if ($haveOnlyPositioningParams) {

            return
        }

        # restore focus to powershell window if requested
        if ($RestoreFocus) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Restoring PowerShell window focus'

            # restore powershell window focus
            $null = GenXdev\Set-WindowPosition -FocusWindow -SetForeground
        }

        # return window helper if requested
        if ($PassThru) {

            return $vlcWindow
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Open-VlcMediaPlayerLyrics.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Opens a web browser to search for lyrics of currently playing VLC media.

.DESCRIPTION
This function detects if VLC Media Player is running and searches for lyrics
based on the currently playing media title. It automatically opens a search
query in a web browser to find lyrics for the current track. The function
supports multiple browsers and provides extensive window positioning and
display options.

.PARAMETER Queries
The search terms to find a track. If not specified, automatically uses the
VLC window title.

.PARAMETER EndPoint
The search endpoint to invoke the query on. Valid options are Bing, Github,
Google, or Youtube. Defaults to Google.

.PARAMETER Language
The language of the returned search results. Supports many languages
including English, Spanish, French, German, and many others.

.PARAMETER Private
Opens in incognito/private browsing mode to prevent saving browsing history.

.PARAMETER Force
Force enable debugging port, stopping existing browsers if needed for
debugging purposes.

.PARAMETER Edge
Opens the search results in Microsoft Edge browser.

.PARAMETER Chrome
Opens the search results in Google Chrome browser.

.PARAMETER Chromium
Opens in Microsoft Edge or Google Chrome, depending on what the default
browser is configured as.

.PARAMETER Firefox
Opens the search results in Firefox browser.

.PARAMETER All
Opens the search results in all registered modern browsers simultaneously.

.PARAMETER Monitor
The monitor to use for displaying the browser window. 0 = default,
-1 = discard positioning, -2 = configured secondary monitor.
Defaults to -1 (no positioning).

.PARAMETER ShowWindow
Opens the browser window in fullscreen mode.

.PARAMETER Width
The initial width of the web browser window in pixels.

.PARAMETER Height
The initial height of the web browser window in pixels.

.PARAMETER X
The initial X position of the web browser window on screen.

.PARAMETER Y
The initial Y position of the web browser window on screen.

.PARAMETER Left
Place browser window on the left side of the screen.

.PARAMETER Right
Place browser window on the right side of the screen.

.PARAMETER Top
Place browser window on the top side of the screen.

.PARAMETER Bottom
Place browser window on the bottom side of the screen.

.PARAMETER Centered
Place browser window in the center of the screen.

.PARAMETER ApplicationMode
Hide the browser controls for a cleaner, app-like experience.

.PARAMETER NoBrowserExtensions
Prevent loading of browser extensions to improve performance and security.

.PARAMETER DisablePopupBlocker
Disable the popup blocker to allow all popups to display.

.PARAMETER AcceptLang
Set the browser accept-lang HTTP header for localized content.

.PARAMETER KeysToSend
Keystrokes to send to the browser window after opening. See documentation
for cmdlet GenXdev\Send-Key for format details.

.PARAMETER SendKeyEscape
Escape control characters when sending keys to prevent interpretation.

.PARAMETER SendKeyHoldKeyboardFocus
Prevent returning keyboard focus to PowerShell after sending keys.

.PARAMETER SendKeyUseShiftEnter
Send Shift+Enter instead of regular Enter for line breaks in key sequences.

.PARAMETER SendKeyDelayMilliSeconds
Delay between sending different key sequences in milliseconds.

.PARAMETER FocusWindow
Focus the browser window after opening to bring it to the foreground.

.PARAMETER SetForeground
Set the browser window to foreground after opening for immediate visibility.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER RestoreFocus
Restore PowerShell window focus after opening the browser.

.PARAMETER NewWindow
Don't re-use existing browser window, instead create a new window instance.

.PARAMETER PassThru
Returns a [System.Diagnostics.Process] object of the browser process.

.PARAMETER ReturnURL
Don't open web browser, just return the constructed URL string.

.PARAMETER ReturnOnlyURL
After opening web browser, return the URL that was opened.

.PARAMETER NoBorders
Removes window borders from the browser window for a borderless display.

.PARAMETER SessionOnly
Use a session that is not persisted after closing the browser.

.PARAMETER ClearSession
Clear browser session data before opening the browser.

.PARAMETER SkipSession
Skip using any existing browser session data.

.PARAMETER SideBySide
Open browser windows side by side when multiple windows are created.

.EXAMPLE
Open-VlcMediaPlayerLyrics

Opens a Google search for lyrics of the currently playing VLC media.

.EXAMPLE
vlclyrics -Edge -Private

Opens lyrics search in Microsoft Edge using private/incognito mode.
#>
function Open-VlcMediaPlayerLyrics {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Alias('vlclyrics')]

    param(
        [Alias('q', 'Name', 'Text', 'Query')]
        [Parameter(
            Mandatory = $false,
            Position = 0,
            ValueFromRemainingArguments = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'Search terms to find a track'
        )]
        [string[]] $Queries,
        [ValidateSet(
            'Bing',
            'Github',
            'Google',
            'Youtube'
        )]
        [Parameter(
            Mandatory = $false,
            Position = 1,
            HelpMessage = 'The endpoint to invoke the query on'
        )]
        [string] $EndPoint = 'Google',
        [ValidateSet(
            'Afrikaans',
            'Akan',
            'Albanian',
            'Amharic',
            'Arabic',
            'Armenian',
            'Azerbaijani',
            'Basque',
            'Belarusian',
            'Bemba',
            'Bengali',
            'Bihari',
            'Bork, bork, bork!',
            'Bosnian',
            'Breton',
            'Bulgarian',
            'Cambodian',
            'Catalan',
            'Cherokee',
            'Chichewa',
            'Chinese (Simplified)',
            'Chinese (Traditional)',
            'Corsican',
            'Croatian',
            'Czech',
            'Danish',
            'Dutch',
            'Elmer Fudd',
            'English',
            'Esperanto',
            'Estonian',
            'Ewe',
            'Faroese',
            'Filipino',
            'Finnish',
            'French',
            'Frisian',
            'Ga',
            'Galician',
            'Georgian',
            'German',
            'Greek',
            'Guarani',
            'Gujarati',
            'Hacker',
            'Haitian Creole',
            'Hausa',
            'Hawaiian',
            'Hebrew',
            'Hindi',
            'Hungarian',
            'Icelandic',
            'Igbo',
            'Indonesian',
            'Interlingua',
            'Irish',
            'Italian',
            'Japanese',
            'Javanese',
            'Kannada',
            'Kazakh',
            'Kinyarwanda',
            'Kirundi',
            'Klingon',
            'Kongo',
            'Korean',
            'Krio (Sierra Leone)',
            'Kurdish',
            'Kurdish (Soranî)',
            'Kyrgyz',
            'Laothian',
            'Latin',
            'Latvian',
            'Lingala',
            'Lithuanian',
            'Lozi',
            'Luganda',
            'Luo',
            'Macedonian',
            'Malagasy',
            'Malay',
            'Malayalam',
            'Maltese',
            'Maori',
            'Marathi',
            'Mauritian Creole',
            'Moldavian',
            'Mongolian',
            'Montenegrin',
            'Nepali',
            'Nigerian Pidgin',
            'Northern Sotho',
            'Norwegian',
            'Norwegian (Nynorsk)',
            'Occitan',
            'Oriya',
            'Oromo',
            'Pashto',
            'Persian',
            'Pirate',
            'Polish',
            'Portuguese (Brazil)',
            'Portuguese (Portugal)',
            'Punjabi',
            'Quechua',
            'Romanian',
            'Romansh',
            'Runyakitara',
            'Russian',
            'Scots Gaelic',
            'Serbian',
            'Serbo-Croatian',
            'Sesotho',
            'Setswana',
            'Seychellois Creole',
            'Shona',
            'Sindhi',
            'Sinhalese',
            'Slovak',
            'Slovenian',
            'Somali',
            'Spanish',
            'Spanish (Latin American)',
            'Sundanese',
            'Swahili',
            'Swedish',
            'Tajik',
            'Tamil',
            'Tatar',
            'Telugu',
            'Thai',
            'Tigrinya',
            'Tonga',
            'Tshiluba',
            'Tumbuka',
            'Turkish',
            'Turkmen',
            'Twi',
            'Uighur',
            'Ukrainian',
            'Urdu',
            'Uzbek',
            'Vietnamese',
            'Welsh',
            'Wolof',
            'Xhosa',
            'Yiddish',
            'Yoruba',
            'Zulu'
        )]
        [Parameter(
            Mandatory = $false,
            Position = 2,
            HelpMessage = 'The language of the returned search results'
        )]
        [string] $Language,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The monitor to use, 0 = default, -1 is discard, ' +
            '-2 = Configured secondary monitor, defaults to -1, ' +
            'no positioning'
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the webbrowser window'
        )]
        [int] $Width = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the webbrowser window'
        )]
        [int] $Height = -1,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial X position of the webbrowser window'
        )]
        [int] $X = -999999,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The initial Y position of the webbrowser window'
        )]
        [int] $Y = -999999,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser accept-lang http header'
        )]
        [Alias('lang', 'locale')]
        [string] $AcceptLang = $null,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Keystrokes to send to the Browser window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between sending different key sequences ' +
                'in milliseconds')
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in incognito/private browsing mode'
        )]
        [Alias('incognito', 'inprivate')]
        [switch] $Private,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Force enable debugging port, stopping existing ' +
                'browsers if needed')
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Microsoft Edge'
        )]
        [Alias('e')]
        [switch] $Edge,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Google Chrome'
        )]
        [Alias('ch')]
        [switch] $Chrome,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens in Microsoft Edge or Google Chrome, ' +
                'depending on what the default browser is')
        )]
        [Alias('c')]
        [switch] $Chromium,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in Firefox'
        )]
        [Alias('ff')]
        [switch] $Firefox,
        [Alias('pw')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use Playwright-managed browser instead of the ' +
                'OS-installed browser')
        )]
        [switch] $PlayWright,
        [Alias('wk')]
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Opens the Playwright-managed WebKit browser. ' +
                'Implies -PlayWright')
        )]
        [switch] $Webkit,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Run the browser without a visible window'
        )]
        [Alias('hl')]
        [switch] $Headless,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in all registered modern browsers'
        )]
        [switch] $All,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Opens in fullscreen mode'
        )]
        [Alias('sw')]
        [switch] $ShowWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the left side of the screen'
        )]
        [switch] $Left,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the right side of the screen'
        )]
        [switch] $Right,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the top side of the screen'
        )]
        [switch] $Top,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window on the bottom side of the screen'
        )]
        [switch] $Bottom,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Place browser window in the center of the screen'
        )]
        [switch] $Centered,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hide the browser controls'
        )]
        [Alias('a', 'app', 'appmode')]
        [switch] $ApplicationMode,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Prevent loading of browser extensions'
        )]
        [Alias('de', 'ne', 'NoExtensions')]
        [switch] $NoBrowserExtensions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Disable the popup blocker'
        )]
        [Alias('allowpopups')]
        [switch] $DisablePopupBlocker,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Prevent returning keyboard focus to PowerShell ' +
                'after sending keys')
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Send Shift+Enter instead of regular Enter for ' +
                'line breaks')
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the browser window after opening'
        )]
        [Alias('fw', 'focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the browser window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window after positioning'
        )]
        [switch] $Maximize,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore the window to normal state after positioning'
        )]
        [switch] $SetRestored,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ("Don't re-use existing browser window, instead, " +
                "create a new one")
        )]
        [Alias('nw', 'new')]
        [switch] $NewWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Returns a [System.Diagnostics.Process] object of ' +
                'the browserprocess')
        )]
        [Alias('pt')]
        [switch] $PassThru,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Don't open webbrowser, just return the url"
        )]
        [switch] $ReturnURL,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'After opening webbrowser, return the url'
        )]
        [switch] $ReturnOnlyURL,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Removes window borders from the browser window'
        )]
        [Alias('nb')]
        [switch] $NoBorders,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use a session that is not persisted after closing ' +
                'the browser')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Clear browser session data before opening the browser'
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Skip using any existing browser session'
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Open browser windows side by side'
        )]
        [Alias('sbs')]
        [switch] $SideBySide
    )

    begin {

        # initialize collection to store queries from pipeline input
        $queryList = @()

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Initializing VLC Media Player lyrics search function"
        )
    }

    process {

        # accumulate queries from pipeline input for batch processing
        if ($Queries) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Adding ${Queries} queries from pipeline input"
            )

            $queryList += $Queries
        }
    }

    end {

        # attempt to find a running vlc media player window
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Searching for VLC Media Player process"
        )

        $vlcWindow = GenXdev\Get-Window -ProcessName vlc

        # proceed only if vlc is found and running
        if ($null -ne $vlcWindow) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Found VLC window with title: ${vlcWindow.Title}"
            )

            # ensure genxdev.queries module is available for search functionality
            $queriesModuleCount = @(
                Microsoft.PowerShell.Core\Get-Module GenXdev.Queries `
                    -ErrorAction SilentlyContinue
            ).Count

            # install and import the queries module if not already loaded
            if ($queriesModuleCount -eq 0) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Installing and importing GenXdev.Queries module"
                )

                $null = PowerShellGet\Install-Module GenXdev.Queries `
                    -SkipPublisherCheck

                $null = Microsoft.PowerShell.Core\Import-Module GenXdev.Queries
            }

            # copy parameters to pass through to the google query function
            $invocationArguments = GenXdev\Copy-IdenticalParamValues `
                -FunctionName 'GenXdev\Open-GoogleQuery' `
                -BoundParameters $PSBoundParameters

            # determine search query based on pipeline input or vlc window title
            if ($queryList.Count -gt 0) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Using ${queryList.Count} queries from pipeline input"
                )

                $invocationArguments.Queries = $queryList
            }
            else {

                # construct lyrics search query from vlc window title
                $lyricsQuery = 'lyrics ' + $vlcWindow.Title.Replace("- VLC media player", "")

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Using VLC window title for query: ${lyricsQuery}"
                )

                $invocationArguments.Queries = @($lyricsQuery)
            }

            # execute the search query in the web browser
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Opening lyrics search in web browser"
            )

            $null = GenXdev\Open-GoogleQuery @invocationArguments
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose (
                "VLC Media Player is not currently running"
            )
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Set-VLCPlayerFocused.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Sets focus to the VLC media player window.

.DESCRIPTION
Locates a running instance of VLC media player and brings its window to the
foreground, making it the active window. If VLC is not running, silently
continues without error. Uses Windows API calls to manipulate window focus.

.EXAMPLE
Set-VLCPlayerFocused
Brings the VLC player window to front and gives it focus

.EXAMPLE
vlcf
Same operation using the short alias
#>
function Set-VLCPlayerFocused {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('showvlc', 'vlcf', 'fvlc')]
    param()

    begin {

        # log operation start for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Set-VLCPlayerFocused operation'
    }


    process {

        try {
            # find vlc window by process name, returns null if not found
            Microsoft.PowerShell.Utility\Write-Verbose 'Attempting to locate VLC player window'
            $window = GenXdev\Get-Window -ProcessName vlc

            # only proceed if window was found and ShouldProcess confirms
            if ($window -and $PSCmdlet.ShouldProcess('VLC media player window',
                    'Set as foreground window')) {

                Microsoft.PowerShell.Utility\Write-Verbose 'Setting VLC window as foreground window'

                $null = $window.Focus()
            }
        }
        catch {
            # silently continue if window not found or other errors occur
            Microsoft.PowerShell.Utility\Write-Verbose "Failed to set VLC window focus: $_"
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : StabilizeVideo.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
    Stabilizes the newest or specified .mp4 file using FFmpeg + vid.stab (no black borders).

.DESCRIPTION
    Two-pass vid.stab stabilization with optzoom=1 (auto zoom/crop so borders never show)
    plus light sharpening. Works exactly like your Save-Video cmdlet — super simple.

.PARAMETER InputFile
    Optional: specific .mp4 to stabilize. If omitted, uses the newest .mp4 in the folder.

.EXAMPLE
    Stabilize-Video                  # stabilizes the most recent .mp4
    Stabilize-Video shaky.mp4         # specific file
#>
function StabilizeVideo {

    [CmdletBinding()]
    param (
        [Parameter(Mandatory = $false, Position = 0)]
        [string]$InputFile
    )

    # ------------------------------------------------------------------
    # 1. Find the input file (newest .mp4 if not specified)
    # ------------------------------------------------------------------
    if (-not $InputFile) {
        $InputFile = Microsoft.PowerShell.Management\Get-ChildItem *.mp4 | Microsoft.PowerShell.Utility\Sort-Object LastWriteTime -Descending | Microsoft.PowerShell.Utility\Select-Object -First 1 -ExpandProperty FullName
        if (-not $InputFile) { throw "No .mp4 file found in the current folder." }
        Microsoft.PowerShell.Utility\Write-Host "Using newest file: $(Microsoft.PowerShell.Management\Split-Path $InputFile -Leaf)" -ForegroundColor Cyan
    }
    if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $InputFile)) { throw "File not found: $InputFile" }

    $file = Microsoft.PowerShell.Management\Get-Item $InputFile
    $dir = $file.DirectoryName
    $base = $file.BaseName
    $ext = $file.Extension
    $output = Microsoft.PowerShell.Management\Join-Path $dir "$base [stabilized]$ext"
    $trf = Microsoft.PowerShell.Management\Join-Path $dir "transforms.trf"

    # ------------------------------------------------------------------
    # 2. Pass 1 – detect camera motion
    # ------------------------------------------------------------------
    Microsoft.PowerShell.Utility\Write-Host "Pass 1/2: Analyzing shakiness..." -ForegroundColor Green
    ffmpeg -y -i $file -vf vidstabdetect=shakiness=8:accuracy=15 -f null NUL
    if ($LASTEXITCODE -ne 0) { throw "vidstabdetect failed" }

    # ------------------------------------------------------------------
    # 3. Pass 2 – apply stabilization (no black borders!)
    # ------------------------------------------------------------------
    Microsoft.PowerShell.Utility\Write-Host "Pass 2/2: Stabilizing & cropping (this may take a while)..." -ForegroundColor Green
    ffmpeg -y -i $file -vf "
vidstabtransform=input=$trf:optzoom=1:crop=black:zoom=3:smoothing=20,
unsharp=5:5:0.8:3:3:0.4" `
        -c:v libx264 -preset slow -crf 23 -tune film `
        -c:a copy `
        "$output"

    if ($LASTEXITCODE -ne 0) { throw "vidstabtransform failed" }

    # ------------------------------------------------------------------
    # 4. Cleanup & finish
    # ------------------------------------------------------------------
    Microsoft.PowerShell.Management\Remove-Item $trf -ErrorAction SilentlyContinue

    Microsoft.PowerShell.Utility\Write-Host "Done! Stabilized video saved as:" -ForegroundColor Green
    Microsoft.PowerShell.Utility\Write-Host "   $(Microsoft.PowerShell.Management\Split-Path $output -Leaf)" -ForegroundColor Yellow

    # Return the new file so you can pipe it (e.g. | Invoke-Item)
    Microsoft.PowerShell.Management\Get-Item $output
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Start-VlcMediaPlayerNextInPlaylist.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Advances VLC Media Player to the next item in the current playlist.

.DESCRIPTION
This function sends the 'n' keystroke to VLC Media Player to skip to the next
track or media item in the currently loaded playlist. It focuses the VLC window,
sends the next command, and restores focus to the PowerShell console. The
function includes ShouldProcess support for confirmation prompts when needed.

.EXAMPLE
Start-VlcMediaPlayerNextInPlaylist

.EXAMPLE
vlcnext
#>
function Start-VlcMediaPlayerNextInPlaylist {

    [CmdletBinding(SupportsShouldProcess)]
    [Alias('vlcnext')]

    param(
    )

    begin {

        # check if shouldprocess is enabled and user wants to proceed
        Microsoft.PowerShell.Utility\Write-Verbose `
            'Preparing to advance VLC Media Player to next playlist item'
    }

    process {

        # verify user confirmation before sending next command to vlc
        if ($PSCmdlet.ShouldProcess('VLC Media Player', 'Next in playlist')) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Sending next command to VLC Media Player'

            # send the 'n' key to vlc to advance to next playlist item
            # restore focus ensures powershell regains control after command
            GenXdev\Open-VlcMediaPlayer -KeysToSend 'n' -RestoreFocus

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Successfully sent next command to VLC Media Player'
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Start-VlcMediaPlayerPreviousInPlaylist.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Moves to the previous item in the VLC Media Player playlist.

.DESCRIPTION
This function sends the 'p' key command to VLC Media Player to navigate to the
previous item in the current playlist. The function supports WhatIf operations
and will restore focus after sending the command.

.EXAMPLE
Start-VlcMediaPlayerPreviousInPlaylist

.EXAMPLE
vlcprev

.EXAMPLE
vlcback
#>
function Start-VlcMediaPlayerPreviousInPlaylist {

    [CmdletBinding(SupportsShouldProcess)]
    [Alias('vlcprev', 'vlcback')]

    param (
    )

    begin {

    }

    process {

        # check if the user wants to proceed with the operation
        if ($PSCmdlet.ShouldProcess('VLC Media Player',
            'Go to previous item in playlist')) {

            # send the 'p' key to vlc media player to go to previous playlist item
            GenXdev\Open-VlcMediaPlayer -KeysToSend 'p' -RestoreFocus
        }
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Switch-VlcMediaPlayerMute.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Toggles the mute state of the VLC Media Player.

.DESCRIPTION
This function sends the 'm' key to VLC Media Player to toggle between muted
and unmuted audio states. The function focuses VLC, sends the mute/unmute
command, and then restores focus to the previously active window.

.EXAMPLE
Switch-VlcMediaPlayerMute

Toggles the mute state of VLC Media Player using the full function name.

.EXAMPLE
vlcmute

Toggles the mute state of VLC Media Player using the short alias.
#>
function Switch-VlcMediaPlayerMute {

    [CmdletBinding()]
    [Alias('vlcmute', 'vlcunmute')]

    param (
    )

    begin {

    }

    process {

        # send the 'm' key to vlc media player to toggle mute state
        GenXdev\Open-VlcMediaPlayer -KeysToSend 'm' -RestoreFocus
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Switch-VLCMediaPlayerPaused.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Toggles the pause/play state of the VLC Media Player.

.DESCRIPTION
This function sends a space key to VLC Media Player to toggle between paused
and playing states. It automatically restores focus to the original window
after sending the key command.

.EXAMPLE
Switch-VLCMediaPlayerPaused

Toggles the pause/play state of VLC Media Player.

.EXAMPLE
vlcpause

Uses the alias to toggle the pause/play state.

.EXAMPLE
vlcplay

Uses the alternate alias to toggle the pause/play state.
#>
function Switch-VLCMediaPlayerPaused {

    [CmdletBinding()]
    [Alias('vlcpause', 'vlcplay')]

    param (
    )

    begin {

    }

    process {

        # send space key to vlc media player to toggle pause/play state
        Microsoft.PowerShell.Utility\Write-Verbose "Toggling VLC Media Player pause/play state"

        # send the space key command and restore focus to original window
        GenXdev\Open-VlcMediaPlayer -KeysToSend ' ' -RestoreFocus
    }

    end {

    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Media
Original cmdlet filename  : Switch-VlcMediaPlayerRepeat.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c) 2026 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
################################################################################>

<#
.SYNOPSIS
Toggles the repeat mode in VLC Media Player.

.DESCRIPTION
This function sends the 'r' key command to VLC Media Player to toggle between
different repeat modes (no repeat, repeat current, repeat all). The function
opens VLC if it's not already running and restores focus to the previous
window after sending the command.

.EXAMPLE
Switch-VlcMediaPlayerRepeat

.EXAMPLE
vlcrepeat
#>
function Switch-VlcMediaPlayerRepeat {

    [CmdletBinding()]
    [Alias('vlcrepeat')]

    param(
    )

    begin {

    }

    process {

        # send the repeat toggle key ('r') to vlc media player
        GenXdev\Open-VlcMediaPlayer -KeysToSend 'r' -RestoreFocus
    }

    end {

    }
}

