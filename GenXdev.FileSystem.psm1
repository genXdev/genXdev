<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Copy-FilesToDateFolder.ps1
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

# ##############################################################################
# Part of PowerShell module : GenXdev.FileSystem
# Original cmdlet filename : Rename-InProject.ps1
# Original author : René Vaessen / GenXdev
# Version : 3.26.2026
# ################################################################################
# Copyright (c) René Vaessen / GenXdev
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ################################################################################
# ###############################################################################
<#
.SYNOPSIS
Copies files matching search criteria into date-based subfolders.

.DESCRIPTION
Searches for files using the same parameter set as `Find-Item` and copies each
matched file into a subfolder of `TargetFolder` based on the file's creation
or media date. The cmdlet supports content matching, drive-wide searches and
many filters.

Attempts several strategies to determine an accurate creation or capture
date for the specified file. strategies include reading image EXIF metadata,
parsing date/time information from filenames, and falling back to the file's
last-write time when no other reliable information is available.

.PARAMETER TargetFolder
The root path where matched files will be copied into date-based
subfolders. This parameter is required.

.PARAMETER Name
File name or wildcard pattern to match. Defaults to `*`.

.PARAMETER Input
Pipeline input for file paths or objects with a `FullName`/`Name` property.

.PARAMETER Content
Regular expression patterns to match inside file contents (when applicable).

.PARAMETER RelativeBasePath
Base path used to resolve relative paths in output; defaults to the current
directory.

.PARAMETER Category
Optional filter to include only files that belong to selected categories.

.PARAMETER MaxDegreeOfParallelism
Maximum parallel directory operations. `0` means automatic.

.PARAMETER TimeoutSeconds
Optional timeout in seconds for the search operation.

.PARAMETER AllDrives
Switch to search across all mounted drives.

.PARAMETER Directory
Only search for directories instead of files.

.PARAMETER FilesAndDirectories
Include both files and directories in search results.

.PARAMETER PassThru
Output matched items as objects instead of formatted text.

.PARAMETER IncludeAlternateFileStreams
Include alternate data streams (ADS) in the search results.

.PARAMETER NoRecurse
Do not recurse into subdirectories when searching.

.PARAMETER FollowSymlinkAndJunctions
Follow symbolic links and junctions during traversal.

.PARAMETER IncludeOpticalDiskDrives
Include optical disks when enumerating drives.

.PARAMETER SearchDrives
Explicit list of drive root paths to search.

.PARAMETER DriveLetter
List of drive letters to search.

.PARAMETER Root
Base directories to combine with `Name` patterns when searching.

.PARAMETER LimitToRoot
When used, restricts matches to provided `Root` directories and prevents
escaping above them.

.PARAMETER IncludeNonTextFileMatching
Allow content matching against non-text files (binary/media) when doing
content search.

.PARAMETER NoLinks
Operate in unattended mode; do not generate links or interactive prompts.

.PARAMETER CaseNameMatching
Controls case-sensitivity for file name matching.

.PARAMETER SearchADSContent
When set, also search within alternate data streams (ADS) contents.

.PARAMETER MaxRecursionDepth
Maximum directory recursion depth; `0` means unlimited.

.PARAMETER MaxSearchUpDepth
Maximum upward search depth when performing relative searches.

.PARAMETER MaxFileSize
Maximum file size in bytes to include; `0` means unlimited.

.PARAMETER MinFileSize
Minimum file size in bytes to include; `0` means no minimum.

.PARAMETER ModifiedAfter
Only include items modified after this UTC date/time.

.PARAMETER ModifiedBefore
Only include items modified before this UTC date/time.

.PARAMETER AttributesToSkip
File attributes to exclude from results (for example `System`).

.PARAMETER Exclude
Wildcard patterns to exclude files or directories from the search.

.PARAMETER AllMatches
Return all matches per line when using content pattern matching.

.PARAMETER CaseSensitive
Make content pattern matches case-sensitive.

.PARAMETER Context
Capture context lines around found content matches.

.PARAMETER Culture
Culture name used for pattern matching when using `SimpleMatch`.

.PARAMETER Encoding
File encoding to use for content operations.

.PARAMETER List
Only the first match per file is returned (efficient list mode).

.PARAMETER NoEmphasis
Disable highlighting in output.

.PARAMETER NotMatch
Return files that do not match the provided content pattern.

.PARAMETER Raw
Output only matching strings instead of `MatchInfo` objects.

.PARAMETER SimpleMatch
Use simple string matching (not regular expressions) for content matching.

.PARAMETER TargetFolderNameDateSyntax
Controls the date folder format. Valid values: `Year + Month + Day`,
`Year + Month`, `Year`.

.EXAMPLE
Copy all pictures and videos to the corresponsing Android Onedrive App Image backup folders
    Copy-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `
                           -SourceFolder ~\Pictures\*, ~\desktop\* `
                           -Category 'Pictures', 'Videos'

.EXAMPLE
Copy all jpg files from the current directory into date folders under
`D:\Archive` (dry run):

    Copy-FilesToDateFolder -TargetFolder 'D:\Archive' -Name '*.jpg' -WhatIf

.EXAMPLE
Copy all files across drives matching `*.mp4` into monthly folders

    Copy-FilesToDateFolder -TargetFolder 'E:\Media\Videos' -Name '.\*.mp4'

#>
function Copy-FilesToDateFolder {

    [CmdletBinding(SupportsShouldProcess = $true)]
    param(

        [Parameter(Position = 0, Mandatory = $true, HelpMessage = 'Target root folder where matched files will be copied into date-based subfolders')]
        [ValidateNotNullOrEmpty()]
        [string] $TargetFolder,
        [Parameter(Position = 1, Mandatory = $false, HelpMessage = 'File name or pattern to search for. Default is ''*''')]
        [SupportsWildcards()]
        [Alias("SourceFolder")]
        [ValidateNotNullOrEmpty()]
        [string[]] $Name = @('*'),
        [Parameter(Mandatory = $false, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, HelpMessage = 'File name or pattern to search for from pipeline input. Default is ''*''')]
        [Alias('FullName')]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [object] $Input,
        [Parameter(Position = 2, Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Regular expression pattern to search within content')]
        [Alias('mc', 'matchcontent', 'regex', 'Pattern')]
        [ValidateNotNull()]
        [SupportsWildcards()]
        [string[]] $Content = @('.*'),
        [Parameter(Position = 3, Mandatory = $false, HelpMessage = 'Base path for resolving relative paths in output')]
        [Alias('base')]
        [ValidateNotNullOrEmpty()]
        [string] $RelativeBasePath = '.\',
        [Parameter(Mandatory = $false, HelpMessage = 'Only output files belonging to selected categories')]
        [Alias('filetype')]
        [ValidateSet(
            'Pictures',
            'Videos',
            'Music',
            'Documents',
            'Spreadsheets',
            'Presentations',
            'Archives',
            'Installers',
            'Executables',
            'Databases',
            'DesignFiles',
            'Ebooks',
            'Subtitles',
            'Fonts',
            'EmailFiles',
            '3DModels',
            'GameAssets',
            'MedicalFiles',
            'FinancialFiles',
            'LegalFiles',
            'SourceCode',
            'Scripts',
            'MarkupAndData',
            'Configuration',
            'Logs',
            'TextFiles',
            'WebFiles',
            'MusicLyricsAndChords',
            'CreativeWriting',
            'Recipes',
            'ResearchFiles'
        )]
        [string[]] $Category,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum degree of parallelism for directory tasks')]
        [Alias('threads')]
        [int] $MaxDegreeOfParallelism = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: cancellation timeout in seconds')]
        [Alias('maxseconds')]
        [int] $TimeoutSeconds,
        [Parameter(Mandatory = $false, HelpMessage = 'Search across all available drives')]
        [switch] $AllDrives,
        [Parameter(Mandatory = $false, HelpMessage = 'Search for directories only')]
        [Alias('dir')]
        [switch] $Directory,
        [Parameter(Mandatory = $false, HelpMessage = 'Include both files and directories')]
        [Alias('both', 'DirectoriesAndFiles')]
        [switch] $FilesAndDirectories,
        [Parameter(Mandatory = $false, HelpMessage = 'Output matched items as objects')]
        [Alias('pt')]
        [switch] $PassThru,
        [Parameter(Mandatory = $false, HelpMessage = 'Include alternate data streams in search results')]
        [Alias('ads')]
        [switch] $IncludeAlternateFileStreams,
        [Parameter(Mandatory = $false, HelpMessage = 'Do not recurse into subdirectories')]
        [Alias('nr')]
        [switch] $NoRecurse,
        [Parameter(Mandatory = $false, HelpMessage = 'Follow symlinks and junctions during directory traversal')]
        [Alias('symlinks', 'sl')]
        [switch] $FollowSymlinkAndJunctions,
        [Parameter(Mandatory = $false, HelpMessage = 'Include optical disk drives')]
        [switch] $IncludeOpticalDiskDrives,
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: search specific drives')]
        [Alias('drives')]
        [string[]] $SearchDrives = @(),
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: search specific drives')]
        [char[]] $DriveLetter = @(),
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: search specific directories')]
        [string[]] $Root = @(),
        [Parameter(Mandatory = $false, HelpMessage = 'Enforces searching only within Root directories by stripping directory components from Name inputs')]
        [Alias('limit')]
        [switch] $LimitToRoot,
        [Parameter(Mandatory = $false, HelpMessage = 'Include non-text files when searching file contents')]
        [Alias('binary')]
        [switch] $IncludeNonTextFileMatching,
        [Parameter(Mandatory = $false, HelpMessage = 'Forces unattended mode and will not generate links')]
        [Alias('nl', 'ForceUnattenedMode')]
        [switch] $NoLinks,
        [Parameter(Mandatory = $false, HelpMessage = 'Gets or sets the case-sensitivity for files and directories')]
        [Alias('casing', 'CaseSearchMaskMatching')]
        [System.IO.MatchCasing] $CaseNameMatching = [System.IO.MatchCasing]::PlatformDefault,
        [Parameter(Mandatory = $false, HelpMessage = 'When set, performs content search within alternate data streams (ADS)')]
        [Alias('sads')]
        [switch] $SearchADSContent,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum recursion depth for directory traversal. 0 means unlimited.')]
        [Alias('md', 'depth', 'maxdepth')]
        [int] $MaxRecursionDepth = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum recursion depth for continuation searching upwards the tree. 0 means disabled.')]
        [Alias('maxupward')]
        [int] $MaxSearchUpDepth = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum file size in bytes to include in results. 0 means unlimited.')]
        [Alias('maxlength', 'maxsize')]
        [long] $MaxFileSize = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Minimum file size in bytes to include in results. 0 means no minimum.')]
        [Alias('minsize', 'minlength')]
        [long] $MinFileSize = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Only include files modified after this date/time (UTC)')]
        [Alias('ma', 'after')]
        [DateTime] $ModifiedAfter,
        [Parameter(Mandatory = $false, HelpMessage = 'Only include files modified before this date/time (UTC)')]
        [Alias('before', 'mb')]
        [DateTime] $ModifiedBefore,
        [Parameter(Mandatory = $false, HelpMessage = 'File attributes to skip (e.g., System, Hidden or None)')]
        [Alias('skipattr')]
        [System.IO.FileAttributes] $AttributesToSkip = [System.IO.FileAttributes]::System,
        [Parameter(Mandatory = $false, HelpMessage = 'Exclude files or directories matching these wildcard patterns')]
        [Alias('skiplike')]
        [string[]] $Exclude = @('*\.git\*'),
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Search for more than one match in each line of text')]
        [switch] $AllMatches,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Matches are case-sensitive')]
        [switch] $CaseSensitive,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Captures context lines around matches')]
        [int[]] $Context,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Culture name used for pattern matching')]
        [string] $Culture,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Specifies encoding for target files')]
        [ValidateSet('ASCII', 'ANSI', 'BigEndianUnicode', 'BigEndianUTF32', 'OEM', 'Unicode', 'UTF7', 'UTF8', 'UTF8BOM', 'UTF8NoBOM', 'UTF32', 'Default')]
        [string] $Encoding = 'UTF8NoBOM',
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Only the first match per file is returned')]
        [switch] $List,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Disables highlighting of matching strings in output')]
        [switch] $NoEmphasis,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'The NotMatch parameter finds text that does not match the pattern')]
        [switch] $NotMatch,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Output only matching strings instead of MatchInfo objects')]
        [switch] $Raw,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Use simple string matching instead of regex')]
        [switch] $SimpleMatch,
        [Parameter(Mandatory = $false, HelpMessage = 'Delete empty source directories after moving files')]
        [switch] $DeleteEmptyDirs,
        [Parameter(Mandatory = $false, HelpMessage = 'Target folder name date syntax')]
        [ValidateSet(
            'Year + Month + Day',
            'Year + Month',
            'Year'
        )]
        [string] $TargetFolderNameDateSyntax = 'Year + Month'
    )

    begin {

        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Find-Item' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        $uniqueNameCounters = @{}
    }

    process {

        Microsoft.PowerShell.Utility\Write-Progress -Id 11 -Activity "Copying files to date folders" -Status "Enumerating files..." -PercentComplete 0

        GenXdev\Find-Item @params -PassThru -Quiet -ProgressAction Continue | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction Continue {

            $item = $_
            $creationDate = GenXdev\Get-MediaFileCreationDate -FilePath $item.FullName

            if ($creationDate -ne [DateTime]::MinValue) {

                $dateFolderName = $creationDate.ToString('yyyy-MM-dd')
                switch ($TargetFolderNameDateSyntax) {
                    'Year + Month + Day' { $dateFolderName = $creationDate.ToString('yyyy-MM-dd') + "\" + $creationDate.ToString('MM') + "\" + $creationDate.ToString('dd') }
                    'Year + Month' { $dateFolderName = $creationDate.ToString('yyyy') + "\" + $creationDate.ToString('MM') }
                    'Year' { $dateFolderName = $creationDate.ToString('yyyy') }
                }

                $destinationPath = GenXdev\Expand-Path "$TargetFolder\$dateFolderName\$($item.Name)"

                if ($item.FullName -eq $destinationPath) {

                    return
                }

                if ([IO.File]::Exists($destinationPath)) {

                    # check file sizes
                    $existingFileSize = (Microsoft.PowerShell.Management\Get-Item -LiteralPath $destinationPath -Force).Length
                    $currentFileSize = $item.Length

                    if ($existingFileSize -ne $currentFileSize) {

                        $uniqueNo = 1;
                        if (-not $uniqueNameCounters.ContainsKey($destinationPath)) {

                            $uniqueNameCounters[$destinationPath] = $uniqueNo
                        }
                        else {

                            $uniqueNo = $uniqueNameCounters[$destinationPath] + 1;
                            $uniqueNameCounters[$destinationPath] = $uniqueNo;
                        }

                        $baseName = [IO.Path]::GetFileNameWithoutExtension($item.Name)
                        $extension = [IO.Path]::GetExtension($item.Name)
                        $newFileName = "$baseName ($($uniqueNo))$extension"
                        $destinationPath = GenXdev\Expand-Path "$TargetFolder\$dateFolderName\$newFileName" -CreateDirectory
                    }
                    else {

                        return; w
                    }
                }

                if ($PSCmdlet.ShouldProcess($item.FullName, "Copy to $destinationPath")) {
                    try {
                        $destinationPath = GenXdev\Expand-Path $destinationPath -CreateDirectory

                        Microsoft.PowerShell.Utility\Write-Verbose "Copying '$($item.FullName)' to '$destinationPath'"
                        Microsoft.PowerShell.Management\Copy-Item -LiteralPath $item.FullName -Destination $destinationPath -Force -ErrorAction Stop
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Warning "Failed to copy '$($item.FullName)' to '$destinationPath': $_"
                    }
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Verbose "WhatIf: would copy '$($item.FullName)' to '$destinationPath'"
                }
            }
        }

        Microsoft.PowerShell.Utility\Write-Progress -Id 11 -Activity "Copying files to date folders" -Status "Completed" -PercentComplete 100 -complete
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Expand-Path.ps1
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
Expands any given file reference to a full pathname.

.DESCRIPTION
Expands any given file reference to a full pathname, with respect to the user's
current directory. Can optionally assure that directories or files exist.

.PARAMETER FilePath
The file path to expand to a full path.

.PARAMETER CreateDirectory
Will create directory if it does not exist.

.PARAMETER CreateFile
Will create an empty file if it does not exist.

.EXAMPLE
Expand-Path -FilePath ".\myfile.txt" -CreateFile

.EXAMPLE
ep ~\documents\test.txt -CreateFile
#>
function Expand-Path {

    [CmdletBinding()]
    [Alias('ep')]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'Path to expand'
        )]
        [ValidateNotNullOrEmpty()]
        [string] $FilePath,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will create directory if it does not exist'
        )]
        [switch] $CreateDirectory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will create an empty file if it does not exist'
        )]
        [switch] $CreateFile,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will delete the file if it already exists'
        )]
        [switch] $DeleteExistingFile,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will force the use of a specific drive'
        )]
        [char] $ForceDrive = '*',
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will throw if file does not exist'
        )]
        [switch] $FileMustExist,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will throw if directory does not exist'
        )]
        [switch] $DirectoryMustExist
    )

    begin {

        # normalize path separators and remove double separators
        [string] $normalizedPath = $FilePath.Trim().Replace('\', [IO.Path]::DirectorySeparatorChar).
        Replace('/', [IO.Path]::DirectorySeparatorChar);

        if ($normalizedPath.StartsWith([IO.Path]::DirectorySeparatorChar + [IO.Path]::DirectorySeparatorChar)) {

            $normalizedPath = [IO.Path]::DirectorySeparatorChar + [IO.Path]::DirectorySeparatorChar +
            $normalizedPath.Substring(2).Replace(
                [IO.Path]::DirectorySeparatorChar + [IO.Path]::DirectorySeparatorChar,
                [IO.Path]::DirectorySeparatorChar
            )

            if (($ForceDrive -ne '*') -and
                ('ABCDEFGHIJKLMNOPQRSTUVWXYZ'.IndexOf(($ForceDrive -as [string]).ToUpperInvariant()) -ge 0)) {

                $i = $normalizedPath.IndexOf([IO.Path]::DirectorySeparatorChar, 2);
                $normalizedPath = $ForceDrive + ':' + (

                    $i -lt 0 ? ([IO.Path]::DirectorySeparatorChar) : $normalizedPath.Substring($i)
                )
            }
        }
        else {

            $normalizedPath = $normalizedPath.Replace(
                [IO.Path]::DirectorySeparatorChar + [IO.Path]::DirectorySeparatorChar,
                [IO.Path]::DirectorySeparatorChar
            )
        }

        # check if path ends with a directory separator
        $hasTrailingSeparator = $normalizedPath.EndsWith(
            [System.IO.Path]::DirectorySeparatorChar) -or
        $normalizedPath.EndsWith([System.IO.Path]::AltDirectorySeparatorChar)
    }


    process {

        # expand home directory if path starts with ~
        if ($normalizedPath.StartsWith('~')) {

            if (($ForceDrive -ne '*') -and
                ('ABCDEFGHIJKLMNOPQRSTUVWXYZ'.IndexOf(($ForceDrive -as [string]).ToUpperInvariant()) -ge 0)) {

                $i = $normalizedPath.IndexOf([IO.Path]::DirectorySeparatorChar, 1);
                $normalizedPath = $ForceDrive + ':' + (

                    $i -lt 0 ? [IO.Path]::DirectorySeparatorChar + '**' + [IO.Path]::DirectorySeparatorChar : ('\**' + $normalizedPath.Substring($i))
                )
            }
            else {

                $normalizedPath = Microsoft.PowerShell.Management\Join-Path (Microsoft.PowerShell.Management\Convert-Path ~) `
                    $normalizedPath.Substring(1)
            }
        }

        if ((($normalizedPath.Length -gt 1) -and
                ($normalizedPath.Substring(1, 1) -eq ':'))) {

            if (($ForceDrive -ne '*') -and
                ('ABCDEFGHIJKLMNOPQRSTUVWXYZ'.IndexOf(($ForceDrive -as [string]).ToUpperInvariant()) -ge 0)) {
                $i = $normalizedPath.IndexOf([IO.Path]::DirectorySeparatorChar);
                $normalizedPath = $ForceDrive + ':' + [IO.Path]::DirectorySeparatorChar + (($i -eq -1 -and $normalizedPath.Length -gt 2) -or $i -eq 2 ? '**' + [IO.Path]::DirectorySeparatorChar : '') + $normalizedPath.Substring(2)
            }
            else {

                if (($normalizedPath.Length -lt 3) -or ($normalizedPath.Substring(2, 1) -ne [System.IO.Path]::DirectorySeparatorChar)) {

                    Microsoft.PowerShell.Management\Push-Location -LiteralPath $normalizedPath.Substring(0, 2)
                    try {
                        $normalizedPath = "$(Microsoft.PowerShell.Management\Get-Location)$([IO.Path]::DirectorySeparatorChar)$($normalizedPath.Substring(2))"
                        $normalizedPath = [System.IO.Path]::GetFullPath($normalizedPath)
                    }
                    finally {
                        Microsoft.PowerShell.Management\Pop-Location
                    }
                }
            }
        }

        # handle absolute paths (drive letter or UNC)
        if ($normalizedPath.StartsWith([IO.Path]::DirectorySeparatorChar + [IO.Path]::DirectorySeparatorChar)) {

            try {
                $normalizedPath = [System.IO.Path]::GetFullPath($normalizedPath)
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose 'Failed to normalize path, keeping original'
            }
        }
        else {

            if (($ForceDrive -ne '*') -and
                ('ABCDEFGHIJKLMNOPQRSTUVWXYZ'.IndexOf(($ForceDrive -as [string]).ToUpperInvariant()) -ge 0)) {

                if ($normalizedPath.Length -lt 2 -or $normalizedPath.Substring(1, 1) -ne ':') {

                    $newPath = $ForceDrive + ':' + [IO.Path]::DirectorySeparatorChar;

                    while ($normalizedPath.StartsWith('.')) {

                        $i = $normalizedPath.IndexOf([IO.Path]::DirectorySeparatorChar);
                        if ($i -lt 0) {

                            $normalizedPath = ''
                        }
                        else {

                            $normalizedPath = $normalizedPath.Substring($i + 1)
                        }
                    }

                    if ($normalizedPath.StartsWith([IO.Path]::DirectorySeparatorChar)) {

                        $newPath += $normalizedPath
                    }
                    else {

                        $newPath += '**' + [IO.Path]::DirectorySeparatorChar + $normalizedPath
                    }

                    $normalizedPath = $newPath
                }
            }

            # handle relative paths
            try {
                $normalizedPath = [System.IO.Path]::GetFullPath(
                    [System.IO.Path]::Combine($pwd, $normalizedPath))
            }
            catch {
                $normalizedPath = Microsoft.PowerShell.Management\Convert-Path -LiteralPath $normalizedPath
            }
        }

        # handle directory/file creation if requested
        if ($DirectoryMustExist -or $FileMustExist) {

            # get directory path accounting for trailing separator
            $directoryPath = if ($hasTrailingSeparator) {
                [IO.Path]::TrimEndingDirectorySeparator($normalizedPath)
            }
            else {
                [IO.Path]::TrimEndingDirectorySeparator(
                    [System.IO.Path]::GetDirectoryName($normalizedPath))
            }

            # create directory if it doesn't exist
            if ($DirectoryMustExist -and (-not [IO.Directory]::Exists($directoryPath))) {

                throw "Directory does not exist: $directoryPath"
            }

            if ($FileMustExist -and (-not [IO.File]::Exists($normalizedPath))) {

                throw "File does not exist: $normalizedPath"
            }
        }

        # handle directory/file creation if requested
        if ($CreateDirectory -or $CreateFile) {

            # get directory path accounting for trailing separator
            $directoryPath = if ($hasTrailingSeparator) {
                [IO.Path]::TrimEndingDirectorySeparator($normalizedPath)
            }
            else {
                [IO.Path]::TrimEndingDirectorySeparator(
                    [System.IO.Path]::GetDirectoryName($normalizedPath))
            }

            # create directory if it doesn't exist
            if (-not [IO.Directory]::Exists($directoryPath)) {
                $null = [IO.Directory]::CreateDirectory($directoryPath)
                Microsoft.PowerShell.Utility\Write-Verbose "Created directory: $directoryPath"
            }
        }

        # delete existing file if requested
        if ($DeleteExistingFile -and [IO.File]::Exists($normalizedPath)) {

            # verify path doesn't point to existing directory
            if ([IO.Directory]::Exists($normalizedPath)) {
                throw 'Cannot create file: Path refers to an existing directory'
            }

            if (-not (GenXdev\Remove-ItemWithFallback -Path $normalizedPath)) {

                throw "Failed to delete existing file: $normalizedPath"
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Deleted existing file: $normalizedPath"
        }


        # clean up trailing separators except for root paths
        while ([IO.Path]::EndsInDirectorySeparator($normalizedPath) -and
            $normalizedPath.Length -gt 4) {
            $normalizedPath = [IO.Path]::TrimEndingDirectorySeparator($normalizedPath)
        }

        # handle file creation if requested
        if ($CreateFile) {

            # verify path doesn't point to existing directory
            if ([IO.Directory]::Exists($normalizedPath)) {
                throw 'Cannot create file: Path refers to an existing directory'
            }


            # create empty file if it doesn't exist
            if (-not [IO.File]::Exists($normalizedPath)) {
                $null = [IO.File]::WriteAllText($normalizedPath, '')
                Microsoft.PowerShell.Utility\Write-Verbose "Created empty file: $normalizedPath"
            }
        }

        return $normalizedPath
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Find-DuplicateFiles.ps1
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


# don't remove this line [dontrefactor]

<#
.SYNOPSIS
Find duplicate files across multiple directories based on configurable criteria.

.DESCRIPTION
Recursively searches specified directories for duplicate files. Files are
considered duplicates if the content is either exactly the same or starts with
the same content (for partial comparison using the -ComparePartial switch).
The cmdlet uses a quick hash of the initial bytes of the file for efficient grouping before performing full content comparisons.
The size of this quick hash can be configured with the -CompareByteLength parameter,
allowing for a balance between performance and accuracy in duplicate detection,
only files that have a minimum length of this CompareByteLength value will be considered for duplicate detection,
smaller files will be grouped based on filename only.

.PARAMETER Name
File name or wildcard pattern to match. Defaults to `*`.

.PARAMETER Input
Pipeline input for file paths or objects with a `FullName`/`Name` property.

.PARAMETER Content
Regular expression patterns to match inside file contents (when applicable).

.PARAMETER RelativeBasePath
Base path used to resolve relative paths in output; defaults to the current
directory.

.PARAMETER Category
Optional filter to include only files that belong to selected categories.

.PARAMETER MaxDegreeOfParallelism
Maximum parallel directory operations. `0` means automatic.

.PARAMETER TimeoutSeconds
Optional timeout in seconds for the search operation.

.PARAMETER AllDrives
Switch to search across all mounted drives.

.PARAMETER Directory
Only search for directories instead of files.

.PARAMETER FilesAndDirectories
Include both files and directories in search results.

.PARAMETER PassThru
Output matched items as objects instead of formatted text.

.PARAMETER IncludeAlternateFileStreams
Include alternate data streams (ADS) in the search results.

.PARAMETER NoRecurse
Do not recurse into subdirectories when searching.

.PARAMETER FollowSymlinkAndJunctions
Follow symbolic links and junctions during traversal.

.PARAMETER IncludeOpticalDiskDrives
Include optical disks when enumerating drives.

.PARAMETER SearchDrives
Explicit list of drive root paths to search.

.PARAMETER DriveLetter
List of drive letters to search.

.PARAMETER Root
Base directories to combine with `Name` patterns when searching.

.PARAMETER LimitToRoot
When used, restricts matches to provided `Root` directories and prevents
escaping above them.

.PARAMETER IncludeNonTextFileMatching
Allow content matching against non-text files (binary/media) when doing
content search.

.PARAMETER NoLinks
Operate in unattended mode; do not generate links or interactive prompts.

.PARAMETER CaseNameMatching
Controls case-sensitivity for file name matching.

.PARAMETER SearchADSContent
When set, also search within alternate data streams (ADS) contents.

.PARAMETER MaxRecursionDepth
Maximum directory recursion depth; `0` means unlimited.

.PARAMETER MaxSearchUpDepth
Maximum upward search depth when performing relative searches.

.PARAMETER MaxFileSize
Maximum file size in bytes to include; `0` means unlimited.

.PARAMETER MinFileSize
Minimum file size in bytes to include; `0` means no minimum.

.PARAMETER ModifiedAfter
Only include items modified after this UTC date/time.

.PARAMETER ModifiedBefore
Only include items modified before this UTC date/time.

.PARAMETER AttributesToSkip
File attributes to exclude from results (for example `System`).

.PARAMETER Exclude
Wildcard patterns to exclude files or directories from the search.

.PARAMETER AllMatches
Return all matches per line when using content pattern matching.

.PARAMETER CaseSensitive
Make content pattern matches case-sensitive.

.PARAMETER Context
Capture context lines around found content matches.

.PARAMETER Culture
Culture name used for pattern matching when using `SimpleMatch`.

.PARAMETER Encoding
File encoding to use for content operations.

.PARAMETER List
Only the first match per file is returned (efficient list mode).

.PARAMETER NoEmphasis
Disable highlighting in output.

.PARAMETER NotMatch
Return files that do not match the provided content pattern.

.PARAMETER Raw
Output only matching strings instead of `MatchInfo` objects.

.PARAMETER SimpleMatch
Use simple string matching (not regular expressions) for content matching.

.PARAMETER ComparePartial
Will return of files with different sizes as long as they start with the same filename and content, this detect broken downloads/copy operations

.PARAMETER CompareByteLength
Quick compare byte length of files, used for fast indexing and searching of duplicates, this will not compare content of files

.EXAMPLE
Find duplicate text files in the Documents folder based on exact content:
Find-DuplicateFiles ~\Documents\*.doc* -ComparePartial

.EXAMPLE
Removes all duplicate media files in the Pictures and Videos folders, keeping only one copy of each duplicate set:
(Find-DuplicateFiles ~\Pictures\*, ~\Videos\* -Category Pictures, Videos -ComparePartial).Duplicates.FullName | Remove-Item -Force -Verbose

#>
function Find-DuplicateFiles {

    [CmdletBinding()]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [Alias('fdf')]

    param(
        [Parameter(Position = 1, Mandatory = $false, HelpMessage = 'File name or pattern to search for. Default is ''*''')]
        [SupportsWildcards()]
        [Alias("SourceFolder")]
        [ValidateNotNullOrEmpty()]
        [string[]] $Name = @('*'),
        [Parameter(Mandatory = $false, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, HelpMessage = 'File name or pattern to search for from pipeline input. Default is ''*''')]
        [Alias('FullName')]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [object] $Input,
        [Parameter(Position = 2, Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Regular expression pattern to search within content')]
        [Alias('mc', 'matchcontent', 'regex', 'Pattern')]
        [ValidateNotNull()]
        [SupportsWildcards()]
        [string[]] $Content = @('.*'),
        [Parameter(Position = 3, Mandatory = $false, HelpMessage = 'Base path for resolving relative paths in output')]
        [Alias('base')]
        [ValidateNotNullOrEmpty()]
        [string] $RelativeBasePath = '.\',
        [Parameter(Mandatory = $false, HelpMessage = 'Only output files belonging to selected categories')]
        [Alias('filetype')]
        [ValidateSet(
            'Pictures',
            'Videos',
            'Music',
            'Documents',
            'Spreadsheets',
            'Presentations',
            'Archives',
            'Installers',
            'Executables',
            'Databases',
            'DesignFiles',
            'Ebooks',
            'Subtitles',
            'Fonts',
            'EmailFiles',
            '3DModels',
            'GameAssets',
            'MedicalFiles',
            'FinancialFiles',
            'LegalFiles',
            'SourceCode',
            'Scripts',
            'MarkupAndData',
            'Configuration',
            'Logs',
            'TextFiles',
            'WebFiles',
            'MusicLyricsAndChords',
            'CreativeWriting',
            'Recipes',
            'ResearchFiles'
        )]
        [string[]] $Category,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum degree of parallelism for directory tasks')]
        [Alias('threads')]
        [int] $MaxDegreeOfParallelism = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: cancellation timeout in seconds')]
        [Alias('maxseconds')]
        [int] $TimeoutSeconds,
        [Parameter(Mandatory = $false, HelpMessage = 'Search across all available drives')]
        [switch] $AllDrives,
        [Parameter(Mandatory = $false, HelpMessage = 'Search for directories only')]
        [Alias('dir')]
        [switch] $Directory,
        [Parameter(Mandatory = $false, HelpMessage = 'Include both files and directories')]
        [Alias('both', 'DirectoriesAndFiles')]
        [switch] $FilesAndDirectories,
        [Parameter(Mandatory = $false, HelpMessage = 'Output matched items as objects')]
        [Alias('pt')]
        [switch] $PassThru,
        [Parameter(Mandatory = $false, HelpMessage = 'Include alternate data streams in search results')]
        [Alias('ads')]
        [switch] $IncludeAlternateFileStreams,
        [Parameter(Mandatory = $false, HelpMessage = 'Do not recurse into subdirectories')]
        [Alias('nr')]
        [switch] $NoRecurse,
        [Parameter(Mandatory = $false, HelpMessage = 'Follow symlinks and junctions during directory traversal')]
        [Alias('symlinks', 'sl')]
        [switch] $FollowSymlinkAndJunctions,
        [Parameter(Mandatory = $false, HelpMessage = 'Include optical disk drives')]
        [switch] $IncludeOpticalDiskDrives,
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: search specific drives')]
        [Alias('drives')]
        [string[]] $SearchDrives = @(),
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: search specific drives')]
        [char[]] $DriveLetter = @(),
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: search specific directories')]
        [string[]] $Root = @(),
        [Parameter(Mandatory = $false, HelpMessage = 'Enforces searching only within Root directories by stripping directory components from Name inputs')]
        [Alias('limit')]
        [switch] $LimitToRoot,
        [Parameter(Mandatory = $false, HelpMessage = 'Include non-text files when searching file contents')]
        [Alias('binary')]
        [switch] $IncludeNonTextFileMatching,
        [Parameter(Mandatory = $false, HelpMessage = 'Forces unattended mode and will not generate links')]
        [Alias('nl', 'ForceUnattenedMode')]
        [switch] $NoLinks,
        [Parameter(Mandatory = $false, HelpMessage = 'Gets or sets the case-sensitivity for files and directories')]
        [Alias('casing', 'CaseSearchMaskMatching')]
        [System.IO.MatchCasing] $CaseNameMatching = [System.IO.MatchCasing]::PlatformDefault,
        [Parameter(Mandatory = $false, HelpMessage = 'When set, performs content search within alternate data streams (ADS)')]
        [Alias('sads')]
        [switch] $SearchADSContent,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum recursion depth for directory traversal. 0 means unlimited.')]
        [Alias('md', 'depth', 'maxdepth')]
        [int] $MaxRecursionDepth = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum recursion depth for continuation searching upwards the tree. 0 means disabled.')]
        [Alias('maxupward')]
        [int] $MaxSearchUpDepth = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum file size in bytes to include in results. 0 means unlimited.')]
        [Alias('maxlength', 'maxsize')]
        [long] $MaxFileSize = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Minimum file size in bytes to include in results. 0 means no minimum.')]
        [Alias('minsize', 'minlength')]
        [long] $MinFileSize = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Only include files modified after this date/time (UTC)')]
        [Alias('ma', 'after')]
        [DateTime] $ModifiedAfter,
        [Parameter(Mandatory = $false, HelpMessage = 'Only include files modified before this date/time (UTC)')]
        [Alias('before', 'mb')]
        [DateTime] $ModifiedBefore,
        [Parameter(Mandatory = $false, HelpMessage = 'File attributes to skip (e.g., System, Hidden or None)')]
        [Alias('skipattr')]
        [System.IO.FileAttributes] $AttributesToSkip = [System.IO.FileAttributes]::System,
        [Parameter(Mandatory = $false, HelpMessage = 'Exclude files or directories matching these wildcard patterns')]
        [Alias('skiplike')]
        [string[]] $Exclude = @('*\.git\*'),
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Search for more than one match in each line of text')]
        [switch] $AllMatches,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Matches are case-sensitive')]
        [switch] $CaseSensitive,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Captures context lines around matches')]
        [int[]] $Context,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Culture name used for pattern matching')]
        [string] $Culture,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Specifies encoding for target files')]
        [ValidateSet('ASCII', 'ANSI', 'BigEndianUnicode', 'BigEndianUTF32', 'OEM', 'Unicode', 'UTF7', 'UTF8', 'UTF8BOM', 'UTF8NoBOM', 'UTF32', 'Default')]
        [string] $Encoding = 'UTF8NoBOM',
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Only the first match per file is returned')]
        [switch] $List,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Disables highlighting of matching strings in output')]
        [switch] $NoEmphasis,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'The NotMatch parameter finds text that does not match the pattern')]
        [switch] $NotMatch,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Output only matching strings instead of MatchInfo objects')]
        [switch] $Raw,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Use simple string matching instead of regex')]
        [switch] $SimpleMatch,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Will return of files with different sizes as long as they start with the same filename and content, this detect broken downloads/copy operations'
        )]
        [switch] $ComparePartial,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Quick compare byte length of files, used for fast indexing and searching of duplicates, this will not compare content of files'
        )]
        [int] $CompareByteLength = 65536
    )

    begin {

        $CompareByteLength = [Math]::Max(1, $CompareByteLength)

        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Find-Item' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        $foundFiles = @{}

        [byte[]] $hashBuffer = Microsoft.PowerShell.Utility\New-Object byte[] $CompareByteLength
        [System.Security.Cryptography.SHA256] $sha256 = [System.Security.Cryptography.SHA256]::Create()
    }

    process {

        Microsoft.PowerShell.Utility\Write-Progress -Id 1 -Activity "Finding duplicates" -Status "Enumerating files..." -PercentComplete 0

        GenXdev\Find-Item @params -PassThru -Quiet -ProgressAction Continue | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction Continue {

            $item = $_

            $QuickHash = [string]::Empty

            if ($item.Length -gt 0) {
                try {
                    $fileStream = $item.OpenRead()
                    $readLength = $fileStream.Read($hashBuffer, 0, $CompareByteLength)
                    $null = $sha256.Initialize()
                    $sha256Bytes = $sha256.ComputeHash($hashBuffer, 0, $readLength)
                    $QuickHash = [BitConverter]::ToString($sha256Bytes).Replace('-', '')
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning "Failed to compute hash for file '$($item.FullName)': $_"
                    return
                }
                finally {
                    if ($fileStream) {
                        $null = $fileStream.Close()
                        $null = $fileStream.Dispose()
                        $fileStream = $null
                    }
                }
            }

            $key = $QuickHash -eq "" ? [IO.Path]::GetFileNameWithoutExtension($item.Name).ToLowerInvariant() : $QuickHash

            if (-not $foundFiles.ContainsKey($key)) {

                $foundFiles[$key] = @()
            }

            $foundFiles[$key] += [PSCustomObject]@{

                FullName      = $item.FullName
                Name          = $item.Name
                Size          = $item.Length
                Extension     = $item.Extension
                LastWriteTime = $item.LastWriteTimeUtc
            }
        }
    }

    end {

        function Compare-ByteArraysFast ([byte[]]$array1, [byte[]]$array2) {

            # Quick reference check and length check first
            if ($array1.Length -ne $array2.Length) { return $false }

            # Use LINQ SequenceEqual for byte array comparison
            # MemoryExtensions requires Span<T> which is ByRef-like and not supported in PowerShell
            return [System.Linq.Enumerable]::SequenceEqual($array1, $array2)
        }

        [byte[]] $compareBuffer1 = Microsoft.PowerShell.Utility\New-Object byte[] (1024 * 1024)
        [byte[]] $compareBuffer2 = Microsoft.PowerShell.Utility\New-Object byte[] (1024 * 1024)

        $i = 0
        foreach ($group in $foundFiles.GetEnumerator()) {

            if ($i % 20 -eq 0) {

                Microsoft.PowerShell.Utility\Write-Progress -Id 1 -Activity "Finding duplicates" -Status "Processing group $($i + 1) of $($foundFiles.Count)" -PercentComplete ([math]::Round((($i + 1) / $foundFiles.Count) * 100, 2))
            }

            if ($group.Value.Count -gt 1) {

                $groups = @($group.Value | Microsoft.PowerShell.Utility\Sort-Object -Property @{Expression = 'Size'; Descending = $true }, @{Expression = 'LastWriteTime'; Descending = $false })

                $first = $groups[0]
                $hash = [string]::Empty

                Microsoft.PowerShell.Utility\Write-Progress -Id 1 -Activity "Finding duplicates" -Status "Processing file $($first.Name)" -PercentComplete ([math]::Round((($i + 1) / $foundFiles.Count) * 100, 2))

                try {
                    $hash = Microsoft.PowerShell.Utility\Get-FileHash -LiteralPath $first.FullName -Algorithm SHA256
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning "Failed to compute hash for original file '$($first.FullName)': $_"
                    continue
                }

                $duplicates = @($groups | Microsoft.PowerShell.Utility\Select-Object -Skip 1 | Microsoft.PowerShell.Core\ForEach-Object -erroraction Continue {

                        if ($ComparePartial -and ($_.Size -ne $first.Size)) {

                            try {

                                $fileStream1 = (Microsoft.PowerShell.Management\Get-Item -LiteralPath $_.FullName -Force).OpenRead()
                                $fileStream2 = (Microsoft.PowerShell.Management\Get-Item -LiteralPath $first.FullName -Force).OpenRead()

                                $bytesRead1 = 0
                                do {

                                    $bytesRead1 = $fileStream1.Read($compareBuffer1, 0, $compareBuffer1.Length)

                                    if ($bytesRead1 -eq 0) {
                                        break
                                    }

                                    $bytesRead2 = $fileStream2.Read($compareBuffer2, 0, $bytesRead1)

                                    if ($bytesRead2 -ne $bytesRead1) {
                                        return;
                                    }

                                    if ($bytesRead1 -eq $compareBuffer1.Length) {
                                        $segment1 = $compareBuffer1
                                        $segment2 = $compareBuffer2
                                    }
                                    else {
                                        $segment1 = $compareBuffer1[0..($bytesRead1 - 1)]
                                        $segment2 = $compareBuffer2[0..($bytesRead1 - 1)]
                                    }

                                    if (-not (Compare-ByteArraysFast $segment1 $segment2)) {
                                        return
                                    }

                                } while ($bytesRead1 -gt 0)

                                $_
                            }
                            catch {
                                Microsoft.PowerShell.Utility\Write-Warning "Failed to compare files '$($_.FullName)' and '$($first.FullName)': $_"
                                return
                            }
                            finally {

                                if ($fileStream1) {

                                    $null = $fileStream1.Close()
                                    $null = $fileStream1.Dispose()
                                    $fileStream1 = $null
                                }

                                if ($fileStream2) {

                                    $null = $fileStream2.Close()
                                    $null = $fileStream2.Dispose()
                                    $fileStream2 = $null
                                }
                            }
                        }
                        else {
                            try {
                                $duplicateHash = Microsoft.PowerShell.Utility\Get-FileHash -LiteralPath $_.FullName -Algorithm SHA256
                            }
                            catch {
                                Microsoft.PowerShell.Utility\Write-Warning "Failed to compute hash for file '$($_.FullName)': $_"
                                $null = $fileStream1.Close()
                                $null = $fileStream1.Dispose()
                                $fileStream1 = $null
                                return
                            }

                            if ($hash.Hash -eq $duplicateHash.Hash) {
                                $_
                            }
                        }
                    })

                if ($duplicates.Count -gt 0) {

                    Microsoft.PowerShell.Utility\Write-Output ([PSCustomObject] @{

                            OriginalFile = $first
                            Duplicates   = $duplicates
                        })
                }
            }

            $i++
        }

        if ($sha256) {

            $null = $sha256.Dispose()
            $sha256 = $null
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Invoke-Fasti.ps1
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

# Don't remove this line [dontrefactor]

<#
.SYNOPSIS
Extracts archive files in the current directory to their own folders and deletes
them afterwards.

.DESCRIPTION
Automatically extracts common archive formats (zip, 7z, tar, etc.) found in the
current directory into individual folders named after each archive. After
successful extraction, the original archive files are deleted. Requires 7-Zip
to be installed on the system.

.EXAMPLE
PS C:\Downloads> Invoke-Fasti

.EXAMPLE
PS C:\Downloads> fasti

.NOTES
Supported formats: 7z, zip, rar, tar, iso and many others.
Requires 7-Zip installation (will attempt auto-install via winget if missing).
#>
function Invoke-Fasti {

    [CmdletBinding()]
    [Alias("fasti")]
    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Enter the password for the encrypted archive(s)"
        )]
        [string] $Password,

        [Parameter(
            Mandatory = $false,
            HelpMessage = "Recursively extract archives found within extracted folders"
        )]
        [switch] $ExtractOutputToo
    )

    begin {

        # list of supported archive extensions
        $extensions = @("*.7z", "*.7z.001", "*.xz", "*.bzip2", "*.gzip", "*.tar", "*.zip", "*.zip.001",
            "*.wim", "*.ar", "*.arj", "*.cab", "*.chm", "*.cpio", "*.cramfs",
            "*.dmg", "*.ext", "*.fat", "*.gpt", "*.hfs", "*.ihex", "*.iso",
            "*.lzh", "*.lzma", "*.mbr", "*.msi", "*.nsis", "*.ntfs", "*.qcow2",
            "*.rar", "*.rpm", "*.squashfs", "*.udf", "*.uefi", "*.vdi", "*.vhd",
            "*.vmdk", "*.wim", "*.xar", "*.z")
    }


    process {

        # process each archive file found in current directory
        Microsoft.PowerShell.Management\Get-ChildItem -Path $extensions -File -ErrorAction SilentlyContinue |
            Microsoft.PowerShell.Core\ForEach-Object {

                Microsoft.PowerShell.Utility\Write-Verbose "Processing archive: $($PSItem.Name)"

                # initialize 7zip executable path
                $sevenZip = "7z"

                # get archive details
                $zipFile = $PSItem.fullname
                $name = [system.IO.Path]::GetFileNameWithoutExtension($zipFile)
                $path = [System.IO.Path]::GetDirectoryName($zipFile)
                $extractPath = [system.Io.Path]::Combine($path, $name)

                # create extraction directory if it doesn"t exist
                if ([System.IO.Directory]::exists($extractPath) -eq $false) {

                    Microsoft.PowerShell.Utility\Write-Verbose "Creating directory: $extractPath"
                    [System.IO.Directory]::CreateDirectory($extractPath)
                }

                # verify 7zip installation or attempt to install it
                if ((Microsoft.PowerShell.Core\Get-Command $sevenZip -ErrorAction SilentlyContinue).Length -eq 0) {

                    $sevenZip = "${env:ProgramFiles}\7-Zip\7z.exe"

                    if (![IO.File]::Exists($sevenZip)) {

                        if ((Microsoft.PowerShell.Core\Get-Command winget -ErrorAction SilentlyContinue).Length -eq 0) {

                            throw "You need to install 7zip or winget first"
                        }

                        # request consent before installing 7-Zip
                        $consent = GenXdev\Confirm-InstallationConsent `
                            -ApplicationName "7-Zip" `
                            -Source "Winget" `
                            -Description "Archive extraction and compression utility required for processing archive files" `
                            -Publisher "Igor Pavlov"

                        if (-not $consent) {
                            throw "7-Zip installation was denied by user. Cannot proceed with archive extraction."
                        }

                        Microsoft.PowerShell.Utility\Write-Verbose "Installing 7-Zip via winget..."
                        winget install 7zip

                        if (![IO.File]::Exists($sevenZip)) {

                            throw "You need to install 7-zip"
                        }
                    }
                }

                # extract archive contents
                Microsoft.PowerShell.Utility\Write-Verbose "Extracting to: $extractPath"
                $pwparam = if ($Password) { "-p$Password" } else { "" }
                if ([string]::IsNullOrWhiteSpace($Password)) {

                    & $sevenZip x -y "-o$extractPath" $zipFile
                }
                else {

                    & $sevenZip x -y $pwparam "-o$extractPath" $zipFile
                }

                # delete original archive if extraction succeeded
                if ($?) {

                    try {
                        Microsoft.PowerShell.Utility\Write-Verbose "Removing original archive: $zipFile"
                        Microsoft.PowerShell.Management\Remove-Item -LiteralPath "$zipFile" -Force -ErrorAction silentlycontinue
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Verbose "Failed to remove original archive"
                    }

                    # if ExtractOutputToo is enabled, recursively extract archives in the output folder
                    if ($ExtractOutputToo) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Checking for nested archives in: $extractPath"

                        do {
                            # find all archives recursively in the extraction path
                            $nestedArchives = Microsoft.PowerShell.Management\Get-ChildItem -Recurse -File "${extractPath}\*" -ErrorAction SilentlyContinue |
                                Microsoft.PowerShell.Core\Where-Object {
                                    $extensions -contains "*$($_.Extension)"
                                }

                            if ($nestedArchives.Count -eq 0) {
                                Microsoft.PowerShell.Utility\Write-Verbose "No more nested archives found"
                                break
                            }

                            Microsoft.PowerShell.Utility\Write-Verbose "Found $($nestedArchives.Count) nested archive(s)"

                            $nestedDirectories = $nestedArchives | Microsoft.PowerShell.Core\ForEach-Object {
                                [System.IO.Path]::GetDirectoryName($_.FullName)
                            } | Microsoft.PowerShell.Utility\Select-Object -Unique

                            $errorOccured = $false

                            # process each nested archive in its own directory
                            foreach ($nestedDirectory in $nestedDirectories) {

                                Microsoft.PowerShell.Utility\Write-Verbose "Processing nested archive in: $nestedDirectory"

                                try {
                                    Microsoft.PowerShell.Management\Push-Location -LiteralPath $nestedDirectory
                                    if ($Password) {
                                        GenXdev\Invoke-Fasti -Password $Password -ExtractOutputToo
                                    } else {
                                        GenXdev\Invoke-Fasti -ExtractOutputToo
                                    }
                                }
                                catch {
                                    $errorOccured = $true
                                    Microsoft.PowerShell.Utility\Write-Verbose "Error occurred while processing nested archive in: $nestedDirectory"
                                }
                                finally {
                                    Microsoft.PowerShell.Management\Pop-Location
                                }
                            }
                        } while (-not $errorOccured)
                    }
                }
            }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Move-FilesToDateFolder.ps1
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

# ##############################################################################
# Part of PowerShell module : GenXdev.FileSystem
# Original cmdlet filename : Rename-InProject.ps1
# Original author : René Vaessen / GenXdev
# Version : 3.26.2026
# ################################################################################
# Copyright (c) René Vaessen / GenXdev
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ################################################################################
# ###############################################################################
<#
.SYNOPSIS
Moves files matching search criteria into date-based subfolders.

.DESCRIPTION
Searches for files using the same parameter set as `Find-Item` and moves each
matched file into a subfolder of `TargetFolder` based on the file's creation
or media date. The cmdlet supports content matching, drive-wide searches and
many filters. It can optionally delete empty source folders after moving.

Attempts several strategies to determine an accurate creation or capture
date for the specified file. strategies include reading image EXIF metadata,
parsing date/time information from filenames, and falling back to the file's
last-write time when no other reliable information is available.

.PARAMETER TargetFolder
The root path where matched files will be moved into date-based
subfolders. This parameter is required.

.PARAMETER Name
File name or wildcard pattern to match. Defaults to `*`.

.PARAMETER Input
Pipeline input for file paths or objects with a `FullName`/`Name` property.

.PARAMETER Content
Regular expression patterns to match inside file contents (when applicable).

.PARAMETER RelativeBasePath
Base path used to resolve relative paths in output; defaults to the current
directory.

.PARAMETER Category
Optional filter to include only files that belong to selected categories.

.PARAMETER MaxDegreeOfParallelism
Maximum parallel directory operations. `0` means automatic.

.PARAMETER TimeoutSeconds
Optional timeout in seconds for the search operation.

.PARAMETER AllDrives
Switch to search across all mounted drives.

.PARAMETER Directory
Only search for directories instead of files.

.PARAMETER FilesAndDirectories
Include both files and directories in search results.

.PARAMETER PassThru
Output matched items as objects instead of formatted text.

.PARAMETER IncludeAlternateFileStreams
Include alternate data streams (ADS) in the search results.

.PARAMETER NoRecurse
Do not recurse into subdirectories when searching.

.PARAMETER FollowSymlinkAndJunctions
Follow symbolic links and junctions during traversal.

.PARAMETER IncludeOpticalDiskDrives
Include optical disks when enumerating drives.

.PARAMETER SearchDrives
Explicit list of drive root paths to search.

.PARAMETER DriveLetter
List of drive letters to search.

.PARAMETER Root
Base directories to combine with `Name` patterns when searching.

.PARAMETER LimitToRoot
When used, restricts matches to provided `Root` directories and prevents
escaping above them.

.PARAMETER IncludeNonTextFileMatching
Allow content matching against non-text files (binary/media) when doing
content search.

.PARAMETER NoLinks
Operate in unattended mode; do not generate links or interactive prompts.

.PARAMETER CaseNameMatching
Controls case-sensitivity for file name matching.

.PARAMETER SearchADSContent
When set, also search within alternate data streams (ADS) contents.

.PARAMETER MaxRecursionDepth
Maximum directory recursion depth; `0` means unlimited.

.PARAMETER MaxSearchUpDepth
Maximum upward search depth when performing relative searches.

.PARAMETER MaxFileSize
Maximum file size in bytes to include; `0` means unlimited.

.PARAMETER MinFileSize
Minimum file size in bytes to include; `0` means no minimum.

.PARAMETER ModifiedAfter
Only include items modified after this UTC date/time.

.PARAMETER ModifiedBefore
Only include items modified before this UTC date/time.

.PARAMETER AttributesToSkip
File attributes to exclude from results (for example `System`).

.PARAMETER Exclude
Wildcard patterns to exclude files or directories from the search.

.PARAMETER AllMatches
Return all matches per line when using content pattern matching.

.PARAMETER CaseSensitive
Make content pattern matches case-sensitive.

.PARAMETER Context
Capture context lines around found content matches.

.PARAMETER Culture
Culture name used for pattern matching when using `SimpleMatch`.

.PARAMETER Encoding
File encoding to use for content operations.

.PARAMETER List
Only the first match per file is returned (efficient list mode).

.PARAMETER NoEmphasis
Disable highlighting in output.

.PARAMETER NotMatch
Return files that do not match the provided content pattern.

.PARAMETER Raw
Output only matching strings instead of `MatchInfo` objects.

.PARAMETER SimpleMatch
Use simple string matching (not regular expressions) for content matching.

.PARAMETER DeleteEmptyDirs
When present, empty source folders (and empty parents) will be removed after
files are moved.

.PARAMETER TargetFolderNameDateSyntax
Controls the date folder format. Valid values: `Year + Month + Day`,
`Year + Month`, `Year`.

.EXAMPLE
Move all pictures and videos to the corresponsing Android Onedrive App Image backup folders
    Move-FilesToDateFolder -TargetFolder "~\onedrive\Pictures\Camera Roll" `
                           -SourceFolder ~\Pictures\*, ~\onedrive\*, ~\desktop\* `
                           -FollowSymlinkAndJunctions `
                           -DeleteEmptyDirs `
                           -Category 'Pictures', 'Videos' `
                           -Confirm:$false

.EXAMPLE
Move all jpg files from the current directory into date folders under
`D:\Archive` (dry run):

    Move-FilesToDateFolder -TargetFolder 'D:\Archive' -Name '*.jpg' -WhatIf

.EXAMPLE
Move all files across drives matching `*.mp4` into monthly folders and delete
empty source folders:

    Move-FilesToDateFolder -TargetFolder 'E:\Media\Videos' -Name '.\*.mp4' -DeleteEmptyDirs

#>
function Move-FilesToDateFolder {

    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param(

        [Parameter(Position = 0, Mandatory = $true, HelpMessage = 'Target root folder where matched files will be moved into date-based subfolders')]
        [ValidateNotNullOrEmpty()]
        [string] $TargetFolder,
        [Parameter(Position = 1, Mandatory = $false, HelpMessage = 'File name or pattern to search for. Default is ''*''')]
        [SupportsWildcards()]
        [Alias("SourceFolder")]
        [ValidateNotNullOrEmpty()]
        [string[]] $Name = @('*'),
        [Parameter(Mandatory = $false, ValueFromPipeline = $true, ValueFromPipelineByPropertyName = $true, HelpMessage = 'File name or pattern to search for from pipeline input. Default is ''*''')]
        [Alias('FullName')]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [object] $Input,
        [Parameter(Position = 2, Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Regular expression pattern to search within content')]
        [Alias('mc', 'matchcontent', 'regex', 'Pattern')]
        [ValidateNotNull()]
        [SupportsWildcards()]
        [string[]] $Content = @('.*'),
        [Parameter(Position = 3, Mandatory = $false, HelpMessage = 'Base path for resolving relative paths in output')]
        [Alias('base')]
        [ValidateNotNullOrEmpty()]
        [string] $RelativeBasePath = '.\',
        [Parameter(Mandatory = $false, HelpMessage = 'Only output files belonging to selected categories')]
        [Alias('filetype')]
        [ValidateSet(
            'Pictures',
            'Videos',
            'Music',
            'Documents',
            'Spreadsheets',
            'Presentations',
            'Archives',
            'Installers',
            'Executables',
            'Databases',
            'DesignFiles',
            'Ebooks',
            'Subtitles',
            'Fonts',
            'EmailFiles',
            '3DModels',
            'GameAssets',
            'MedicalFiles',
            'FinancialFiles',
            'LegalFiles',
            'SourceCode',
            'Scripts',
            'MarkupAndData',
            'Configuration',
            'Logs',
            'TextFiles',
            'WebFiles',
            'MusicLyricsAndChords',
            'CreativeWriting',
            'Recipes',
            'ResearchFiles'
        )]
        [string[]] $Category,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum degree of parallelism for directory tasks')]
        [Alias('threads')]
        [int] $MaxDegreeOfParallelism = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: cancellation timeout in seconds')]
        [Alias('maxseconds')]
        [int] $TimeoutSeconds,
        [Parameter(Mandatory = $false, HelpMessage = 'Search across all available drives')]
        [switch] $AllDrives,
        [Parameter(Mandatory = $false, HelpMessage = 'Search for directories only')]
        [Alias('dir')]
        [switch] $Directory,
        [Parameter(Mandatory = $false, HelpMessage = 'Include both files and directories')]
        [Alias('both', 'DirectoriesAndFiles')]
        [switch] $FilesAndDirectories,
        [Parameter(Mandatory = $false, HelpMessage = 'Output matched items as objects')]
        [Alias('pt')]
        [switch] $PassThru,
        [Parameter(Mandatory = $false, HelpMessage = 'Include alternate data streams in search results')]
        [Alias('ads')]
        [switch] $IncludeAlternateFileStreams,
        [Parameter(Mandatory = $false, HelpMessage = 'Do not recurse into subdirectories')]
        [Alias('nr')]
        [switch] $NoRecurse,
        [Parameter(Mandatory = $false, HelpMessage = 'Follow symlinks and junctions during directory traversal')]
        [Alias('symlinks', 'sl')]
        [switch] $FollowSymlinkAndJunctions,
        [Parameter(Mandatory = $false, HelpMessage = 'Include optical disk drives')]
        [switch] $IncludeOpticalDiskDrives,
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: search specific drives')]
        [Alias('drives')]
        [string[]] $SearchDrives = @(),
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: search specific drives')]
        [char[]] $DriveLetter = @(),
        [Parameter(Mandatory = $false, HelpMessage = 'Optional: search specific directories')]
        [string[]] $Root = @(),
        [Parameter(Mandatory = $false, HelpMessage = 'Enforces searching only within Root directories by stripping directory components from Name inputs')]
        [Alias('limit')]
        [switch] $LimitToRoot,
        [Parameter(Mandatory = $false, HelpMessage = 'Include non-text files when searching file contents')]
        [Alias('binary')]
        [switch] $IncludeNonTextFileMatching,
        [Parameter(Mandatory = $false, HelpMessage = 'Forces unattended mode and will not generate links')]
        [Alias('nl', 'ForceUnattenedMode')]
        [switch] $NoLinks,
        [Parameter(Mandatory = $false, HelpMessage = 'Gets or sets the case-sensitivity for files and directories')]
        [Alias('casing', 'CaseSearchMaskMatching')]
        [System.IO.MatchCasing] $CaseNameMatching = [System.IO.MatchCasing]::PlatformDefault,
        [Parameter(Mandatory = $false, HelpMessage = 'When set, performs content search within alternate data streams (ADS)')]
        [Alias('sads')]
        [switch] $SearchADSContent,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum recursion depth for directory traversal. 0 means unlimited.')]
        [Alias('md', 'depth', 'maxdepth')]
        [int] $MaxRecursionDepth = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum recursion depth for continuation searching upwards the tree. 0 means disabled.')]
        [Alias('maxupward')]
        [int] $MaxSearchUpDepth = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Maximum file size in bytes to include in results. 0 means unlimited.')]
        [Alias('maxlength', 'maxsize')]
        [long] $MaxFileSize = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Minimum file size in bytes to include in results. 0 means no minimum.')]
        [Alias('minsize', 'minlength')]
        [long] $MinFileSize = 0,
        [Parameter(Mandatory = $false, HelpMessage = 'Only include files modified after this date/time (UTC)')]
        [Alias('ma', 'after')]
        [DateTime] $ModifiedAfter,
        [Parameter(Mandatory = $false, HelpMessage = 'Only include files modified before this date/time (UTC)')]
        [Alias('before', 'mb')]
        [DateTime] $ModifiedBefore,
        [Parameter(Mandatory = $false, HelpMessage = 'File attributes to skip (e.g., System, Hidden or None)')]
        [Alias('skipattr')]
        [System.IO.FileAttributes] $AttributesToSkip = [System.IO.FileAttributes]::System,
        [Parameter(Mandatory = $false, HelpMessage = 'Exclude files or directories matching these wildcard patterns')]
        [Alias('skiplike')]
        [string[]] $Exclude = @('*\.git\*'),
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Search for more than one match in each line of text')]
        [switch] $AllMatches,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Matches are case-sensitive')]
        [switch] $CaseSensitive,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Captures context lines around matches')]
        [int[]] $Context,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Culture name used for pattern matching')]
        [string] $Culture,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Specifies encoding for target files')]
        [ValidateSet('ASCII', 'ANSI', 'BigEndianUnicode', 'BigEndianUTF32', 'OEM', 'Unicode', 'UTF7', 'UTF8', 'UTF8BOM', 'UTF8NoBOM', 'UTF32', 'Default')]
        [string] $Encoding = 'UTF8NoBOM',
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Only the first match per file is returned')]
        [switch] $List,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Disables highlighting of matching strings in output')]
        [switch] $NoEmphasis,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'The NotMatch parameter finds text that does not match the pattern')]
        [switch] $NotMatch,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Output only matching strings instead of MatchInfo objects')]
        [switch] $Raw,
        [Parameter(Mandatory = $false, ParameterSetName = 'WithPattern', HelpMessage = 'Use simple string matching instead of regex')]
        [switch] $SimpleMatch,
        [Parameter(Mandatory = $false, HelpMessage = 'Delete empty source directories after moving files')]
        [switch] $DeleteEmptyDirs,
        [Parameter(Mandatory = $false, HelpMessage = 'Target folder name date syntax')]
        [ValidateSet(
            'Year + Month + Day',
            'Year + Month',
            'Year'
        )]
        [string] $TargetFolderNameDateSyntax = 'Year + Month'
    )

    begin {

        $params = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Find-Item' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local `
                -ErrorAction SilentlyContinue)

        $sourceFolders = @{}
        $uniqueNameCounters = @{}
    }

    process {

        Microsoft.PowerShell.Utility\Write-Progress -Id 11 -Activity "Moving files to date folders" -Status "Enumerating files..." -PercentComplete 0

        GenXdev\Find-Item @params -PassThru -Quiet -ProgressAction Continue | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction Continue {

            $item = $_
            $creationDate = GenXdev\Get-MediaFileCreationDate -FilePath $item.FullName

            if ($creationDate -ne [DateTime]::MinValue) {

                $dateFolderName = $creationDate.ToString('yyyy-MM-dd')
                switch ($TargetFolderNameDateSyntax) {
                    'Year + Month + Day' { $dateFolderName = $creationDate.ToString('yyyy-MM-dd') + "\" + $creationDate.ToString('MM') + "\" + $creationDate.ToString('dd') }
                    'Year + Month' { $dateFolderName = $creationDate.ToString('yyyy') + "\" + $creationDate.ToString('MM') }
                    'Year' { $dateFolderName = $creationDate.ToString('yyyy') }
                }

                $destinationPath = GenXdev\Expand-Path "$TargetFolder\$dateFolderName\$($item.Name)"

                if ($item.FullName -eq $destinationPath) {

                    return
                }

                if ([IO.File]::Exists($destinationPath)) {

                    # check file sizes
                    $existingFileSize = (Microsoft.PowerShell.Management\Get-Item -LiteralPath $destinationPath -Force).Length
                    $currentFileSize = $item.Length

                    if ($existingFileSize -ne $currentFileSize) {

                        $uniqueNo = 1;
                        if (-not $uniqueNameCounters.ContainsKey($destinationPath)) {

                            $uniqueNameCounters[$destinationPath] = $uniqueNo
                        }
                        else {

                            $uniqueNo = $uniqueNameCounters[$destinationPath] + 1;
                            $uniqueNameCounters[$destinationPath] = $uniqueNo;
                        }

                        $baseName = [IO.Path]::GetFileNameWithoutExtension($item.Name)
                        $extension = [IO.Path]::GetExtension($item.Name)
                        $newFileName = "$baseName ($($uniqueNo))$extension"
                        $destinationPath = GenXdev\Expand-Path "$TargetFolder\$dateFolderName\$newFileName" -CreateDirectory
                    }
                    else {

                        if ($PSCmdlet.ShouldProcess($item.FullName, "Delete already existing file: $($item.FullName)")) {

                            try {

                                Microsoft.PowerShell.Utility\Write-Verbose "Deleting already existing file: $($item.FullName)"
                                Microsoft.PowerShell.Management\Remove-Item -LiteralPath $item.FullName -Force -ErrorAction Stop
                                if ($DeleteEmptyDirs) {

                                    $sourceFolders[$item.DirectoryName] = $true
                                }
                            }
                            catch {

                                Microsoft.PowerShell.Utility\Write-Warning "Failed to delete already existing file: $($item.FullName)"
                            }
                        }

                        return
                    }
                }

                if ($PSCmdlet.ShouldProcess($item.FullName, "Move to $destinationPath")) {
                    try {
                        $destinationPath = GenXdev\Expand-Path $destinationPath -CreateDirectory

                        Microsoft.PowerShell.Utility\Write-Verbose "Moving '$($item.FullName)' to '$destinationPath'"
                        Microsoft.PowerShell.Management\Move-Item -LiteralPath $item.FullName -Destination $destinationPath -Force -ErrorAction Stop

                        if ($DeleteEmptyDirs) {
                            $sourceFolders[$item.DirectoryName] = $true
                        }
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Warning "Move failed for '$($item.FullName)' -> '$destinationPath': $_"

                        # Fallback: try to copy the file and then remove the original
                        try {
                            if ($PSCmdlet.ShouldProcess($item.FullName, "Copy to $destinationPath")) {

                                Microsoft.PowerShell.Utility\Write-Verbose "Copying '$($item.FullName)' to '$destinationPath'"
                                Microsoft.PowerShell.Management\Copy-Item -LiteralPath $item.FullName -Destination $destinationPath -Force -ErrorAction Stop

                                try {
                                    Microsoft.PowerShell.Management\Remove-Item -LiteralPath $item.FullName -Force -ErrorAction Stop
                                    if ($DeleteEmptyDirs) {
                                        $sourceFolders[$item.DirectoryName] = $true
                                    }
                                }
                                catch {
                                    Microsoft.PowerShell.Utility\Write-Warning "Copied but failed to remove original '$($item.FullName)': $_"
                                }
                            }
                            else {
                                Microsoft.PowerShell.Utility\Write-Information "WhatIf: would copy '$($item.FullName)' to '$destinationPath'"
                            }
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Warning "Failed to copy '$($item.FullName)' to '$destinationPath': $_"
                        }
                    }
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Information "WhatIf: would move '$($item.FullName)' to '$destinationPath'"
                }
            }

        }
    }

    end {
        if ($DeleteEmptyDirs) {

            # Normalize root paths if LimitToRoot is set so we don't delete above them
            $normalizedRoots = @()
            if ($LimitToRoot -and $Root -and $Root.Count -gt 0) {
                foreach ($r in $Root) {
                    try {
                        $rp = Microsoft.PowerShell.Management\Resolve-Path -LiteralPath $r -ErrorAction SilentlyContinue
                        if ($rp) { $normalizedRoots += $rp.Path }
                    }
                    catch { }
                }
            }

            $sourceFolders.Keys | Microsoft.PowerShell.Core\ForEach-Object {
                $dirToCheck = $_
                while ($dirToCheck) {
                    if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $dirToCheck -PathType Container)) { break }

                    $children = Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath $dirToCheck -Force -ErrorAction SilentlyContinue
                    if ($children -and $children.Count -gt 0) { break }

                    # If LimitToRoot is used, do not delete above any configured root paths
                    if ($normalizedRoots.Count -gt 0) {
                        $underAnyRoot = $false
                        foreach ($rootPath in $normalizedRoots) {
                            if ($dirToCheck.StartsWith($rootPath, [System.StringComparison]::InvariantCultureIgnoreCase)) { $underAnyRoot = $true; break }
                        }
                        if (-not $underAnyRoot) { break }
                    }

                    if ($PSCmdlet.ShouldProcess($dirToCheck, 'Remove directory')) {
                        try {
                            Microsoft.PowerShell.Management\Remove-Item -LiteralPath $dirToCheck -Force -ErrorAction Stop
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Verbose "Failed to remove directory '$dirToCheck': $_"
                            break
                        }
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Information "WhatIf: would remove directory '$dirToCheck'"
                        break
                    }

                    $parent = Microsoft.PowerShell.Management\Split-Path -Parent $dirToCheck
                    if ([string]::IsNullOrWhiteSpace($parent)) { break }

                    # Stop if we've reached the drive root
                    $root = [System.IO.Path]::GetPathRoot($parent)
                    if ($parent -eq $root) { break }

                    $dirToCheck = $parent
                }
            }
        }

        Microsoft.PowerShell.Utility\Write-Progress -Id 12 -Activity "Moving files to date folders" -Status "Completed" -PercentComplete 100 -complete
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : ReadJsonWithRetry.ps1
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
Reads JSON file with retry logic and automatic lock cleanup.

.DESCRIPTION
Attempts to read a JSON file with retry logic to handle concurrent access.
Implements automatic cleanup of stale lock files. Returns empty hashtable if
file doesn't exist.

.PARAMETER FilePath
The path to the JSON file to read.

.PARAMETER AsHashtable
Return the parsed JSON as a hashtable instead of PSCustomObject. Defaults to true.

.PARAMETER MaxRetries
Maximum number of retry attempts. Defaults to 10.

.PARAMETER RetryDelayMs
Delay in milliseconds between retries. Defaults to 200.
#>
function ReadJsonWithRetry {
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $true)]
        [string]$FilePath,

        [Parameter(Mandatory = $false)]
        [int]$MaxRetries = 10,

        [Parameter(Mandatory = $false)]
        [int]$RetryDelayMs = 200,

        [Parameter(Mandatory = $false)]
        [switch]$AsHashtable
    )

    # return empty hashtable if file doesn't exist
    if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $FilePath)) {
        if ($AsHashtable) {
            return @{}
        }
        else {
            return
        }
    }

    # construct lock file path
    $lockFile = "${FilePath}.lock"

    # attempt to read with retries
    for ($attempt = 0; $attempt -lt $MaxRetries; $attempt++) {
        try {
            # clean up stale lock files older than 30 seconds
            if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $lockFile) {
                $lockInfo = [System.IO.FileInfo]::new($lockFile)
                $ageSeconds = ([DateTime]::Now - $lockInfo.LastWriteTime).TotalSeconds

                if ($ageSeconds -gt 30) {
                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "Removing stale lock file: $lockFile (age: ${ageSeconds}s)"
                    Microsoft.PowerShell.Management\Remove-Item `
                        -LiteralPath $lockFile `
                        -Force `
                        -ErrorAction SilentlyContinue
                }
            }

            # read and parse json file
            $content = Microsoft.PowerShell.Management\Get-Content `
                -LiteralPath $FilePath `
                -Raw `
                -ErrorAction Stop

            if ([string]::IsNullOrWhiteSpace($content)) {
                if ($AsHashtable) {
                    return @{}
                }
                else {
                    return
                }
            }

            if ($AsHashtable) {
                $data = $content | Microsoft.PowerShell.Utility\ConvertFrom-Json `
                    -AsHashtable `
                    -ErrorAction Stop
            }
            else {
                $data = $content | Microsoft.PowerShell.Utility\ConvertFrom-Json `
                    -ErrorAction Stop
            }

            return $data
        }
        catch {
            # log retry attempt
            Microsoft.PowerShell.Utility\Write-Verbose `
                "Read attempt $($attempt + 1) failed: $($_.Exception.Message)"

            # wait before retry unless this is the last attempt
            if ($attempt -lt ($MaxRetries - 1)) {
                Microsoft.PowerShell.Utility\Start-Sleep `
                    -Milliseconds $RetryDelayMs
            }
            else {
                # final attempt failed, throw error
                throw "Failed to read JSON file after ${MaxRetries} attempts: $_"
            }
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Remove-AllItems.ps1
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

# don't remove this line [dontrefactor]

<#
.SYNOPSIS
Recursively removes all content from a directory with advanced error handling.

.DESCRIPTION
Safely removes all files and subdirectories within a specified directory using
a reverse-order deletion strategy to handle deep paths. Includes WhatIf support,
verbose logging, and fallback deletion methods for locked files.

.PARAMETER Path
The directory path to clear. Can be relative or absolute path. Will be normalized
and expanded before processing.

.PARAMETER DeleteFolder
When specified, also removes the root directory specified by Path after clearing
its contents.

.PARAMETER WhatIf
Shows what would happen if the cmdlet runs. The cmdlet is not run.

.EXAMPLE
Remove-AllItems -Path "C:\Temp\BuildOutput" -DeleteFolder -Verbose

.EXAMPLE
sdel ".\temp" -DeleteFolder
#>
function Remove-AllItems {

    [CmdletBinding(SupportsShouldProcess)]
    [Alias('sdel')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The directory path to clear'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        [string] $Path,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Also delete the root folder supplied with the Path parameter'
        )]
        [switch] $DeleteFolder
    )

    begin {

        # preserve original preference settings for restoration in end block
        $originalVerbosePreference = $VerbosePreference
        $originalWhatIfPreference = $WhatIfPreference

        try {
            # convert relative or shorthand paths to full filesystem paths
            $Path = GenXdev\Expand-Path "$Path\"
            Microsoft.PowerShell.Utility\Write-Verbose "Normalized path: $Path"

            # ensure verbose output is enabled during WhatIf operations
            if ($WhatIfPreference -or $WhatIf) {
                $VerbosePreference = 'Continue'
            }
        }
        catch {
            # restore original whatif setting before propagating error
            $WhatIfPreference = $originalWhatIfPreference
            throw
        }
    }


    process {
        try {
            # skip processing if target directory doesn't exist
            if (![System.IO.Directory]::Exists($Path)) {
                Microsoft.PowerShell.Utility\Write-Verbose "Directory does not exist: $Path"
                return
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Processing directory: $Path"

            # delete files first, in reverse order to handle nested paths
            [System.IO.Directory]::GetFiles($Path, '*.*', `
                    [System.IO.SearchOption]::AllDirectories) |
                Microsoft.PowerShell.Utility\Sort-Object -Descending |
                Microsoft.PowerShell.Core\ForEach-Object {
                    $filePath = $_
                    if ($PSCmdlet.ShouldProcess($filePath, 'Remove file')) {
                        $null = GenXdev\Remove-ItemWithFallback -Path $filePath
                    }
                }

            # delete directories after files, also in reverse order
            [System.IO.Directory]::GetDirectories($Path, '*', `
                    [System.IO.SearchOption]::AllDirectories) |
                Microsoft.PowerShell.Utility\Sort-Object -Descending |
                Microsoft.PowerShell.Core\ForEach-Object {
                    $dirPath = $_
                    if ($PSCmdlet.ShouldProcess($dirPath, 'Remove directory')) {
                        try {
                            [System.IO.Directory]::Delete($dirPath, $true)
                            Microsoft.PowerShell.Utility\Write-Verbose "Removed directory: $dirPath"
                        }
                        catch {
                            # Microsoft.PowerShell.Utility\Write-Warning "Failed to delete directory: $dirPath"
                        }
                    }
                }

            # optionally remove the root directory itself
            if ($DeleteFolder) {
                if ($PSCmdlet.ShouldProcess($Path, 'Remove root directory')) {
                    try {
                        [System.IO.Directory]::Delete($Path, $true)
                        Microsoft.PowerShell.Utility\Write-Verbose "Removed root directory: $Path"
                    }
                    catch {
                        try {
                            $null = GenXdev\Remove-ItemWithFallback -Path $Path
                        }
                        catch {}
                    }
                }
            }
        }
        catch {
            # restore original whatif setting before propagating error
            $WhatIfPreference = $originalWhatIfPreference
            throw
        }
    }

    end {
        # restore original preference settings
        $WhatIfPreference = $originalWhatIfPreference
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Remove-ItemWithFallback.ps1
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

# don't remove this line [dontrefactor]

<#
.SYNOPSIS
Removes files or directories with multiple fallback mechanisms for reliable deletion.

.DESCRIPTION
This function provides a robust way to delete files and directories by attempting
multiple deletion methods in sequence:
1. Direct deletion via System.IO methods for best performance
2. PowerShell provider-aware Remove-Item cmdlet as fallback
3. Mark for deletion on next system reboot if other methods fail
This ensures maximum reliability when removing items across different providers.

.PARAMETER Path
The file or directory path to remove. Can be a filesystem path or provider path.
Accepts pipeline input and wildcards. Must be a valid, non-empty path.

.PARAMETER CountRebootDeletionAsSuccess
If specified, the function returns $true when a file is successfully marked for deletion on reboot.
By default ($false), the function returns $false in this scenario.

.EXAMPLE
Remove-ItemWithFallback -Path "C:\temp\myfile.txt"
Attempts to remove the file using all available methods.

.EXAMPLE
"C:\temp\mydir" | rif
Uses the alias 'rif' to remove a directory through the pipeline.
#>
function Remove-ItemWithFallback {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [OutputType([bool])]
    [Alias('rmf')]

    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'The path to the item to remove'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        [string]$Path,
        [Parameter(
            Mandatory = $false
        )]
        [switch]$CountRebootDeletionAsSuccess = $false
    )

    begin {

        # convert relative or provider paths to full filesystem paths
        $Path = GenXdev\Expand-Path $Path
    }

    process {
        try {
            # verify item exists and get its provider information
            $item = Microsoft.PowerShell.Management\Get-Item -LiteralPath $Path `
                -ErrorAction Stop

            # handle filesystem items with direct IO methods for best performance
            if ($item.PSProvider.Name -eq 'FileSystem') {

                if ($PSCmdlet.ShouldProcess($Path, 'Remove item')) {

                    # try fastest method first - direct file deletion
                    if ([System.IO.File]::Exists($Path)) {
                        try {
                            [System.IO.File]::Delete($Path)
                            Microsoft.PowerShell.Utility\Write-Verbose "Successfully removed file using IO: $Path"
                            return $true
                        }
                        catch {
                            # If ErrorAction Stop was specified, immediately rethrow
                            if (($PSBoundParameters.ContainsKey('ErrorAction') -and $PSBoundParameters['ErrorAction'] -eq 'Stop') -or
                                $ErrorActionPreference -eq 'Stop') {
                                throw
                            }
                            # Otherwise, fall through to next deletion method
                            Microsoft.PowerShell.Utility\Write-Verbose "Direct file deletion failed: $_"
                            # Don't rethrow here - let the code flow to the next deletion method
                        }
                    }

                    # handle directory deletion with recursive option
                    if ([System.IO.Directory]::Exists($Path)) {
                        try {
                            [System.IO.Directory]::Delete($Path, $true)
                            Microsoft.PowerShell.Utility\Write-Verbose "Successfully removed directory using IO: $Path"
                            return $true
                        }
                        catch {
                            # If ErrorAction Stop was specified, immediately rethrow
                            if (($PSBoundParameters.ContainsKey('ErrorAction') -and $PSBoundParameters['ErrorAction'] -eq 'Stop') -or
                                $ErrorActionPreference -eq 'Stop') {
                                throw
                            }
                            # Otherwise, fall through to next deletion method
                            Microsoft.PowerShell.Utility\Write-Verbose "Direct directory deletion failed: $_"
                            # Don't rethrow here - let the code flow to the next deletion method
                        }
                    }
                }
            }
            else {
                # non-filesystem items need provider-specific handling
                if ($PSCmdlet.ShouldProcess($Path, 'Remove via provider')) {
                    Microsoft.PowerShell.Management\Remove-Item -LiteralPath $Path `
                        -Force
                    Microsoft.PowerShell.Utility\Write-Verbose "Removed item via provider: $Path"
                    return $true
                }
            }
        }
        catch {
            Microsoft.PowerShell.Utility\Write-Verbose 'Standard deletion failed, attempting boot-time removal...'

            # Check if ErrorAction Stop was specified via parameter or preference variable
            if (($PSBoundParameters.ContainsKey('ErrorAction') -and $PSBoundParameters['ErrorAction'] -eq 'Stop') -or
                $ErrorActionPreference -eq 'Stop') {
                # Rethrow the original exception immediately without trying fallback methods
                throw
            }

            # Only try boot-time deletion for filesystem items and verify path exists first
            if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $Path -ErrorAction SilentlyContinue) {
                $providerInfo = (Microsoft.PowerShell.Management\Get-Item -LiteralPath $Path -ErrorAction SilentlyContinue).PSProvider

                if ($null -ne $providerInfo -and $providerInfo.Name -eq 'FileSystem') {
                    # last resort - mark for deletion on next boot
                    if (GenXdev\Remove-OnReboot $Path) {
                        Microsoft.PowerShell.Utility\Write-Verbose "Marked for deletion on next reboot: $Path"
                        return [bool]$CountRebootDeletionAsSuccess
                    }
                }
            }

            Microsoft.PowerShell.Utility\Write-Warning "All deletion methods failed for: $Path"
            Microsoft.PowerShell.Utility\Write-Error $_.Exception.Message
            return $false
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Rename-InProject.ps1
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
Performs text replacement throughout a project directory.

.DESCRIPTION
Recursively searches through files and directories in a project to perform text
replacements. Handles both file/directory names and file contents. Skips common
binary files and repository folders (.git, .svn) to avoid corruption. Uses UTF-8
encoding without BOM for file operations. Supports both case-sensitive and
case-insensitive replacement modes.

.PARAMETER Source
The directory, filepath, or directory+searchmask to process. Defaults to current
directory if not specified.

.PARAMETER FindText
The text pattern to search for in filenames and content. Case sensitivity is
controlled by the CaseInsensitive parameter.

.PARAMETER ReplacementText
The text to replace all instances of FindText with.

.PARAMETER CaseInsensitive
Perform case-insensitive text replacement. When specified, matching is done
without regard to case.

.PARAMETER WhatIf
Shows what changes would occur without actually making them.

.EXAMPLE
Rename-InProject -Source .\src\*.js -FindText "oldName" `
    -ReplacementText "newName"

.EXAMPLE
rip . "MyClass" "MyNewClass" -WhatIf

.EXAMPLE
rip . "OLDNAME" "NewName" -CaseInsensitive
#>
function Rename-InProject {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('rip')]
    param(
        [Parameter(
            Mandatory = $false,
            Position = 0,
            ValueFromPipeline = $false,
            HelpMessage = 'The directory, filepath, or directory+searchmask'
        )]
        [Alias('src', 's')]
        [PSDefaultValue(Value = '.\')]
        [string] $Source,
        [Parameter(
            Mandatory = $true,
            Position = 1,
            ValueFromPipeline = $false,
            HelpMessage = 'The text to find (case sensitivity controlled by CaseInsensitive parameter)'
        )]
        [Alias('find', 'what', 'from')]
        [ValidateNotNullOrEmpty()]
        [string] $FindText,
        [Parameter(
            Mandatory = $true,
            Position = 2,
            ValueFromPipeline = $false,
            HelpMessage = 'The text to replace matches with'
        )]
        [Alias('into', 'txt', 'to')]
        [ValidateNotNull()]
        [string] $ReplacementText,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Perform case-insensitive text replacement'
        )]
        [switch] $CaseInsensitive
    )

    begin {

        try {
            # normalize path and extract search pattern if specified
            $sourcePath = GenXdev\Expand-Path $Source
            $searchPattern = '*'

            # split source into path and pattern if not a directory
            if (![System.IO.Directory]::Exists($sourcePath)) {

                $searchPattern = [System.IO.Path]::GetFileName($sourcePath)
                $sourcePath = [System.IO.Path]::GetDirectoryName($sourcePath)

                if (![System.IO.Directory]::Exists($sourcePath)) {
                    throw "Source directory not found: $sourcePath"
                }
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Processing source path: $sourcePath"
            Microsoft.PowerShell.Utility\Write-Verbose "Using search pattern: $searchPattern"

            # extensions to skip to avoid corrupting binary files
            $skipExtensions = @(
                '.jpg', '.jpeg', '.gif', '.bmp', '.png', '.tiff',
                '.exe', '.dll', '.pdb', '.so',
                '.wav', '.mp3', '.avi', '.mkv', '.wmv',
                '.tar', '.7z', '.zip', '.rar', '.apk', '.ipa',
                '.cer', '.crt', '.pkf', '.db', '.bin'
            )
        }
        catch {
            throw
        }
    }


    process {

        try {
            # recursive function to get all project files excluding repos
            function Get-ProjectFiles {

                [CmdletBinding()]
                [OutputType([System.Collections.Generic.List[string]])]
                [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute(
                    'PSUseSingularNouns',
                    'Get-ProjectFiles'
                )]
                param(
                    [string] $Dir,
                    [string] $Mask
                )

                $result = [System.Collections.Generic.List[string]]::new()

                # skip version control directories
                if ([IO.Path]::GetFileName($Dir) -in @('.svn', '.git')) {
                    return $result
                }

                # collect matching files in current directory
                [IO.Directory]::GetFiles($Dir, $Mask) | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction Continue {
                    $null = $result.Add($_)
                }

                # recursively process subdirectories
                [IO.Directory]::GetDirectories($Dir, '*') | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction Continue {
                    if ([IO.Path]::GetFileName($_) -notin @('.svn', '.git')) {
                        $null = Get-ProjectFiles $_ $Mask | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction Continue {
                            $null = $result.Add($_)
                        }
                    }
                }

                return $result
            }

            # process files in reverse order to handle renames safely
            Get-ProjectFiles -dir $sourcePath -mask $searchPattern |
                Microsoft.PowerShell.Utility\Sort-Object -Descending |
                Microsoft.PowerShell.Core\ForEach-Object -ErrorAction Continue {

                    $filePath = $_
                    $extension = [IO.Path]::GetExtension($filePath).ToLower()

                    # only process text files
                    if ($extension -notin $skipExtensions) {

                        try {
                            Microsoft.PowerShell.Utility\Write-Verbose "Processing file: $filePath"

                            # replace text in file contents
                            $content = [IO.File]::ReadAllText($filePath,
                                [Text.Encoding]::UTF8)

                            if ($CaseInsensitive) {
                                $newContent = $content.Replace($FindText, $ReplacementText,
                                    [StringComparison]::OrdinalIgnoreCase)
                            }
                            else {
                                $newContent = $content.Replace($FindText, $ReplacementText)
                            }

                            if ($content -ne $newContent) {
                                if ($PSCmdlet.ShouldProcess($filePath,
                                        'Replace content')) {

                                    $utf8 = [Text.UTF8Encoding]::new($false)
                                    [IO.File]::WriteAllText($filePath, $newContent,
                                        $utf8)

                                    Microsoft.PowerShell.Utility\Write-Verbose "Updated content in: $filePath"
                                }
                            }
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Warning "Failed to update content in: $filePath`n$_"
                        }

                        # handle filename changes
                        $oldName = [IO.Path]::GetFileName($filePath)
                        if ($CaseInsensitive) {
                            $newName = $oldName.Replace($FindText, $ReplacementText,
                                [StringComparison]::OrdinalIgnoreCase)
                        }
                        else {
                            $newName = $oldName.Replace($FindText, $ReplacementText)
                        }

                        if ($oldName -ne $newName) {
                            $newPath = [IO.Path]::Combine(
                                [IO.Path]::GetDirectoryName($filePath),
                                $newName)

                            if ($PSCmdlet.ShouldProcess($filePath, 'Rename file')) {
                                try {

                                    if ("$filePath".ToLowerInvariant() -eq "$newPath".ToLowerInvariant()) {

                                        $newPath = "$newPath.$([DateTime]::Now.Ticks).tmp"
                                        $null = GenXdev\Move-ItemWithTracking -Path $filePath `
                                            -Destination "$newPath.tmp12389"
                                        Microsoft.PowerShell.Utility\Write-Verbose "Renamed file: $filePath -> $newPath"
                                        $filePath = $newPath
                                    }

                                    $null = GenXdev\Move-ItemWithTracking -Path $filePath `
                                        -Destination $newPath
                                    Microsoft.PowerShell.Utility\Write-Verbose "Renamed file: $filePath -> $newPath"
                                }
                                catch {
                                    Microsoft.PowerShell.Utility\Write-Warning "Failed to rename file: $filePath`n$_"
                                }
                            }
                        }
                    }
                }

            # process directories in reverse order
            Microsoft.PowerShell.Management\Get-ChildItem -LiteralPath  $sourcePath -Directory -Recurse |
                Microsoft.PowerShell.Utility\Sort-Object -Descending |
                Microsoft.PowerShell.Core\Where-Object {
                    $_.FullName -notlike '*\.git\*' -and
                    $_.FullName -notlike '*\.svn\*'
                } |
                Microsoft.PowerShell.Core\ForEach-Object -ErrorAction Continue {

                    $dir = $_
                    $oldName = $dir.Name
                    if ($CaseInsensitive) {
                        $newName = $oldName.Replace($FindText, $ReplacementText,
                            [StringComparison]::OrdinalIgnoreCase)
                    }
                    else {
                        $newName = $oldName.Replace($FindText, $ReplacementText)
                    }

                    if ($oldName -ne $newName) {
                        $newPath = GenXdev\Expand-Path (
                            [IO.Path]::Combine($dir.Parent.FullName, $newName))

                        if ($PSCmdlet.ShouldProcess($dir.FullName,
                                'Rename directory')) {

                            if ([IO.Directory]::Exists($newPath)) {
                                # merge directories if target exists
                                GenXdev\Start-RoboCopy -Source $dir.FullName `
                                    -DestinationDirectory $newPath -Move
                                $null = GenXdev\Remove-AllItems ($dir.FullName) -DeleteFolder
                                Microsoft.PowerShell.Utility\Write-Verbose "Merged directory: $($dir.FullName) -> $newPath"
                            }
                            else {
                                try {
                                    $null = GenXdev\Move-ItemWithTracking -Path $dir.FullName `
                                        -Destination $newPath
                                    Microsoft.PowerShell.Utility\Write-Verbose "Renamed directory: $($dir.FullName) -> $newPath"
                                }
                                catch {
                                    Microsoft.PowerShell.Utility\Write-Warning "Failed to rename directory: $($dir.FullName)`n$_"
                                }
                            }
                        }
                    }
                }
        }
        catch {
            throw
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Set-FoundLocation.ps1
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
Finds the first matching file or folder and sets the location to it.

.DESCRIPTION
This cmdlet will help you change directories quickly by using search phrases
that will find the first matching folder or file (optional) and changes
directory to it. Supports advanced filtering by content, file attributes,
size, modification dates, and many other criteria.

.PARAMETER Name
File name or pattern to search for. Supports wildcards.

.PARAMETER InputObject
File name or pattern to search for from pipeline input.

.PARAMETER Content
Regular expression pattern to search within file contents.

.PARAMETER Category
Only output files belonging to selected categories (Pictures, Videos, Music,
Documents, etc.).

.PARAMETER MaxDegreeOfParallelism
Maximum degree of parallelism for directory tasks.

.PARAMETER TimeoutSeconds
Optional cancellation timeout in seconds.

.PARAMETER AllDrives
Search across all available drives.

.PARAMETER File
Search for filenames only and change to folder of first found file.

.PARAMETER DirectoriesAndFiles
Include filename matching and change to folder of first found file.

.PARAMETER IncludeAlternateFileStreams
Include alternate data streams in search results.

.PARAMETER NoRecurse
Do not recurse into subdirectories.

.PARAMETER FollowSymlinkAndJunctions
Follow symlinks and junctions during directory traversal.

.PARAMETER IncludeOpticalDiskDrives
Include optical disk drives.

.PARAMETER SearchDrives
Optional: search specific drives.

.PARAMETER DriveLetter
Optional: search specific drives by letter.

.PARAMETER Root
Optional: search specific base folders combined with provided Names.

.PARAMETER IncludeNonTextFileMatching
Include non-text files (binaries, images, etc.) when searching file contents.

.PARAMETER CaseNameMatching
Gets or sets the case-sensitivity for files and directories.

.PARAMETER SearchADSContent
When set, performs content search within alternate data streams (ADS).

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

.PARAMETER CaseSensitive
Indicates that the cmdlet matches are case-sensitive.

.PARAMETER Culture
Specifies a culture name to match the specified pattern.

.PARAMETER Encoding
Specifies the type of encoding for the target file.

.PARAMETER NotMatch
The NotMatch parameter finds text that doesn't match the specified pattern.

.PARAMETER SimpleMatch
Indicates that the cmdlet uses a simple match rather than a regular expression.

.PARAMETER Push
Use Push-Location instead of Set-Location and push the location onto the location stack.

.PARAMETER ExactMatch
When set, only exact name matches are considered.

.EXAMPLE
Set-FoundLocation *.Console

Changes to the first directory matching the pattern '*.Console'.

.EXAMPLE
lcd *.Console

Changes to the first directory matching the pattern '*.Console' using the alias.

.EXAMPLE
Set-FoundLocation -Name "*.ps1" -Content "function"

Changes to the directory containing the first PowerShell file that contains
the word 'function'.

.EXAMPLE
Set-FoundLocation *test* -File

Changes to the directory containing the first file with 'test' in its name.

.EXAMPLE
Set-FoundLocation * '1\.\d+\.2025'

Changes to the directory containing the first file which content  matches the pattern '1.\d+\.2025'.
#>
function Set-FoundLocation {

    [CmdletBinding(SupportsShouldProcess)]
    [Alias('lcd')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute(
        'PSUseDeclaredVarsMoreThanAssignments', '')]

    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = "File name or pattern to search for."
        )]
        [Alias("like", "Path", "LiteralPath", "Query", "SearchMask", "Include")]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [ArgumentCompleter({
            param($commandName, $parameterName, $wordToComplete, $commandAst, $providedBoundParameters)

            $CurrentLocation = (Microsoft.PowerShell.Management\Get-Location).Path;

            function completeFoundName($foundName, $truncate) {

                $result = $foundName;

                # calculate relative path from search base for cleaner display
                $result = [IO.Path]::GetRelativePath($CurrentLocation, $foundName);

                # ensure relative path appears relative by prefixing with .\
                if (-not [IO.Path]::IsPathRooted($result))
                {
                    # prepend .\ to make it explicitly relative
                    $result = ".\" + $result;
                }

                $result = "'$($result.Replace("'", "''"))'"

                if ($truncate) {

                    if ($result.Length -ge [Console]::BufferWidth-1) {

                        $max = [Math]::Max([Console]::BufferWidth -3, 20);

                        # use /../ in the center
                        $firstPart = [Math]::Floor(($max - 4) / 2);
                        $lastPart = $max - 4 - $firstPart;
                        $result = $result.Substring(0, $firstPart) + '/.../' +
                            $result.Substring($result.Length - $lastPart, $lastPart);
                    }
                }

                $result;
            }

            try {
                # Derive search params from function defaults or bound params (e.g., respect -Root if provided)
                $findParams = GenXdev\Copy-IdenticalParamValues `
                    -FunctionName 'GenXdev\Find-Item' `
                    -BoundParameters $providedBoundParameters;

                $findParams.PassThru = $true
                $findParams.Quiet = $true
                $findParams.ProgressAction = 'SilentlyContinue'
                $findParams.Verbose = $False
                $findParams.WarningAction = 'SilentlyContinue'
                $findParams.ErrorAction = 'SilentlyContinue'
                $findParams.InformationAction = 'SilentlyContinue'
                $findParams.NoLinks = $true
                $findParams.MaxSearchUpDepth = 100
                $findParams.TimeoutSeconds = 5;
                $wtc = $wordToComplete.Trim("'`"".ToCharArray());
                $findParams.Name = $ExactMatch -or $wordToComplete.Contains("*") -or $wordToComplete.Contains("?") ?
                    $wtc : "*$($wtc)*";

                # configure search type based on user preferences
                if ($providedBoundParameters['DirectoriesAndFiles'] -eq $true) {

                    $findParams.FilesAndDirectories = $true
                }

                $NoContentSearch = (-not $Content) -or ($Content.Length -eq 1 -and $Content[0] -eq ".*");

                # search directories by default unless explicitly searching for files
                if ((-not $providedBoundParameters['File']) -and $NoContentSearch) {

                    $findParams.Directory = $true
                }

                # Find matching directories based on the current input
                $matchingDirs = GenXdev\Find-Item @findParams |
                    Microsoft.PowerShell.Core\Where-Object {

                        (($PSItem -is [System.IO.DirectoryInfo]) -and ($PSItem.FullName -ne $CurrentLocation)) -or
                        (($PSItem -is [System.IO.FileInfo]) -and ($PSItem.DirectoryName -ne $CurrentLocation))

                    } |
                    Microsoft.PowerShell.Utility\Select-Object -First 25 | Microsoft.PowerShell.Utility\Sort-Object -Unique -Property FullName

                foreach ($dir in $matchingDirs) {

                    # determine target directory based on result type
                    if ($dir -is [System.IO.DirectoryInfo]) {

                        $completionText = (completeFoundName $dir.FullName)
                        $listText = (completeFoundName $dir.FullName $true)
                        $toolTip = "(Last modified: $($dir.LastWriteTimeUtc))"
                        [System.Management.Automation.CompletionResult]::new($completionText, $listText, 'ParameterValue', $toolTip)
                    }
                    elseif ($dir -is [System.IO.FileInfo]) {

                        $completionText = (completeFoundName $dir.DirectoryName)
                        $listText = (completeFoundName $dir.DirectoryName $true)
                        $toolTip = "(Last modified: $($dir.LastWriteTimeUtc))"
                        [System.Management.Automation.CompletionResult]::new($completionText, $listText, 'ParameterValue', $toolTip)
                    }
                }
            } catch {
                # suppress any errors during tab completion
                Microsoft.PowerShell.Utility\Write-Warning ($_.Exception.Message)
            }
        })]
        [string] $Name,
        [Parameter(
            ParameterSetName = 'InputObject',
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = (
                "File name or pattern to search for from pipeline input. " +
                "Default is '*'")
        )]
        [Alias('FullName')]
        [SupportsWildcards()]
        [object] $InputObject,
        [Parameter(
            Position = 1,
            Mandatory = $false,
            ParameterSetName = "WithPattern",
            HelpMessage = (
                "Regular expression pattern to search within file contents")
        )]
        [Alias("mc", "matchcontent", "regex", "Pattern")]
        [ValidateNotNull()]
        [SupportsWildcards()]
        [string[]] $Content = @(".*"),
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Only output files belonging to selected categories")
        )]
        [Alias("filetype")]
        [ValidateSet(
            "Pictures",
            "Videos",
            "Music",
            "Documents",
            "Spreadsheets",
            "Presentations",
            "Archives",
            "Installers",
            "Executables",
            "Databases",
            "DesignFiles",
            "Ebooks",
            "Subtitles",
            "Fonts",
            "EmailFiles",
            "3DModels",
            "GameAssets",
            "MedicalFiles",
            "FinancialFiles",
            "LegalFiles",
            "SourceCode",
            "Scripts",
            "MarkupAndData",
            "Configuration",
            "Logs",
            "TextFiles",
            "WebFiles",
            "MusicLyricsAndChords",
            "CreativeWriting",
            "Recipes",
            "ResearchFiles"
        )]
        [string[]] $Category,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Maximum degree of parallelism for directory tasks")
        )]
        [Alias("threads")]
        [int] $MaxDegreeOfParallelism = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Optional: cancellation timeout in seconds"
        )]
        [Alias("maxseconds")]
        [int] $TimeoutSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Search across all available drives"
        )]
        [switch] $AllDrives,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Search for filenames only and change to folder of first " +
                "found file")
        )]
        [Alias("filename")]
        [switch] $File,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Include filename matching and change to folder of first " +
                "found file")
        )]
        [Alias("both", "FilesAndDirectories")]
        [switch] $DirectoriesAndFiles,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Include alternate data streams in search results")
        )]
        [Alias("ads")]
        [switch] $IncludeAlternateFileStreams,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Do not recurse into subdirectories"
        )]
        [Alias("nr")]
        [switch] $NoRecurse,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Follow symlinks and junctions during directory traversal")
        )]
        [Alias("symlinks", "sl")]
        [switch] $FollowSymlinkAndJunctions,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include optical disk drives"
        )]
        [switch] $IncludeOpticalDiskDrives,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Optional: search specific drives"
        )]
        [Alias("drives")]
        [string[]] $SearchDrives = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Optional: search specific drives"
        )]
        [char[]] $DriveLetter = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Optional: search specific base folders combined with " +
                "provided Names")
        )]
        [string[]] $Root = @(),
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Include non-text files (binaries, images, etc.) when " +
                "searching file contents")
        )]
        [Alias("binary")]
        [switch] $IncludeNonTextFileMatching,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Gets or sets the case-sensitivity for files and directories")
        )]
        [Alias("casing", "CaseSearchMaskMatching")]
        [System.IO.MatchCasing] $CaseNameMatching = (
            [System.IO.MatchCasing]::PlatformDefault),
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "When set, performs content search within alternate data " +
                "streams (ADS). When not set, outputs ADS file info without " +
                "searching their content.")
        )]
        [Alias("sads")]
        [switch] $SearchADSContent,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Maximum recursion depth for directory traversal. 0 means " +
                "unlimited.")
        )]
        [Alias("md", "depth", "maxdepth")]
        [int] $MaxRecursionDepth = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Maximum file size in bytes to include in results. 0 means " +
                "unlimited.")
        )]
        [Alias("maxlength", "maxsize")]
        [long] $MaxFileSize = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Minimum file size in bytes to include in results. 0 means " +
                "no minimum.")
        )]
        [Alias("minsize", "minlength")]
        [long] $MinFileSize = 0,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Only include files modified after this date/time (UTC).")
        )]
        [Alias("ma", "after")]
        [DateTime] $ModifiedAfter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Only include files modified before this date/time (UTC).")
        )]
        [Alias("before", "mb")]
        [DateTime] $ModifiedBefore,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "File attributes to skip (e.g., System, Hidden or None).")
        )]
        [Alias("skipattr")]
        [System.IO.FileAttributes] $AttributesToSkip = (
            [System.IO.FileAttributes]::System),
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Exclude files or directories matching these wildcard " +
                "patterns (e.g., *.tmp, *\\bin\\*).")
        )]
        [Alias("skiplike")]
        [string[]] $Exclude = @("*\\.git\\*"),
        [Parameter(
            Mandatory = $false,
            ParameterSetName = "WithPattern",
            HelpMessage = (
                "Indicates that the cmdlet matches are case-sensitive. By " +
                "default, matches aren't case-sensitive.")
        )]
        [switch] $CaseSensitive,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = "WithPattern",
            HelpMessage = (
                "Specifies a culture name to match the specified pattern. The " +
                "Culture parameter must be used with the SimpleMatch parameter. " +
                "The default behavior uses the culture of the current PowerShell " +
                "runspace (session).")
        )]
        [string] $Culture,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = "WithPattern",
            HelpMessage = (
                "Specifies the type of encoding for the target file. The " +
                "default value is utf8NoBOM.")
        )]
        [ValidateSet("ASCII", "ANSI", "BigEndianUnicode", "BigEndianUTF32",
            "OEM", "Unicode", "UTF7", "UTF8", "UTF8BOM", "UTF8NoBOM",
            "UTF32", "Default")]
        [string] $Encoding = "UTF8NoBOM",
        [Parameter(
            Mandatory = $false,
            ParameterSetName = "WithPattern",
            HelpMessage = (
                "The NotMatch parameter finds text that doesn't match the " +
                "specified pattern.")
        )]
        [switch] $NotMatch,
        [Parameter(
            Mandatory = $false,
            ParameterSetName = "WithPattern",
            HelpMessage = (
                "Indicates that the cmdlet uses a simple match rather than a " +
                "regular expression match. In a simple match, Select-String " +
                "searches the input for the text in the Pattern parameter. It " +
                "doesn't interpret the value of the Pattern parameter as a " +
                "regular expression statement.")
        )]
        [switch] $SimpleMatch,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "Use Push-Location instead of Set-Location and push the location " +
                "onto the location stack")
        )]
        [switch] $Push,
        [Parameter(
            Mandatory = $false,
            HelpMessage = (
                "When set, only exact name matches are considered. By default, " +
                "wildcard matching is used unless the Name contains wildcard " +
                "characters.")
        )]
        [switch] $ExactMatch
    )

    begin {

        # handle default value for Name parameter since mandatory parameters cannot have defaults
        if ([string]::IsNullOrEmpty($Name)) {

            $Name = '*'
        }

        $CurrentLocation = (Microsoft.PowerShell.Management\Get-Location).Path;
        $callerSessionState = $PSCmdlet.SessionState

        # initialize collections for processing input files and results
        $inputFiles = [System.Collections.Generic.List[object]]::new()

        $allFiles = (
            [System.Collections.Generic.List[System.IO.FileSystemInfo]]::new())

        # copy parameters from current function to find-item function parameters
        # this maintains consistency in parameter handling across functions
        $invocationParams = GenXdev\Copy-IdenticalParamValues `
            -FunctionName 'GenXdev\Find-Item' `
            -BoundParameters $PSBoundParameters `
            -DefaultValues (
                Microsoft.PowerShell.Utility\Get-Variable `
                    -Scope Local `
                    -ErrorAction SilentlyContinue)

        # ensure we get file objects back instead of just paths for processing
        $invocationParams.PassThru = $true
        $invocationParams.NoLinks = $true
        $invocationParams.Quiet = $true

        if (-not [string]::IsNullOrWhiteSpace($Name)) {

            $invocationParams.Name = (
                    ($ExactMatch -or $Name.Contains("*") -or $Name.Contains("?")) ? $Name : "*$($Name)*"
            )
        }

        # configure search type based on user preferences
        if ($DirectoriesAndFiles) {

            $invocationParams.FilesAndDirectories = $true
        }

        $NoContentSearch = (-not $Content) -or ($Content.Length -eq 1 -and $Content[0] -eq ".*");

        # search directories by default unless explicitly searching for files
        if ((-not $File) -and $NoContentSearch) {

            $invocationParams.Directory = $true
        }

        # log the search parameters for troubleshooting purposes
        Microsoft.PowerShell.Utility\Write-Verbose (
            "Searching for files with parameters: " +
            ($invocationParams.Keys -join ', '))
    }

    process {

        # log current parameter set name for debugging pipeline behavior
        Microsoft.PowerShell.Utility\Write-Verbose (
            "process: Detected paramset : $($PSCmdlet.ParameterSetName)")

        # skip processing if no input received from pipeline
        if ($null -eq $Input) {

            return
        }

        # recursive function to process various input object types
        function processObject($inputObj) {

            # log the type of object being processed for troubleshooting
            Microsoft.PowerShell.Utility\Write-Verbose (
                "Processing input object of type: " +
                $inputObj.GetType().FullName)

            # directly add fileinfo objects to the final collection
            if ($inputObj -is [System.IO.FileInfo]) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Adding FileInfo to allFiles: $($inputObj.FullName)")

                $null = $allFiles.Add($inputObj)

                return
            }

            # add strings and directory objects to search collection
            if ($inputObj -is [string] -or
                $inputObj -is [System.IO.DirectoryInfo]) {

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

        try {

            $unboundScriptBlock = $null

            if ($Push) {
                $unboundScriptBlock = {
                    param($Path)
                    Microsoft.PowerShell.Management\Push-Location -LiteralPath $Path
                }.Ast.GetScriptBlock()
            } else {
                $unboundScriptBlock = {
                    param($Path)
                    Microsoft.PowerShell.Management\Set-Location -LiteralPath $Path
                }.Ast.GetScriptBlock()
            }

            # provided a name?
            if (-not [string]::IsNullOrWhiteSpace($Name)) {

                # get full path
                $path = GenXdev\Expand-Path $Name

                # if path exists, change to its directory
                if ([IO.File]::Exists($path)) {

                    $Path = [IO.Path]::GetDirectoryName($path)
                }

                # is an existing directory?
                if ([IO.Directory]::Exists($path)) {

                    if ($PSCmdlet.ShouldProcess($path, "Set location")) {

                        Microsoft.PowerShell.Utility\Write-Verbose (
                            "Changing location to directory: " +
                            $path)

                        # Invoke in caller's session state to update global stack/history
                        $ExecutionContext.SessionState.InvokeCommand.InvokeScript(
                            $callerSessionState,
                            $unboundScriptBlock,
                            @($path)
                        )
                    }

                    return
                }
            }

            # create detailed verbose output for search operation debugging
            $verboseMessage = (
                "** Performing search for provided names.`r`n" +
                ($invocationParams |
                    Microsoft.PowerShell.Utility\ConvertTo-Json -Depth 3))

            Microsoft.PowerShell.Utility\Write-Verbose $verboseMessage

            # find all matching files and sort them alphabetically by full path
            $found = $false
            while ($true) {
                $InputFiles |
                    GenXdev\Find-Item @invocationParams | Microsoft.PowerShell.Core\Where-Object {

                        (($PSItem -is [System.IO.DirectoryInfo]) -and ($PSItem.FullName -ne $CurrentLocation)) -or
                        (($PSItem -is [System.IO.FileInfo]) -and ($PSItem.DirectoryName -ne $CurrentLocation))

                    } |
                    Microsoft.PowerShell.Utility\Select-Object -First 1 |
                    Microsoft.PowerShell.Core\ForEach-Object {

                        # determine target directory based on result type
                        if ($PSItem -is [System.IO.DirectoryInfo]) {

                            if ($PSCmdlet.ShouldProcess($PSItem.FullName, "Set location")) {

                                $found = $true
                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    "Changing location to directory: " +
                                    $PSItem.FullName)

                                # Invoke in caller's session state to update global stack/history
                                $ExecutionContext.SessionState.InvokeCommand.InvokeScript(
                                    $callerSessionState,
                                    $unboundScriptBlock,
                                    @($PSItem.FullName)
                                )
                            }
                            else {

                                $found = $true
                            }
                        }
                        elseif ($PSItem -is [System.IO.FileInfo]) {

                            if ($PSCmdlet.ShouldProcess($PSItem.DirectoryName, "Set location")) {

                                $found = $true
                                Microsoft.PowerShell.Utility\Write-Verbose (
                                    "Changing location to file's directory: " +
                                    $PSItem.DirectoryName)

                                # Invoke in caller's session state to update global stack/history
                                $ExecutionContext.SessionState.InvokeCommand.InvokeScript(
                                    $callerSessionState,
                                    $unboundScriptBlock,
                                    @($PSItem.DirectoryName)
                                )

                                Microsoft.PowerShell.Utility\Write-Output $PSItem
                            }
                            else {

                                $found = $true
                            }
                        }
                    }

                if ($found -or ($invocationParams.MaxSearchUpDepth)) {

                    break;
                }
                else {

                    $invocationParams.MaxSearchUpDepth = 100;
                    $invocationParams.TimeoutSeconds = 6;
                    continue;
                }
            }
        }
        catch {

            # log any errors encountered during the search process
            Microsoft.PowerShell.Utility\Write-Error (
                "Error during file search: $($_.Exception.Message)`r`n" +
                ($_.Exception.StackTrace))
        }
        finally {

            if (-not $found) {

                Microsoft.PowerShell.Utility\Write-Information (
                    "No matching files or directories found for the provided input."
                )
            }
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.FileSystem
Original cmdlet filename  : Start-RoboCopy.ps1
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
Provides a PowerShell wrapper for Microsoft's Robust Copy (RoboCopy) utility.

.DESCRIPTION
A comprehensive wrapper for the RoboCopy command-line utility that provides
robust file and directory copying capabilities. This function exposes RoboCopy's
extensive feature set through PowerShell-friendly parameters while maintaining
most of its powerful functionality.

Key Features:
- Directory synchronization with mirror options
- Support for extra long pathnames (>256 characters)
- Security settings preservation
- Advanced file attribute handling
- Symbolic link and junction point management
- Monitor mode for continuous synchronization
- Performance optimization for large files
- Network compression support
- Recovery mode for failing devices

.PARAMETER Source
The source directory, file path, or directory with search mask to copy from.

.PARAMETER DestinationDirectory
The destination directory to place the copied files and directories into.
If this directory does not exist yet, all missing directories will be created.
Default value = `.\`

.PARAMETER FileMask
Optional searchmask for selecting the files that need to be copied.

.PARAMETER Mirror
Synchronizes the content of specified directories, will also delete any files and directories in the destination that do not exist in the source

.PARAMETER Move
Will move instead of copy all files from source to destination

.PARAMETER IncludeSecurity
Will also copy ownership, security descriptors and auditing information of files and directories

.PARAMETER SkipDirectories
Copies only files from source and skips sub-directories (no recurse)

.PARAMETER SkipEmptyDirectories
Does not copy directories if they would be empty

.PARAMETER CopyOnlyDirectoryTreeStructure
Create directory tree only

.PARAMETER CopyOnlyDirectoryTreeStructureAndEmptyFiles
Create directory tree and zero-length files only

.PARAMETER SkipAllSymbolicLinks
Don't copy symbolic links, junctions or the content they point to

.PARAMETER CopySymbolicLinksAsLinks
Instead of copying the content where symbolic links point to, copy the links themselves

.PARAMETER SkipJunctions
Don't copy directory junctions (symbolic link for a folder) or the content they point to

.PARAMETER SkipSymbolicFileLinks
Don't copy file symbolic links but do follow directory junctions

.PARAMETER CopyJunctionsAsJunctons
Instead of copying the content where junctions point to, copy the junctions themselves

.PARAMETER Force
Will copy all files even if they are older then the ones in the destination

.PARAMETER SkipFilesWithoutArchiveAttribute
Copies only files that have the archive attribute set

.PARAMETER ResetArchiveAttributeAfterSelection
In addition of copying only files that have the archive attribute set, will then reset this attribute on the source

.PARAMETER FileExcludeFilter
Exclude any files that matches any of these names/paths/wildcards

.PARAMETER DirectoryExcludeFilter
Exclude any directories that matches any of these names/paths/wildcards

.PARAMETER AttributeIncludeFilter
Copy only files that have all these attributes set [RASHCNETO]

.PARAMETER AttributeExcludeFilter
Exclude files that have any of these attributes set [RASHCNETO]

.PARAMETER SetAttributesAfterCopy
Will set the given attributes to copied files [RASHCNETO]

.PARAMETER RemoveAttributesAfterCopy
Will remove the given attributes from copied files [RASHCNETO]

.PARAMETER MaxSubDirTreeLevelDepth
Only copy the top n levels of the source directory tree

.PARAMETER MinFileSize
Skip files that are not at least n bytes in size

.PARAMETER MaxFileSize
Skip files that are larger then n bytes

.PARAMETER MinFileAge
Skip files that are not at least: n days old OR created before n date (if n < 1900 then n = n days, else n = YYYYMMDD date)

.PARAMETER MaxFileAge
Skip files that are older then: n days OR created after n date (if n < 1900 then n = n days, else n = YYYYMMDD date)

.PARAMETER MinLastAccessAge
Skip files that are accessed within the last: n days OR before n date (if n < 1900 then n = n days, else n = YYYYMMDD date)

.PARAMETER MaxLastAccessAge
Skip files that have not been accessed in: n days OR after n date (if n < 1900 then n = n days, else n = YYYYMMDD date)

.PARAMETER RecoveryMode
Will shortly pause and retry when I/O errors occur during copying

.PARAMETER MonitorMode
Will stay active after copying, and copy additional changes after a a default threshold of 10 minutes

.PARAMETER MonitorModeThresholdMinutes
Run again in n minutes Time, if changed

.PARAMETER MonitorModeThresholdNrOfChanges
Run again when more then n changes seen

.PARAMETER MonitorModeRunHoursFrom
Run hours - times when new copies may be started, start-time, range 0000:2359

.PARAMETER MonitorModeRunHoursUntil
Run hours - times when new copies may be started, end-time, range 0000:2359

.PARAMETER LogFilePath
If specified, logging will also be done to specified file

.PARAMETER LogfileOverwrite
Don't append to the specified logfile, but overwrite instead

.PARAMETER LogDirectoryNames
Include all scanned directory names in output

.PARAMETER LogAllFileNames
Include all scanned file names in output, even skipped onces

.PARAMETER Unicode
Output status as UNICODE

.PARAMETER LargeFiles
Enables optimization for copying large files

.PARAMETER Multithreaded
Optimize performance by doing multithreaded copying

.PARAMETER CompressibleContent
If applicable use compression when copying files between servers to safe bandwidth and time

.PARAMETER Override
Overrides, Removes, or Adds any specified robocopy parameter.

Usage:

Add or replace parameter:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Remove parameter:

    -Override -/Switch

Multiple overrides:

    -Override "/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch"

.PARAMETER WhatIf
Displays a message that describes the effect of the command, instead of executing the command.

.EXAMPLE
        ########################################################################Mirror a directory with security settings
Start-RoboCopy -Source "C:\Projects" -DestinationDirectory "D:\Backup" `
    -Mirror -IncludeSecurity

.EXAMPLE
        ########################################################################Monitor and sync changes every 10 minutes
Start-RoboCopy -Source "C:\Documents" -DestinationDirectory "\\server\share" `
    -MonitorMode -MonitorModeThresholdMinutes 10

.LINK
https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/robocopy

.LINK
https://en.wikipedia.org/wiki/Robocopy

#>
function Start-RoboCopy {
    [CmdLetBinding(
        DefaultParameterSetName = 'Default',
        ConfirmImpact = 'Medium',
        SupportsShouldProcess = $true
    )]
    [Alias('xc', 'rc')]
    Param
    (

        [Parameter(
            Mandatory,
            Position = 0,
            ValueFromPipeline = $false,
            HelpMessage = 'The directory, filepath, or directory+searchmask'
        )]
        [string]$Source,

        [Parameter(
            Mandatory = $false,
            Position = 1,
            ValueFromPipeline = $false,
            HelpMessage = "The destination directory to place the copied files and directories into.
            If this directory does not exist yet, all missing directories will be created.
            Default value = `".\`""
        )]
        [string]$DestinationDirectory = ".$([System.IO.Path]::DirectorySeparatorChar)",

        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            Position = 2,
            HelpMessage = "Optional searchmask for selecting the files that need to be copied.
            Default value = '*'"
        )]
        [SupportsWildcards()]
        [string[]] $Files = @(),
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Synchronizes the content of specified directories, will also delete any files and directories in the destination that do not exist in the source'
        )]
        [switch] $Mirror,

        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Will move instead of copy all files from source to destination'
        )]
        [switch] $Move,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Will also copy ownership, security descriptors and auditing information of files and directories'
        )]
        [switch] $IncludeSecurity,
        [Parameter(
            ParameterSetName = 'Default',
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Copies only files from source and skips sub-directories (no recurse)'
        )]
        [switch] $SkipDirectories,
        [Parameter(
            ParameterSetName = 'SkipDirectories',
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Does not copy directories if they would be empty'
        )]
        [switch] $SkipEmptyDirectories,
        [Parameter(
            ParameterSetName = 'SkipDirectories',
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Create directory tree only'
        )]
        [switch] $CopyOnlyDirectoryTreeStructure,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Create directory tree and zero-length files only'
        )]
        [switch] $CopyOnlyDirectoryTreeStructureAndEmptyFiles,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = "Don't copy symbolic links, junctions or the content they point to"
        )]
        [switch] $SkipAllSymbolicLinks,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = "Don't copy file symbolic links but do follow directory junctions"
        )]
        [switch] $SkipSymbolicFileLinks,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Instead of copying the content where symbolic links point to, copy the links themselves'
        )]
        [switch] $CopySymbolicLinksAsLinks,
        [Parameter(

            ParameterSetName = 'SkipDirectories',
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = "Don't copy directory junctions (symbolic link for a folder) or the content they point to"
        )]
        [switch] $SkipJunctions,
        [Parameter(

            ParameterSetName = 'SkipDirectories',
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Instead of copying the content where junctions point to, copy the junctions themselves'
        )]
        [switch] $CopyJunctionsAsJunctons,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Will copy all files even if they are older then the ones in the destination'
        )]
        [switch] $Force,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Copies only files that have the archive attribute set'
        )]
        [switch] $SkipFilesWithoutArchiveAttribute,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'In addition of copying only files that have the archive attribute set, will then reset this attribute on the source'
        )]
        [switch] $ResetArchiveAttributeAfterSelection,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Exclude any files that matches any of these names/paths/wildcards'
        )]
        [SupportsWildcards()]
        [string[]] $FileExcludeFilter = @(),
        [Parameter(
            ParameterSetName = 'SkipDirectories',
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Exclude any directories that matches any of these names/paths/wildcards'
        )]
        [SupportsWildcards()]
        [string[]] $DirectoryExcludeFilter = @(),
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Copy only files that have all these attributes set [RASHCNETO]'
        )]
        [string] $AttributeIncludeFilter,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Exclude files that have any of these attributes set [RASHCNETO]'
        )]
        [string] $AttributeExcludeFilter,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Will set the given attributes to copied files [RASHCNETO]'
        )]
        [string] $SetAttributesAfterCopy,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Will remove the given attributes from copied files [RASHCNETO]'
        )]
        [string] $RemoveAttributesAfterCopy,
        [ValidateRange(1, 1000000)]
        [Parameter(
            ParameterSetName = 'SkipDirectories',
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Only copy the top n levels of the source directory tree'
        )]
        [int] $MaxSubDirTreeLevelDepth = -1,
        [ValidateRange(0, 9999999999999999)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Skip files that are not at least n bytes in size'
        )]
        [int] $MinFileSize = -1,
        [ValidateRange(0, 9999999999999999)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Skip files that are larger then n bytes'
        )]
        [int] $MaxFileSize = -1,
        [ValidateRange(0, 99999999)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Skip files that are not at least: n days old OR created before n date (if n < 1900 then n = n days, else n = YYYYMMDD date)'
        )]
        [int] $MinFileAge = -1,
        [ValidateRange(0, 99999999)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Skip files that are older then: n days OR created after n date (if n < 1900 then n = n days, else n = YYYYMMDD date)'
        )]
        [int] $MaxFileAge = -1,
        [ValidateRange(0, 99999999)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Skip files that are accessed within the last: n days OR before n date (if n < 1900 then n = n days, else n = YYYYMMDD date)'
        )]
        [int] $MinLastAccessAge = -1,
        [ValidateRange(0, 99999999)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Skip files that have not been accessed in: n days OR after n date (if n < 1900 then n = n days, else n = YYYYMMDD date)'
        )]
        [int] $MaxLastAccessAge = -1,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Will shortly pause and retry when I/O errors occur during copying'
        )]
        [switch] $RecoveryMode,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Will stay active after copying, and copy additional changes after a a default threshold of 10 minutes'
        )]
        [switch] $MonitorMode,
        [ValidateRange(1, 144000)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Run again in n minutes Time, if changed'
        )]
        [int] $MonitorModeThresholdMinutes = -1,
        [ValidateRange(1, 1000000000)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Run again when more then n changes seen'
        )]
        [int] $MonitorModeThresholdNrOfChanges = -1,
        [ValidateRange(0, 2359)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Run hours - times when new copies may be started, start-time, range 0000:2359'
        )]
        [int] $MonitorModeRunHoursFrom = -1,
        [ValidateRange(0, 2359)]
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Run hours - times when new copies may be started, end-time, range 0000:2359'
        )]
        [int] $MonitorModeRunHoursUntil = -1,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'If specified, logging will also be done to specified file'
        )]
        [string] $LogFilePath,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = "Don't append to the specified logfile, but overwrite instead"
        )]
        [switch] $LogfileOverwrite,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Include all scanned directory names in output'
        )]
        [switch] $LogDirectoryNames,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Include all scanned file names in output, even skipped onces'
        )]
        [switch] $LogAllFileNames,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Output status as UNICODE'
        )]
        [switch] $Unicode,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Enables optimization for copying large files'
        )]
        [switch] $LargeFiles,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'Optimize performance by doing multithreaded copying'
        )]
        [switch] $MultiThreaded,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'If applicable use compression when copying files between servers to safe bandwidth and time'
        )]
        [switch] $CompressibleContent,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            HelpMessage = 'When set, will use millisecond timestamp matching instead of the default 2-second tolerance'
        )]
        [switch] $ExactTimestamps,
        [Parameter(
            Mandatory = $false,
            ValueFromPipeline = $false,
            ValueFromRemainingArguments,
            Position = 3,
            HelpMessage = "Overrides, Removes, or Adds any specified robocopy parameter.

Usage:

Add or replace parameter:

    -Override /SwitchWithValue:'SomeValue'

    -Override /Switch

Remove parameter:

    -Override -/Switch

Multiple overrides:

    -Override `"/ReplaceThisSwitchWithValue:'SomeValue' -/RemoveThisSwitch /AddThisSwitch`"
"
        )]
        [string] $Override
    )

    Begin {
        # initialize robocopy path and validate system requirements
        Microsoft.PowerShell.Utility\Write-Verbose "Initializing RoboCopy with source '$Source' and destination '$DestinationDirectory'"


        # initialize settings
        $RobocopyPath = "$env:SystemRoot\system32\robocopy.exe";

        # normalize to current directory
        $Source = GenXdev\Expand-Path $Source
        $DestinationDirectory = GenXdev\Expand-Path $DestinationDirectory

        # source is not an existing directory?
        if ([IO.Directory]::Exists($Source) -eq $false) {

            # split directory and filename
            $SourceSearchMask = [IO.Path]::GetFileName($Source);
            $SourceDirOnly = [IO.Path]::GetDirectoryName($Source);

            # does parent directory exist?
            if ([IO.Directory]::Exists($SourceDirOnly)) {

                # ..but the supplied source parameter is not an existing file?
                if ([IO.File]::Exists($Source) -eq $false) {

                    # ..and the supplied filename is not searchMask?
                    if (!$SourceSearchMask.Contains('*') -and !$SourceSearchMask.Contains('?')) {

                        throw "Could not find source: $Source"
                    }
                }

                $Mirror = $false;
            }

            # reconfigure
            $Source = $SourceDirOnly;
            if ($Files -notcontains $SourceSearchMask) {

                $Files = $Files + @($SourceSearchMask);
            }
        }

        $ParamFFT = "";

        # default value
        if ($Files.Length -eq 0) {

            $Files = @('*');
        }

        # destination directory does not exist yet?
        if ([IO.Directory]::Exists($DestinationDirectory) -eq $false) {

            # create it
            [IO.Directory]::CreateDirectory($DestinationDirectory) | Microsoft.PowerShell.Core\Out-Null
        }


        function _CurrentUserHasElevatedRights() {

            $id = [System.Security.Principal.WindowsIdentity]::GetCurrent()
            $p = Microsoft.PowerShell.Utility\New-Object System.Security.Principal.WindowsPrincipal($id)

            if ($p.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator) -or
                $p.IsInRole([System.Security.Principal.WindowsBuiltInRole]::BackupOperator)) {

                return $true;
            }

            return $false;
        }

        function ConstructFileFilterSet([string[]] $FileFilterSet, [string] $CommandName) {

            $result = '';

            $FileFilterSet | Microsoft.PowerShell.Core\ForEach-Object {

                $result = "$result '$PSItem'".Trim()
            }

            return $result;
        }

        function SanitizeAttributeSet([string] $AttributeSet, [string] $CommandName) {

            $AttributeSetNew = '';
            $AttributeSet.Replace('[', '').Replace(']', '').ToUpperInvariant().ToCharArray() | Microsoft.PowerShell.Core\ForEach-Object {

                if (('RASHCNETO'.IndexOf($PSItem) -ge 0) -and ($AttributeSetNew.IndexOf($PSItem) -lt 0)) {

                    $AttributeSetNew = "$AttributeSet$PSItem";
                }
                else {

                    throw "Could not parse parameter -$CommandName $AttributeSet - '$PSItem' is not valid
    possible attributes to combine: [RASHCNETO]

    R - Read only
    A - Archive
    S - System
    H - Hidden
    C - Compressed
    N - Not content indexed
    E - Encrypted
    T - Temporary
    O - Offline
"
                }
            }

            return $AttributeSetNew
        }

        function CheckAgeInteger([int] $AgeValue, [string] $CommandName) {

            if ($AgeValue -ge 1900) {

                [DateTime] $date;
                if ([DateTime]::TryParse("$MaxFileAge", [ref] $date) -eq $false) {

                    throw "Could not parse parameter '-$CommandName $AgeValue as a valid date (if n < 1900 then n = n days, else n = YYYYMMDD date)"
                }
            }
        }

        function getSwitchesDictionary([string] $Switches) {

            # initialize
            $switchesDictionary = Microsoft.PowerShell.Utility\New-Object 'System.Collections.Generic.Dictionary[String, String]';

            if ([String]::IsNullOrWhiteSpace($Switches)) {

                return $switchesDictionary
            }

            $switchesCleaned = " $Switches ";

            # remove spaces
            while ($switchesCleaned.IndexOf('  /') -ge 0) {

                $switchesCleaned = $switchesCleaned.Replace('  /', ' /');
            }
            while ($switchesCleaned.IndexOf('  -/') -ge 0) {

                $switchesCleaned = $switchesCleaned.Replace('  -/', ' -/');
            }

            # split up
            $allSwitches = $switchesCleaned.Replace(' -/', ' /-').Split([string[]]@(' /'), [System.StringSplitOptions]::RemoveEmptyEntries);

            # enumerate switches
            $allSwitches | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {

                # add to Dictionary
                $switchesDictionary["$($PSItem.Trim().Split(' ')[0].Split(':' )[0].Trim().ToUpperInvariant())"] = $PSItem.Trim()
            }

            return $switchesDictionary;
        }

        function overrideAndCleanSwitches([string] $Switches) {

            $autoGeneratedSwitches = (getSwitchesDictionary $Switches)
            $overridenSwitches = (getSwitchesDictionary $Override)
            $newSwitches = '';

            $autoGeneratedSwitches.GetEnumerator() | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {

                # should NOT remove it?
                if (!$overridenSwitches.ContainsKey("-$($PSItem.Key)")) {

                    # should replace it?
                    if ($overridenSwitches.ContainsKey($PSItem.Key)) {

                        $newSwitches += " /$($overridenSwitches[$PSItem.Key])"
                    }
                    else {

                        # keep the autogenerated switch
                        $newSwitches += " /$($PSItem.Value)"
                    }
                }
            }

            $overridenSwitches.GetEnumerator() | Microsoft.PowerShell.Core\ForEach-Object -ErrorAction SilentlyContinue {

                # not already processed above?
                if (!$PSItem.Key.StartsWith('-') -and !$autoGeneratedSwitches.ContainsKey("$($PSItem.Key)")) {

                    # add it
                    $newSwitches += " /$($PSItem.Value)"
                }
            }

            return $newSwitches.Trim();
        }


        $ParamMode = ''

        # /MOV			█  MOVE files AND dirs (delete from source after copying).
        $ParamMOV = '';

        # /MIR			█ MIRror a directory tree (equivalent to /E plus /PURGE).
        $ParamMIR = '';

        # /SECFIX		█ FIX file SECurity on all files, even skipped files.
        $ParamSECFIX = '';

        # /E			█  copy subdirectories, including Empty ones.
        # /S			█ copy Subdirectories, but not empty ones.
        $ParamDirs = '/E'

        # /COPY			█ what to COPY for files (default is /COPY:DAT).
        $ParamCOPY = '/COPY:DAT'

        $ParamXO = '';
        $ParamIM = '';
        $ParamIT = '';

        # /IS			█ Include Same files.
        $ParamIS = '';

        # /EFSRAW		█  copy all encrypted files in EFS RAW mode.
        $ParamEFSRAW = '';

        # /NOOFFLOAD	█ 	copy files without using the Windows Copy Offload mechanism.
        $ParamNOOFFLOAD = '';

        # /R			█ number of Retries on failed copies.
        $ParamR = '/R:3';

        # /W			█ Wait time between retries.
        $ParamW = '/W:2';

        # /J			█ copy using unbuffered I/O (recommended for large files).
        $paramJ = '';

        # /MT           █ Do multi-threaded copies with n threads (default 8).
        $paramMT = '';

        # /NDL			█ No Directory List - don't log directory names.
        $ParamNDL = '/NDL';

        # /X			█ report all eXtra files, not just those selected.
        $ParamX = '';

        # /V			█  produce Verbose output, showing skipped files.
        $ParamV = '';

        # /CREATE		█  CREATE directory tree and zero-length files only.
        $ParamCREATE = '';

        # /XJ			█ eXclude symbolic links (for both files and directories) and Junction points.
        $ParamXJ = '';

        # /XJD			█ eXclude symbolic links for Directories and Junction points.
        $ParamXJD = '';

        # /XJF			█  eXclude symbolic links for Files.
        $ParamXJF = '';

        # /SJ			█ copy Junctions as junctions instead of as the junction targets.
        $ParamSJ = '';

        # /SL			█ copy Symbolic Links as links instead of as the link targets.
        $ParamSL = '';

        # /A			█  copy only files with the Archive attribute set.
        # /M			█ copy only files with the Archive attribute and reset it.
        $ParamArchive = '';

        # /XF
        $ParamXF = '' # █ eXclude Files matching given names/paths/wildcards.

        # /XD
        $ParamXD = '' # █ eXclude Directories matching given names/paths/wildcards.

        # /IA			█ Include only files with any of the given Attributes set.
        $ParamIA = '';

        # /XA			█  eXclude files with any of the given Attributes set.
        $ParamXA = '';

        # /A+			█  add the given Attributes to copied files
        $ParamAttrSet = '';

        # /A-			█ remove the given Attributes from copied files.
        $ParamAttrRemove = '';

        # /LEV			█ only copy the top n LEVels of the source directory tree.
        $ParamLEV = '';

        # /MIN			█  MINimum file size - exclude files smaller than n bytes.
        $ParamMIN = '';

        # /MAX			█  MAXimum file size - exclude files bigger than n bytes.
        $ParamMAX = '';

        # /MINAGE 	    █ MINimum file AGE - exclude files newer than n days/date.
        $ParamMINAGE = '';

        # /MAXAGE		█ MAXimum file AGE - exclude files older than n days/date.
        $ParamMaxAGE = '';

        # /LOG			█ output status to LOG file (overwrite existing log).
        # /LOG+         █ output status to LOG file (append to existing log).
        $ParamLOG = '';

        # /TEE          █ output to console window, as well as the log file.
        $ParamTee = '';

        # /UNICODE		█  output status as UNICODE.
        $ParamUnicode = '';

        # /RH			█  Run Hours - times when new copies may be started.
        $ParamRH = '';

        # /MON			█ MONitor source; run again when more than n changes seen.
        # /MOT          █ MOnitor source; run again in m minutes Time, if changed.
        $ParamMON = '';

        # /MAXLAD		█  MAXimum Last Access Date - exclude files unused since n.
        $ParamMAXLAD = '';

        # /MINLAD		█  MINimum Last Access Date - exclude files used since n.
        $ParamMINLAD = '';

        # /COMPRESS		█  Request network compression during file transfer, if applicable.
        $ParamCOMPRESS = '';


        # -Mirror ➜ Synchronizes the content of specified directories, will also delete any files and directories in the destination that do not exist in the source
        if ($Mirror -eq $true) {

            $ParamMIR = '/MIR' #                          █ MIRror a directory tree (equivalent to /E plus /PURGE).
        }

        # -Move ➜ Will move instead of copy all files from source to destination
        if ($Move -eq $true) {

            $ParamMOV = '/MOV' #                          █ MOVE files AND dirs (delete from source after copying).
        }

        # -IncludeSecurity ➜ Will also copy ownership, security descriptors and auditing information of files and directories
        if ($IncludeSecurity -eq $true) {

            $ParamSECFIX = '/SECFIX' #                    █ FIX file SECurity on all files, even skipped files.
            $ParamCOPY = "$($ParamCOPY)SOU" #             █ what to COPY for files (default is /COPY:DAT).
            $ParamEFSRAW = '/EFSRAW' #                    █ copy all encrypted files in EFS RAW mode.
        }

        # -SkipDirectories ➜ Copies only files from source and skips sub-directories (no recurse)
        if ($SkipDirectories -eq $true) {

            $ParamDirs = '' #                             █ copy subdirectories, including Empty ones.
        }
        else {

            # -SkipEmptyDirectories ➜ Does not copy directories if they would be empty
            if ($SkipEmptyDirectories -eq $true) {

                $ParamDirs = '/S' #                       █ copy Subdirectories, but not empty ones.
            }
        }

        # -CopyOnlyDirectoryTreeStructure ➜ Create directory tree only
        if ($CopyOnlyDirectoryTreeStructure -eq $true) {

            $ParamCREATE = '/CREATE'; #                   █ CREATE directory tree and zero-length files only.
            $Files = @('DontCopy4nyF1lés') #              █ File(s) to copy  (names/wildcards: default is "*.*")
        }
        else {
            # -CopyOnlyDirectoryTreeStructureAndEmptyFiles ➜ Create directory tree and zero-length files only
            if ($CopyOnlyDirectoryTreeStructureAndEmptyFiles -eq $true) {

                $ParamCREATE = '/CREATE'; #               █ CREATE directory tree and zero-length files only.
            }
        }

        # -SkipAllSymbolicLinks ➜ Don't copy symbolic links, junctions or the content they point to
        if ($SkipAllSymbolicLinks -eq $true) {

            $ParamXJ = '/XJ'; #                           █ eXclude symbolic links (for both files and directories) and Junction points.
        }
        else {

            # -SkipSymbolicFileLinks ➜ Don't copy file symbolic links but do follow directory junctions
            if ($SkipSymbolicFileLinks -eq $true) {

                $ParamXJF = '/XJF'; #                     █ eXclude symbolic links for Files.
            }
            else {

                # -CopySymbolicLinksAsLinks ➜ Instead of copying the content where symbolic links point to, copy the links themselves
                if ($CopySymbolicLinksAsLinks -eq $true) {

                    $ParamSL = '/SL'; #                   █ copy Symbolic Links as links instead of as the link targets.
                }
            }

            # -SkipJunctions ➜ Don't copy directory junctions (symbolic link for a folder) or the content they point to
            if ($SkipJunctions -eq $true) {

                $ParamXJD = '/XJD'; #                     █ eXclude symbolic links for Directories and Junction points.
            }
            else {

                # -CopyJunctionsAsJunctons ➜ Instead of copying the content where junctions point to, copy the junctions themselves
                if ($CopyJunctionsAsJunctons -eq $true) {

                    $ParamSJ = '/SJ'; #                   █ copy Junctions as junctions instead of as the junction targets.
                }
            }
        }


        # -Force ➜ Restored conditional toggle targeting absolute, unconditional overwrites
        if ($Force -eq $true) {

            $ParamXO = '/XO' #                            █ eXclude Older files parameter passed dynamically inside exclusion block.
            $ParamIT = '/IT' #                            █ Include Tweaked files.
            $ParamIS = '/IS' #                            █ Include Same files.
        }


        # -SkipFilesWithoutArchiveAttribute ➜ Copies only files that have the archive attribute set
        if ($SkipFilesWithoutArchiveAttribute -eq $true) {

            $ParamArchive = '/A' #                        █ copy only files with the Archive attribute set.
        }

        # -ResetArchiveAttributeAfterSelection ➜ In addition of copying only files that have the archive attribute set, will then reset this attribute on the source
        if ($ResetArchiveAttributeAfterSelection -eq $true) {

            $ParamArchive = '/M' #                        █ copy only files with the Archive attribute and reset it
        }


        # -FileExcludeFilter ➜ Exclude any files that matches any of these names/paths/wildcards
        if ($FileExcludeFilter.Length -gt 0) {

            $Filter = "$((ConstructFileFilterSet $FileExcludeFilter 'FileExcludeFilter'))";
            $ParamXF = "/XF $Filter" #                    █ eXclude Files matching given names/paths/wildcards.
        }

        # -DirectoryExcludeFilter ➜ Exclude any directories that matches any of these names/paths/wildcards
        if ($DirectoryExcludeFilter.Length -gt 0) {

            $Filter = "$((ConstructFileFilterSet $DirectoryExcludeFilter 'DirectoryExcludeFilter'))";
            $ParamXD = "/XD $Filter" #                    █ eXclude Directories matching given names/paths/wildcards.
        }

        # -AttributeIncludeFilter ➜ Copy only files that have all these attributes set [RASHCNETO]
        if ([string]::IsNullOrWhiteSpace($AttributeIncludeFilter) -eq $false) {

            $Filter = "$((SanitizeAttributeSet $AttributeIncludeFilter 'AttributeIncludeFilter'))";
            $ParamIA = "/IA:$Filter" #                    █ Include only files with any of the given Attributes set.
        }

        # -AttributeExcludeFilter ➜ Exclude files that have any of these attributes set [RASHCNETO]
        if ([string]::IsNullOrWhiteSpace($AttributeExcludeFilter) -eq $false) {

            $Filter = "$((SanitizeAttributeSet $AttributeExcludeFilter 'AttributeExcludeFilter'))";
            $ParamXA = "/XA:$Filter" #                    █ eXclude files with any of the given Attributes set.
        }

        # -SetAttributesAfterCopy ➜ Will set the given attributes to copied files [RASHCNETO]
        if ([string]::IsNullOrWhiteSpace($SetAttributesAfterCopy) -eq $false) {

            $Filter = "$((SanitizeAttributeSet $SetAttributesAfterCopy 'SetAttributesAfterCopy'))";
            $ParamAttrSet = "/A+:$Filter" #               █ add the given Attributes to copied files
        }

        # -RemoveAttributesAfterCopy ➜ Will remove the given attributes from copied files [RASHCNETO]
        if ([string]::IsNullOrWhiteSpace($RemoveAttributesAfterCopy) -eq $false) {

            $Filter = "$((SanitizeAttributeSet $RemoveAttributesAfterCopy 'RemoveAttributesAfterCopy'))";
            $ParamAttrRemove = "/A+:$Filter" #            █ remove the given Attributes from copied files.
        }

        # -MaxSubDirTreeLevelDepth ➜ Only copy the top n levels of the source directory tree
        if ($MaxSubDirTreeLevelDepth -ge 0) {

            $ParamLEV = "/LEV:$MaxSubDirTreeLevelDepth" # █ only copy the top n LEVels of the source directory tree.
        }

        # -MinFileSize ➜ Skip files that are not at least n bytes in size
        if ($MinFileSize -ge 0) {

            $ParamMIN = "/MIN:$MinFileSize" #             █ MINimum file size - exclude files smaller than n bytes.
        }

        # -MaxFileSize ➜ Skip files that are larger then n bytes
        if ($MaxFileSize -ge 0) {

            $ParamMAX = "/MAX:$MinFileSize" #             █ MAXimum file size - exclude files bigger than n bytes.
        }

        # -MinFileAge ➜ Skip files that are not at least: n days old OR created before n date (if n < 1900 then n = n days, else n = YYYYMMDD date)
        if ($MinFileAge -ge 0) {

            CheckAgeInteger $MinFileAge 'MinFileAge'

            $ParamMINAGE = "/MINAGE:$MinFileAge" #        █ MINimum file AGE - exclude files newer than n days/date.
        }

        # -MaxFileAge ➜ Skip files that are older then: n days OR created after n date (if n < 1900 then n = n days, else n = YYYYMMDD date)
        if ($MaxFileAge -ge 0) {

            CheckAgeInteger $MaxFileAge 'MaxFileAge'

            $ParamMaxAGE = "/MAXAGE:$MaxFileAge" #        █ MAXimum file AGE - exclude files older than n days/date.
        }

        # -MinLastAccessAge ➜ Skip files that are accessed within the last: n days OR before n date (if n < 1900 then n = n days, else n = YYYYMMDD date)
        if ($MinLastAccessAge -ge 0) {

            CheckAgeInteger $MinLastAccessAge 'MinLastAccessAge'

            $ParamMINLAD = "/MINLAD:$MinLastAccessAge" #  █ MINimum Last Access Date - exclude files used since n.
        }

        # -MaxLastAccessAge ➜ Skip files that have not been accessed in: n days OR after n date (if n < 1900 then n = n days, else n = YYYYMMDD date)
        if ($MaxLastAccessAge -ge 0) {

            CheckAgeInteger $MaxLastAccessAge 'MaxLastAccessAge'

            $ParamMAXLAD = "/MAXLAD:$MaxLastAccessAge" #  █ MAXimum Last Access Date - exclude files unused since n.
        }


        # -ExactTimestamps logic wrapper
        if ($ExactTimestamps -ne $true) {

            $ParamFFT = '/FFT' #                            █ Wait time between retries: default is 30 seconds.
        }


        # -RecoveryMode ➜ Will shortly pause and retry when I/O errors occur during copying
        if ($RecoveryMode -eq $true) {

            $ParamNOOFFLOAD = '/NOOFFLOAD' #              █ copy files without using the Windows Copy Offload mechanism.
            $ParamR = '/R:25' #                           █ number of Retries on failed copies: default 1 million.
            $ParamW = '/W:1' #                            █ Wait time between retries: default is 30 seconds.
        }


        # -MonitorMode ➜ Will stay active after copying, and copy additional changes after a a default threshold of 10 minutes
        if ($MonitorMode -eq $true) {

            $ParamMON = '/MOT:10' #                       █ MOnitor source; run again in m minutes Time, if changed.
        }

        # -MonitorModeThresholdMinutes ➜ Run again in n minutes Time, if changed
        if ($MonitorModeThresholdMinutes -ge 0) {

            $MotArgs = $MonitorModeThresholdMinutes;
            $ParamMON = "/MOT:$MotArgs" #                 █ MOnitor source; run again in m minutes Time, if changed.
        }

        # -MonitorModeThresholdNrOfChanges ➜ Run again when more then n changes seen
        if ($MonitorModeThresholdNrOfChanges -ge 0) {

            $MonArgs = $MonitorModeThresholdNrOfChanges
            $ParamMON = "/MON:$MonArgs" #                 █ MONitor source; run again when more than n changes seen.
        }

        if (($MonitorModeRunHoursFrom -ge 0) -or ($MonitorModeRunHoursUntil -ge 0)) {

            # -MonitorModeRunHoursFrom ➜ Run hours - times when new copies may be started, start-time, range 0000:2359
            if ($MonitorModeRunHoursFrom -ge 0) {

                $MonitorModeRunHoursFromStr = "$MonitorModeRunHoursFrom".PadLeft('0', 4);
                [int] $FromMinute = $MonitorModeRunHoursFromStr.Substring(2, 2);
                if ($FromMinute -lt 59) {

                    throw "Could not parse '-MonitorModeRunHoursFrom $MonitorModeRunHoursFromStr' parameter, range 0000:2359"
                }
            }
            else {
                $MonitorModeRunHoursFromStr = '0000';
            }

            # -MonitorModeRunHoursUntil ➜ Run hours - times when new copies may be started, end-time, range 0000:2359
            if ($MonitorModeRunHoursUntil -ge 0) {

                $MonitorModeRunHoursUntilStr = "$MonitorModeRunHoursUntil".PadLeft('0', 4);
                [int] $UntilMinute = $MonitorModeRunHoursUntilStr.Substring(2, 2);

                if ($UntilMinute -lt 59) {

                    throw "Could not parse '-MonitorModeRunHoursUntil $MonitorModeRunHoursUntilStr' parameter, range 0000:2359"
                }
            }
            else {
                $MonitorModeRunHoursUntilStr = '2359'
            }

            $RHArgs = "$MonitorModeRunHoursFromStr-$MonitorModeRunHoursUntilStr"
            $ParamRH = "/RH:$RHArgs" #                    █ Run Hours - times when new copies may be started.
        }


        # -Unicode -> Output status as UNICODE
        if ($Unicode -eq $true) {

            $ParamUnicode = '/UNICODE' #                  █ output status as UNICODE.
        }

        # -LogFilePath ➜ If specified, logging will also be done to specified file
        if ([string]::IsNullOrWhiteSpace($LogFilePath) -eq $false) {

            $LogArgs = "'$((GenXdev\Expand-Path $LogFilePath $true).ToString().Replace("'", "''"))'"
            $LogPrefix = '';
            $ParamTee = '/TEE' #                          █ output to console window, as well as the log file

            # -Unicode -> Output status as UNICODE
            if ($Unicode -eq $true) { $LogPrefix = 'UNI'; }

            # -LogfileOverwrite ➜ Don't append to the specified logfile, but overwrite instead
            if ($LogfileOverwrite -eq $true) {

                $ParamLOG = "/$($LogPrefix)LOG:$LogArgs" #█ output status to LOG file (overwrite existing log).
            }
            else {

                $ParamLOG = "/$($LogPrefix)LOG+:$LogArgs"#█ output status to LOG file (append to existing log).
            }
        }

        # -LogDirectoryNames ➜ Include all scanned directory names in output
        if ($LogDirectoryNames -eq $true) {

            $ParamNDL = '' #                              █ No Directory List - don't log directory names.
        }

        # -LogAllFileNames ➜ Include all scanned file names in output, even skipped onces
        if ($LogAllFileNames -eq $true) {

            $ParamX = '/X' #                              █ report all eXtra files, not just those selected.
            $ParamV = '/V' #                              █ produce Verbose output, showing skipped files.
        }

        # -LargeFiles ➜ Enables optimization for copying large files
        if ($LargeFiles -eq $true) {

            $ParamMode = '/ZB' #                          █ use restartable mode; fallback to Backup mode if access denied.
            $paramJ = '/J' #                              █ copy using unbuffered I/O (recommended for large files).
        }

        # -LargeFiles ➜ Optimize performance by doing multithreaded copying
        if ($MultiThreaded -eq $true) {

            $paramMT = '/MT:16' #                         █ Do multi-threaded copies with n threads (default 8).
        }

        # -CompressibleContent ➜ If applicable use compression when copying files between servers to safe bandwidth and time
        if ($CompressibleContent -eq $true) {

            $ParamCOMPRESS = '/COMPRESS' #                █ Request network compression during file transfer, if applicable.
        }


        $switches = "$ParamDirs /TS /FP $ParamMode /DCOPY:DAT $ParamMT $ParamMOV $ParamMIR $ParamSECFIX $ParamCOPY $ParamXO $ParamIM $ParamIT $ParamIS $ParamEFSRAW $ParamNOOFFLOAD $ParamR $ParamW $paramJ $ParamNDL $ParamX $ParamV $ParamCREATE $ParamXJ $ParamXJD $ParamXJF $ParamSJ $ParamSL $ParamArchive $ParamIA $ParamXA $ParamAttrSet $ParamAttrRemove $ParamLEV $ParamMIN $ParamMAX $ParamMINAGE $ParamMaxAGE $ParamLOG $ParamTee $ParamUnicode $ParamRH $ParamMON $ParamMON $ParamMAXLAD $ParamMINLAD $ParamCOMPRESS $ParamXF $ParamXD $ParamFFT".Replace('  ', ' ').Trim();
        $switchesCleaned = overrideAndCleanSwitches($switches)
        $FilesArgs = ConstructFileFilterSet $Files 'FileMask'
        $cmdLine = "& '$($RobocopyPath.Replace("'", "''"))' '$($Source.Replace("'", "''"))' '$($DestinationDirectory.Replace("'", "''"))' $FilesArgs $switchesCleaned"
    }

    process {

    }

    end {
        # construct and execute robocopy command
        Microsoft.PowerShell.Utility\Write-Verbose 'Constructing RoboCopy command with selected parameters'

        # collect param help information
        $paramList = @{};
        (& $RobocopyPath -?) | Microsoft.PowerShell.Core\ForEach-Object {
            if ($PSItem.Contains(' :: ')) {
                $s = $PSItem.Split([string[]]@(' :: '), [StringSplitOptions]::RemoveEmptyEntries);
                $paramList."$($s[0].ToLowerInvariant().split(':')[0].Split('[')[0].Trim().split(' ')[0])" = $s[1];
            }
        };

        $first = $true;
        $paramsExplained = @(

            " $switchesCleaned ".Split([string[]]@(' /'), [System.StringSplitOptions]::RemoveEmptyEntries) |
                Microsoft.PowerShell.Core\ForEach-Object {

                    $description = $paramList."/$($PSItem.ToLowerInvariant().split(':')[0].Split('[')[0].Trim().split(' ')[0])"
                    $Space = '                         '; if ($first) { $Space = ''; $first = $false; }
                    "$Space/$($PSItem.ToUpperInvariant().split(':')[0].Split('[')[0].Trim().split(' ')[0].PadRight(15)) --> $description`r`n"
                }
        );
        # create a descriptive operation message based on selected mode
        $operation = if ($Mirror) {
            'Mirror'
        }
        elseif ($Move) {
            'Move'
        }
        else {
            'Copy'
        }

        $target = "$operation from '$Source' to '$DestinationDirectory'"
        $message = "

            RoboCopy would be executed as:
                $($cmdLine.Replace(' /L ', ' '))

            Source      : $Source
            Files       : $Files
            Destination : $DestinationDirectory

            Mirror      : $($Mirror -eq $true)
            Move        : $($Move -eq $true)

            Switches    : $paramsExplained
        "

        if (-not ($PSCmdlet.ShouldProcess($target, $message))) {

            return;
        }

        # execute robocopy with constructed parameters
        Microsoft.PowerShell.Utility\Write-Verbose "Executing RoboCopy command: $cmdLine"

        Microsoft.PowerShell.Utility\Invoke-Expression $cmdLine
    }
}

