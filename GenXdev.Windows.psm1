<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : CurrentUserHasElevatedRights.ps1
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
Checks if the current user has elevated rights.

.DESCRIPTION
Determines whether the current Windows user has administrative or backup operator
privileges by checking their security principal roles. Returns true if the user
has elevated rights, false otherwise. Implements robust error handling for
security and access-related issues.

.OUTPUTS
System.Boolean
Returns true if user has admin or backup operator rights, false otherwise.

.EXAMPLE
$hasRights = CurrentUserHasElevatedRights
###############################################################################>
function CurrentUserHasElevatedRights {

    [CmdletBinding()]
    [OutputType([System.Boolean])]
    param()

    begin {

        # store original error preferences for restoration
        $originalEAP = $ErrorActionPreference
        $originalErrorView = $ErrorView

        # set strict error handling
        $ErrorActionPreference = 'Stop'
        $ErrorView = 'DetailedView'

        Microsoft.PowerShell.Utility\Write-Verbose "Checking current user's security privileges..."
    }


    process {

        try {

            # get the current windows identity with error handling
            $identity = [System.Security.Principal.WindowsIdentity]::GetCurrent()

            # create a new principal object from the identity
            $principal = Microsoft.PowerShell.Utility\New-Object `
                -TypeName System.Security.Principal.WindowsPrincipal `
                -ArgumentList $identity

            # check for administrative or backup operator privileges
            if ($principal.IsInRole(
                    [System.Security.Principal.WindowsBuiltInRole]::Administrator) -or
                $principal.IsInRole(
                    [System.Security.Principal.WindowsBuiltInRole]::BackupOperator)) {

                Microsoft.PowerShell.Utility\Write-Verbose 'User has elevated rights'
                return $true
            }

            Microsoft.PowerShell.Utility\Write-Verbose 'User does not have elevated rights'
            return $false
        }
        catch [System.Security.SecurityException] {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Security violation checking user rights' `
                -Exception $_.Exception `
                -Category SecurityError `
                -ErrorId 'SecurityViolation'
            throw
        }
        catch [System.UnauthorizedAccessException] {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Access denied while verifying user privileges' `
                -Exception $_.Exception `
                -Category PermissionDenied `
                -ErrorId 'AccessDenied'
            throw
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Unexpected error during rights verification' `
                -Exception $_.Exception `
                -Category OperationStopped `
                -ErrorId 'UnexpectedError'
            throw
        }
    }

    end {

        # restore original error handling settings
        $ErrorActionPreference = $originalEAP
        $ErrorView = $originalErrorView
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Enable-Screensaver.ps1
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
Starts the configured Windows screensaver.

.DESCRIPTION
Activates the Windows system screensaver by executing the default screensaver
executable (scrnsave.scr) with the /s switch to start it immediately.

.EXAMPLE
Enable-Screensaver

.NOTES
This function requires the Windows screensaver to be properly configured in the
system settings. The screensaver executable must exist at the default Windows
System32 location.
#>
function Enable-Screensaver {

    [CmdletBinding()]
    param()

    begin {

        Microsoft.PowerShell.Utility\Write-Verbose 'Starting Windows screensaver activation'
    }


    process {

        # execute the windows screensaver executable with the start switch
        & "$ENV:SystemRoot\system32\scrnsave.scr" /s
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Get-ActiveUser.ps1
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
Retrieves a list of unique usernames from currently active system processes.

.DESCRIPTION
Queries all running processes on the system, extracts the associated username for
each process, and returns a deduplicated list of users who have active processes.
This is useful for system administration and security monitoring.

.EXAMPLE
Get-ActiveUser
Returns a list of all unique usernames with active processes.

.EXAMPLE
gusers
Uses the alias to get the same results.
###############################################################################>
function Get-ActiveUser {

    [CmdletBinding()]
    [Alias('gusers')]
    param()

    begin {

        # store original error preferences for restoration
        $originalEAP = $ErrorActionPreference
        $originalErrorView = $ErrorView

        # set strict error handling
        $ErrorActionPreference = 'Stop'
        $ErrorView = 'DetailedView'

        # inform about the start of process enumeration
        Microsoft.PowerShell.Utility\Write-Verbose 'Starting to enumerate all system processes...'
    }


    process {

        try {

            # get all processes with associated usernames (requires admin privileges)
            $processes = Microsoft.PowerShell.Management\Get-Process * `
                -IncludeUserName `
                -ErrorAction Stop

            # extract and deduplicate usernames from process list
            $users = $processes |
                Microsoft.PowerShell.Core\ForEach-Object UserName |
                Microsoft.PowerShell.Utility\Select-Object -Unique

            # return the filtered list
            $users
        }
        catch [System.UnauthorizedAccessException] {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Access denied while retrieving processes. Run with elevated privileges.' `
                -Exception $_.Exception `
                -Category PermissionDenied `
                -ErrorId 'ActiveUserAccessDenied'
            throw
        }
        catch [System.ArgumentException] {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message 'Invalid argument provided when retrieving processes.' `
                -Exception $_.Exception `
                -Category InvalidArgument `
                -ErrorId 'ActiveUserInvalidArgument'
            throw
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error `
                -Message "Unexpected error while retrieving active users: $_" `
                -Exception $_.Exception `
                -Category OperationStopped `
                -ErrorId 'ActiveUserUnexpectedError'
            throw
        }
    }

    end {

        # restore original error handling settings
        $ErrorActionPreference = $originalEAP
        $ErrorView = $originalErrorView

        # output completion status if users were found
        if ($null -ne $users) {

            Microsoft.PowerShell.Utility\Write-Verbose `
                "Process completed. Found $($users.Count) unique active users."
        }
        else {

            Microsoft.PowerShell.Utility\Write-Verbose `
                'Process completed. No active users found or an error occurred.'
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Get-KnownFolderPath.ps1
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
Gets the path of a Windows known folder using the Windows Shell32 API.

.DESCRIPTION
Retrieves the path of a specified Windows known folder using the Shell32 API's
SHGetKnownFolderPath function. This method is more reliable than using
environment variables as it works consistently across different Windows versions
and language settings. Supports all standard Windows known folders like
Documents, Downloads, AppData etc.

.PARAMETER KnownFolder
Specifies the name of the Windows known folder to retrieve. Must be one of the
predefined folder names like 'Documents', 'Downloads', etc. The function will
return the full path to this folder.

.EXAMPLE
Get-KnownFolderPath -KnownFolder 'Documents'
Returns: C:\Users\Username\Documents

.EXAMPLE
folder Downloads
Returns: C:\Users\Username\Downloads using the alias

.EXAMPLE
cd (folder Desktop)
Changes to the Desktop folder using the alias
#>
function Get-KnownFolderPath {

    [CmdletBinding()]
    [Alias('folder')]

    param (
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'The Windows known folder name to get the path for'
        )]
        [ValidateSet('3DObjects', 'AddNewPrograms', 'AdminTools', 'AppUpdates',
            'CDBurning', 'ChangeRemovePrograms', 'CommonAdminTools',
            'CommonOEMLinks', 'CommonPrograms', 'CommonStartMenu',
            'CommonStartup', 'CommonTemplates', 'ComputerFolder',
            'ConflictFolder', 'ConnectionsFolder', 'Contacts',
            'ControlPanelFolder', 'Cookies', 'Desktop', 'Documents', 'Downloads',
            'Favorites', 'Fonts', 'Games', 'GameTasks', 'History',
            'InternetCache', 'InternetFolder', 'Links', 'LocalAppData',
            'LocalAppDataLow', 'LocalizedResourcesDir', 'Music', 'NetHood',
            'NetworkFolder', 'OriginalImages', 'PhotoAlbums', 'Pictures',
            'Playlists', 'PrintersFolder', 'PrintHood', 'Profile',
            'ProgramData', 'ProgramFiles', 'ProgramFilesX64', 'ProgramFilesX86',
            'ProgramFilesCommon', 'ProgramFilesCommonX64',
            'ProgramFilesCommonX86', 'Programs', 'Public', 'PublicDesktop',
            'PublicDocuments', 'PublicDownloads', 'PublicGameTasks',
            'PublicMusic', 'PublicPictures', 'PublicVideos', 'QuickLaunch',
            'Recent', 'RecycleBinFolder', 'ResourceDir', 'RoamingAppData',
            'SampleMusic', 'SamplePictures', 'SamplePlaylists', 'SampleVideos',
            'SavedGames', 'SavedSearches', 'SEARCH_CSC', 'SEARCH_MAPI',
            'SearchHome', 'SendTo', 'SidebarDefaultParts', 'SidebarParts',
            'StartMenu', 'Startup', 'SyncManagerFolder', 'SyncResultsFolder',
            'SyncSetupFolder', 'System', 'SystemX86', 'Templates',
            'TreeProperties', 'UserProfiles', 'UsersFiles', 'Videos',
            'Windows')]
        [string]$KnownFolder
    )

    begin {

        # define known folder guids for windows shell32 api
        $knownFolders = @{
            '3DObjects'             = '31C0DD25-9439-4F12-BF41-7FF4EDA38722';
            'AddNewPrograms'        = 'de61d971-5ebc-4f02-a3a9-6c82895e5c04';
            'AdminTools'            = '724EF170-A42D-4FEF-9F26-B60E846FBA4F';
            'AppUpdates'            = 'a305ce99-f527-492b-8b1a-7e76fa98d6e4';
            'CDBurning'             = '9E52AB10-F80D-49DF-ACB8-4330F5687855';
            'ChangeRemovePrograms'  = 'df7266ac-9274-4867-8d55-3bd661de872d';
            'CommonAdminTools'      = 'D0384E7D-BAC3-4797-8F14-CBA229B392B5';
            'CommonOEMLinks'        = 'C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D';
            'CommonPrograms'        = '0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8';
            'CommonStartMenu'       = 'A4115719-D62E-491D-AA7C-E74B8BE3B067';
            'CommonStartup'         = '82A5EA35-D9CD-47C5-9629-E15D2F714E6E';
            'CommonTemplates'       = 'B94237E7-57AC-4347-9151-B08C6C32D1F7';
            'ComputerFolder'        = '0AC0837C-BBF8-452A-850D-79D08E667CA7';
            'ConflictFolder'        = '4bfefb45-347d-4006-a5be-ac0cb0567192';
            'ConnectionsFolder'     = '6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD';
            'Contacts'              = '56784854-C6CB-462b-8169-88E350ACB882';
            'ControlPanelFolder'    = '82A74AEB-AEB4-465C-A014-D097EE346D63';
            'Cookies'               = '2B0F765D-C0E9-4171-908E-08A611B84FF6';
            'Desktop'               = 'B4BFCC3A-DB2C-424C-B029-7FE99A87C641';
            'Documents'             = 'FDD39AD0-238F-46AF-ADB4-6C85480369C7';
            'Downloads'             = '374DE290-123F-4565-9164-39C4925E467B';
            'Favorites'             = '1777F761-68AD-4D8A-87BD-30B759FA33DD';
            'Fonts'                 = 'FD228CB7-AE11-4AE3-864C-16F3910AB8FE';
            'Games'                 = 'CAC52C1A-B53D-4edc-92D7-6B2E8AC19434';
            'GameTasks'             = '054FAE61-4DD8-4787-80B6-090220C4B700';
            'History'               = 'D9DC8A3B-B784-432E-A781-5A1130A75963';
            'InternetCache'         = '352481E8-33BE-4251-BA85-6007CAEDCF9D';
            'InternetFolder'        = '4D9F7874-4E0C-4904-967B-40B0D20C3E4B';
            'Links'                 = 'bfb9d5e0-c6a9-404c-b2b2-ae6db6af4968';
            'LocalAppData'          = 'F1B32785-6FBA-4FCF-9D55-7B8E7F157091';
            'LocalAppDataLow'       = 'A520A1A4-1780-4FF6-BD18-167343C5AF16';
            'LocalizedResourcesDir' = '2A00375E-224C-49DE-B8D1-440DF7EF3DDC';
            'Music'                 = '4BD8D571-6D19-48D3-BE97-422220080E43';
            'NetHood'               = 'C5ABBF53-E17F-4121-8900-86626FC2C973';
            'NetworkFolder'         = 'D20BEEC4-5CA8-4905-AE3B-BF251EA09B53';
            'OriginalImages'        = '2C36C0AA-5812-4b87-BFD0-4CD0DFB19B39';
            'PhotoAlbums'           = '69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C';
            'Pictures'              = '33E28130-4E1E-4676-835A-98395C3BC3BB';
            'Playlists'             = 'DE92C1C7-837F-4F69-A3BB-86E631204A23';
            'PrintersFolder'        = '76FC4E2D-D6AD-4519-A663-37BD56068185';
            'PrintHood'             = '9274BD8D-CFD1-41C3-B35E-B13F55A758F4';
            'Profile'               = '5E6C858F-0E22-4760-9AFE-EA3317B67173';
            'ProgramData'           = '62AB5D82-FDC1-4DC3-A9DD-070D1D495D97';
            'ProgramFiles'          = '905e63b6-c1bf-494e-b29c-65b732d3d21a';
            'ProgramFilesX64'       = '6D809377-6AF0-444b-8957-A3773F02200E';
            'ProgramFilesX86'       = '7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E';
            'ProgramFilesCommon'    = 'F7F1ED05-9F6D-47A2-AAAE-29D317C6F066';
            'ProgramFilesCommonX64' = '6365D5A7-0F0D-45E5-87F6-0DA56B6A4F7D';
            'ProgramFilesCommonX86' = 'DE974D24-D9C6-4D3E-BF91-F4455120B917';
            'Programs'              = 'A77F5D77-2E2B-44C3-A6A2-ABA601054A51';
            'Public'                = 'DFDF76A2-C82A-4D63-906A-5644AC457385';
            'PublicDesktop'         = 'C4AA340D-F20F-4863-AFEF-F87EF2E6BA25';
            'PublicDocuments'       = 'ED4824AF-DCE4-45A8-81E2-FC7965083634';
            'PublicDownloads'       = '3D644C9B-1FB8-4f30-9B45-F670235F79C0';
            'PublicGameTasks'       = 'DEBF2536-E1A8-4c59-B6A2-414586476AEA';
            'PublicMusic'           = '3214FAB5-9757-4298-BB61-92A9DEAA44FF';
            'PublicPictures'        = 'B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5';
            'PublicVideos'          = '2400183A-6185-49FB-A2D8-4A392A602BA3';
            'QuickLaunch'           = '52a4f021-7b75-48a9-9f6b-4b87a210bc8f';
            'Recent'                = 'AE50C081-EBD2-438A-8655-8A092E34987A';
            'RecycleBinFolder'      = 'B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC';
            'ResourceDir'           = '8AD10C31-2ADB-4296-A8F7-E4701232C972';
            'RoamingAppData'        = '3EB685DB-65F9-4CF6-A03A-E3EF65729F3D';
            'SampleMusic'           = 'B250C668-F57D-4EE1-A63C-290EE7D1AA1F';
            'SamplePictures'        = 'C4900540-2379-4C75-844B-64E6FAF8716B';
            'SamplePlaylists'       = '15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5';
            'SampleVideos'          = '859EAD94-2E85-48AD-A71A-0969CB56A6CD';
            'SavedGames'            = '4C5C32FF-BB9D-43b0-B5B4-2D72E54EAAA4';
            'SavedSearches'         = '7d1d3a04-debb-4115-95cf-2f29da2920da';
            'SEARCH_CSC'            = 'ee32e446-31ca-4aba-814f-a5ebd2fd6d5e';
            'SEARCH_MAPI'           = '98ec0e18-2098-4d44-8644-66979315a281';
            'SearchHome'            = '190337d1-b8ca-4121-a639-6d472d16972a';
            'SendTo'                = '8983036C-27C0-404B-8F08-102D10DCFD74';
            'SidebarDefaultParts'   = '7B396E54-9EC5-4300-BE0A-2482EBAE1A26';
            'SidebarParts'          = 'A75D362E-50FC-4fb7-AC2C-A8BEAA314493';
            'StartMenu'             = '625B53C3-AB48-4EC1-BA1F-A1EF4146FC19';
            'Startup'               = 'B97D20BB-F46A-4C97-BA10-5E3608430854';
            'SyncManagerFolder'     = '43668BF8-C14E-49B2-97C9-747784D784B7';
            'SyncResultsFolder'     = '289a9a43-be44-4057-a41b-587a76d7e7f9';
            'SyncSetupFolder'       = '0F214138-B1D3-4a90-BBA9-27CBC0C5389A';
            'System'                = '1AC14E77-02E7-4E5D-B744-2EB1AE5198B7';
            'SystemX86'             = 'D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27';
            'Templates'             = 'A63293E8-664E-48DB-A079-DF759E0509F7';
            'TreeProperties'        = '5b3749ad-b49f-49c1-83eb-15370fbd4882';
            'UserProfiles'          = '0762D272-C50A-4BB0-A382-697DCD729B80';
            'UsersFiles'            = 'f3ce0f7c-4901-4acc-8648-d5d44b04ef8f';
            'Videos'                = '18989B1D-99B5-455B-841C-AB7C74E4DDFC';
            'Windows'               = 'F38BF404-1D43-42F2-9305-67DE0B28FC23';
        }

        # check if the windows api type is already defined in the current session
        $type = ([System.Management.Automation.PSTypeName]'Win32.Shell32API').Type

        if (-not $type) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Defining Windows Shell32 API function'
            )

            # define the p/invoke signature for shgetknownfolderpath
            $signature = @'
[DllImport("shell32.dll")]
public extern static int SHGetKnownFolderPath(
    ref Guid folderId,
    uint flags,
    IntPtr token,
    [MarshalAs(UnmanagedType.LPWStr)] out string pszPath);
'@
            # add the shell32 api function definition as a new .net type
            $type = Microsoft.PowerShell.Utility\Add-Type `
                -MemberDefinition $signature `
                -Namespace 'Win32' `
                -Name 'Shell32API' `
                -PassThru
        }
    }

    process {

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Getting path for known folder: $KnownFolder"
        )

        # convert the guid string to a guid object
        $folderGuid = Microsoft.PowerShell.Utility\New-Object Guid `
            $KnownFolders[$KnownFolder]

        # create a reference variable to store the output path
        [string]$path = $null

        # call the windows api to retrieve the folder path
        $code = $type::SHGetKnownFolderPath([ref]$folderGuid, 0, 0, [ref]$path)

        # check if the api call was successful and return the path
        if ($code -eq 0) {

            return $path
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Failed to get path for: $KnownFolder (code: $code)"
        )

        return $null
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Get-WindowPosition.ps1
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

# Part of PowerShell module : GenXdev.Windows
# Original cmdlet filename  : Get-WindowPosition.ps1
# Original author           : Ren� Vaessen / GenXdev
# Version                   : 3.26.2026
# Copyright (c)  Ren� Vaessen / GenXdev
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#     http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
<#
.SYNOPSIS
Gets the position and state information of windows.

.DESCRIPTION
Retrieves detailed information about window positioning, size, monitor placement,
docking state, and focus status for specified processes or window handles.

.PARAMETER ProcessName
The process name of the window to get position information for

.PARAMETER Process
Process or processes whose windows need position information

.PARAMETER WindowHelper
Window helper object for direct window manipulation

.EXAMPLE
Get-WindowPosition -ProcessName notepad
Gets position information for all notepad windows

.EXAMPLE
Get-Process notepad | Get-WindowPosition
Gets position information for notepad processes via pipeline

.EXAMPLE
Get-Window -ProcessName notepad | Get-WindowPosition
Gets position information using window helper objects
#>
function Get-WindowPosition {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    [Alias('gwp')]
    param(
        [parameter(
            ParameterSetName = 'ProcessName',
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The process name of the window to get position for',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            ValueFromRemainingArguments = $false
        )]
        [SupportsWildcards()]
        [Alias('Name')]
        [string] $ProcessName,
        [parameter(
            ParameterSetName = 'Process',
            Mandatory = $false,
            HelpMessage = 'The process of the window to get position for',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            ValueFromRemainingArguments = $false
        )]
        [ValidateNotNull()]
        [System.Diagnostics.Process] $Process,
        [parameter(
            ParameterSetName = 'WindowHelper',
            Mandatory = $false,
            HelpMessage = 'Get-Window helper object for direct window manipulation',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            ValueFromRemainingArguments = $false
        )]
        [ValidateNotNull()]
        [GenXdev.Helpers.WindowObj[]] $WindowHelper
    )

    begin {

        # retrieve all available monitors from the system
        $allScreens = @([WpfScreenHelper.Screen]::AllScreens |
                Microsoft.PowerShell.Core\ForEach-Object { $PSItem })

        # log the total number of detected monitors for debugging
        Microsoft.PowerShell.Utility\Write-Verbose ("Found $($allScreens.Count) " +
            "monitors available for window positioning")

        # enumerate and log details of each available monitor
        for ($i = 0; $i -lt $allScreens.Count; $i++) {

            # get current monitor information for logging
            $screenInfo = $allScreens[$i]

            # log monitor specifications including size, position and device name
            Microsoft.PowerShell.Utility\Write-Verbose ("Monitor ${i}: " +
                "$($screenInfo.WorkingArea.Width)x$($screenInfo.WorkingArea.Height) " +
                "at ($($screenInfo.WorkingArea.X),$($screenInfo.WorkingArea.Y)) " +
                "Device: $($screenInfo.DeviceName)")
        }

        # resolve target process based on the parameter set specified by the user
        switch ($PSCmdlet.ParameterSetName) {
            'ProcessName' {
                Microsoft.PowerShell.Utility\Write-Verbose ('ParameterSetName: ProcessName')

                # search for processes matching the specified name with active windows
                $foundProcess = Microsoft.PowerShell.Management\Get-Process `
                    -Name $ProcessName `
                    -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Core\Where-Object `
                        -Property 'MainWindowHandle' `
                        -NE 0 |
                    Microsoft.PowerShell.Utility\Sort-Object `
                        -Property 'StartTime' `
                        -Descending |
                    Microsoft.PowerShell.Utility\Select-Object `
                        -First 1

                # validate that a matching process with a window was found
                if ($null -eq $foundProcess) {
                    Microsoft.PowerShell.Utility\Write-Verbose ("No process found with name '$ProcessName'")
                    Microsoft.PowerShell.Utility\Write-Error ('No process found with ' + "name '$ProcessName'")
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Verbose ("Process found: $($foundProcess.ProcessName) with ID $($foundProcess.Id)")
                    $Process = $foundProcess
                    Microsoft.PowerShell.Utility\Write-Verbose ('Found process: ' + "$($Process.ProcessName) with ID $($Process.Id)")
                }
                break;
            }
            'Process' {
                Microsoft.PowerShell.Utility\Write-Verbose ('ParameterSetName: Process')
                break;
            }
            'WindowHelper' {
                Microsoft.PowerShell.Utility\Write-Verbose ('ParameterSetName: WindowHelper')
                break;
            }
            default {
                Microsoft.PowerShell.Utility\Write-Verbose ('ParameterSetName: default (using PowerShell main window process)')
                # default to powershell main window process
                $Process = (GenXdev\Get-PowershellMainWindowProcess)
                break;
            }
        }
    }

    process {

        # begin processing windows that require position information
        if ($null -ne $Process) {

            # log which type of processing is being performed
            Microsoft.PowerShell.Utility\Write-Verbose ("Processing window for process: $($Process.ProcessName) (Id: $($Process.Id))")

            # get window object using either provided helper or process main window
            $window = $WindowHelper ? $WindowHelper : (GenXdev\Get-Window -ProcessId ($Process.Id))

            # validate window object detection and log detailed window information
            if ($null -ne $window) {

                # log comprehensive window details for debugging and troubleshooting
                Microsoft.PowerShell.Utility\Write-Verbose ("`r`n-----------`r`nWindow object found:`r`n" +
                    "Title: $($window.Title)`r`n" +
                    "Handle: $($window.Handle)`r`n" +
                    "Position: $($window.Position().X),$($window.Position().Y)`r`n" +
                    "Size: $($window.Size().Width)x$($window.Size().Height)`r`n-----------")

                # get window position and size
                $position = $window.Position()
                $size = $window.Size()

                # get monitor information
                $monitorIndex = $window.GetCurrentMonitor()
                $monitor = $monitorIndex + 1  # 1-based

                # get current screen
                $currentScreen = $allScreens[$monitorIndex]
                if ($null -eq $currentScreen) {
                    $currentScreen = $allScreens[0]  # fallback to primary
                }

                # detect docking state
                $dockedLeft = $false
                $dockedTop = $false
                $dockedRight = $false
                $dockedBottom = $false
                $dockedLeftTop = $false
                $dockedTopRight = $false
                $dockedBottomLeft = $false
                $dockedBottomRight = $false

                # calculate relative position within monitor's work area
                $workArea = $currentScreen.WorkingArea
                $relativeX = ($position.X - $workArea.X) / $workArea.Width
                $relativeY = ($position.Y - $workArea.Y) / $workArea.Height
                $relativeWidth = $size.Width / $workArea.Width
                $relativeHeight = $size.Height / $workArea.Height

                $tolerance = 0.1  # 10% tolerance for position detection
                $sizeTolerance = 0.4  # 40% minimum size to consider positioned

                # detect docking based on relative position and size
                if ($relativeWidth -ge $sizeTolerance) {
                    if ($relativeX -le $tolerance) {
                        $dockedLeft = $true
                    } elseif (($relativeX + $relativeWidth) -ge (1.0 - $tolerance)) {
                        $dockedRight = $true
                    }
                }
                if ($relativeHeight -ge $sizeTolerance) {
                    if ($relativeY -le $tolerance) {
                        $dockedTop = $true
                    } elseif (($relativeY + $relativeHeight) -ge (1.0 - $tolerance)) {
                        $dockedBottom = $true
                    }
                }

                # detect corner docking
                if ($dockedLeft -and $dockedTop) {
                    $dockedLeftTop = $true
                }
                if ($dockedTop -and $dockedRight) {
                    $dockedTopRight = $true
                }
                if ($dockedBottom -and $dockedLeft) {
                    $dockedBottomLeft = $true
                }
                if ($dockedBottom -and $dockedRight) {
                    $dockedBottomRight = $true
                }

                # get window state
                $isMinimized = $window.IsMinimized()
                $isMaximized = $window.IsMaximized()
                $isHidden = -not $window.IsVisible()
                $isRestored = -not $isMinimized -and -not $isMaximized

                # get focus information
                $foregroundWindow = [GenXdev.Helpers.WindowObj]::GetFocusedWindow()
                $hasFocus = $false
                $isInForeground = $false
                if ($null -ne $foregroundWindow) {
                    $hasFocus = ($window.Handle -eq $foregroundWindow.Handle)
                    $isInForeground = $hasFocus
                }

                # create result hashtable
                $result = @{
                    Left             = $position.X
                    Top              = $position.Y
                    Width            = $size.Width
                    Height           = $size.Height
                    MonitorIndex     = $monitorIndex
                    Monitor          = $monitor
                    DockedLeft       = $dockedLeft
                    DockedTop        = $dockedTop
                    DockedBottom     = $dockedBottom
                    DockedRight      = $dockedRight
                    DockedLeftTop    = $dockedLeftTop
                    DockedTopRight   = $dockedTopRight
                    DockedBottomLeft = $dockedBottomLeft
                    DockedBottomRight= $dockedBottomRight
                    IsMinimized      = $isMinimized
                    IsMaximized      = $isMaximized
                    IsHidden         = $isHidden
                    IsRestored       = $isRestored
                    WindowHandle     = $window.Handle
                    Process          = $Process
                    HasFocus         = $hasFocus
                    IsInForeground   = $isInForeground
                }

                # return the result
                $result

            } else {
                Microsoft.PowerShell.Utility\Write-Verbose ("No window object available for process $($Process.ProcessName)")
            }
        } else {
            Microsoft.PowerShell.Utility\Write-Verbose ('No process object available')
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Initialize-ScheduledTaskScripts.ps1
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
Creates scheduled tasks that run PowerShell scripts at specified intervals.

.DESCRIPTION
Creates and configures scheduled tasks that execute PowerShell scripts at various
intervals including:
- System startup
- User logon
- Every hour of specific days (e.g., Monday at 13:00)
- Daily at specific hours (e.g., every day at 15:00)
Each task runs with elevated privileges under the current user's context.

.PARAMETER FilePath
The directory path where the PowerShell scripts for each task will be created.
If not specified, scripts are created in a 'ScheduledTasks' folder in the parent
directory.

.PARAMETER Prefix
A prefix string added to all task names for grouping and identification.
Default is "PS".

.PARAMETER WhatIf
Shows what would happen if the cmdlet runs. The cmdlet is not run.

.PARAMETER Confirm
Prompts you for confirmation before running the cmdlet.

.EXAMPLE
Initialize-ScheduledTaskScripts -FilePath "C:\Tasks" -Prefix "MyTasks"

.EXAMPLE
Initialize-ScheduledTaskScripts
#>
function Initialize-ScheduledTaskScripts {

    [CmdletBinding(SupportsShouldProcess = $true)]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    param(
        [parameter(
            Position = 0,
            Mandatory = $false,
            HelpMessage = 'The directory path where task scripts will be created'
        )]
        [string] $FilePath = '',
        [parameter(
            Position = 1,
            Mandatory = $false,
            HelpMessage = 'Prefix for the scheduled task names'
        )]
        [string] $Prefix = 'PS'
    )

    begin {
        # array of weekdays for creating weekly scheduled tasks
        $daysOfWeek = @(
            'Sunday', 'Monday', 'Tuesday', 'Wednesday',
            'Thursday', 'Friday', 'Saturday'
        )

        # get current UTC time for calculating task start times
        $now = [DateTime]::UtcNow

        # get current user credentials for task execution context
        $credential = Microsoft.PowerShell.Security\Get-Credential -UserName `
        ([System.Security.Principal.WindowsIdentity]::GetCurrent().Name)

        # set default path if none provided and ensure directory exists
        if ([string]::IsNullOrWhiteSpace($FilePath)) {
            $FilePath = GenXdev\Expand-Path `
                -FilePath "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\..\ScheduledTasks\" `
                -CreateDirectory
        }
        else {
            $FilePath = GenXdev\Expand-Path -FilePath $FilePath
        }

        # set global workspace for task execution context
        $WorkspaceFolder = GenXdev\Expand-Path "$($MyInvocation.MyCommand.Module.ModuleBase)\..\..\..\"

        Microsoft.PowerShell.Utility\Write-Verbose "Task scripts will be created in: $FilePath"
        Microsoft.PowerShell.Utility\Write-Verbose "Tasks will be prefixed with: $Prefix"
    }


    process {

        <#
        .SYNOPSIS
        Creates a new scheduled task with specified parameters.

        .DESCRIPTION
        Helper function that creates a PowerShell script file and corresponding
        scheduled task with specified trigger conditions.

        .PARAMETER TaskName
        Name of the scheduled task to create.

        .PARAMETER Description
        Description of what the task does.

        .PARAMETER Trigger
        Scheduled task trigger object defining when the task runs.
        #>
        function New-TaskDefinition {
            [CmdletBinding(SupportsShouldProcess = $true)]
            param([string]$TaskName, [string]$Description, $Trigger)

            # create full path for the task's PowerShell script
            $scriptPath = GenXdev\Expand-Path -CreateDirectory `
                -FilePath "$FilePath\$TaskName.ps1"

            # create script file with logging if it doesn't exist
            if (-not (Microsoft.PowerShell.Management\Test-Path -LiteralPath $scriptPath -ErrorAction SilentlyContinue)) {
                if ($PSCmdlet.ShouldProcess($scriptPath, 'Create task script file')) {
                    $scriptContent = @"
$Description

$($Description | Microsoft.PowerShell.Utility\ConvertTo-Json) | Out-File '$WorkspaceFolder\scheduledtasks.log.txt' -Append

"@
                    $null = Microsoft.PowerShell.Management\Set-Content -LiteralPath $scriptPath -Value $scriptContent
                }
            }

            # create task only if it doesn't already exist
            if (-not (ScheduledTasks\Get-ScheduledTask -TaskName $TaskName `
                        -TaskPath "\$Prefix\" -ErrorAction SilentlyContinue)) {

                Microsoft.PowerShell.Utility\Write-Verbose "Preparing scheduled task: \$Prefix\$TaskName"
                Microsoft.PowerShell.Utility\Write-Verbose "Task description: $Description"

                # configure the PowerShell execution command
                $actionArguments = "-ExecutionPolicy Bypass -NoLogo -Command & `
                    `"'$scriptPath'`""
                $action = ScheduledTasks\New-ScheduledTaskAction `
                    -Execute ((Microsoft.PowerShell.Core\Get-Command 'pwsh.exe').source) `
                    -Argument $actionArguments `
                    -Id "Exec $TaskName".Replace(' ', '_') `
                    -WorkingDirectory $WorkspaceFolder

                # configure task execution settings
                $settings = ScheduledTasks\New-ScheduledTaskSettingsSet `
                    -AllowStartIfOnBatteries `
                    -DontStopIfGoingOnBatteries `
                    -Hidden `
                    -StartWhenAvailable
                $settings.AllowHardTerminate = $true
                $settings.ExecutionTimeLimit = 'PT1H'
                $settings.Volatile = $false

                # set task expiration 99 years in future
                $trigger.EndBoundary = $now.AddYears(99).ToString(
                    "yyyy-MM-dd'T'HH:mm:ss")

                # convert credential password for task registration
                $ptr = [Runtime.InteropServices.Marshal]::SecureStringToGlobalAllocUnicode(
                    $credential.Password)
                $plainPassword = [Runtime.InteropServices.Marshal]::PtrToStringUni($ptr)
                [Runtime.InteropServices.Marshal]::ZeroFreeGlobalAllocUnicode($ptr)

                # register the task with configured parameters
                $taskParams = @{
                    TaskName    = $TaskName
                    User        = $credential.UserName
                    Password    = $plainPassword
                    RunLevel    = 'Highest'
                    Action      = $action
                    Description = $Description
                    Settings    = $settings
                    Trigger     = $trigger
                    TaskPath    = $Prefix
                    Force       = $true
                }
                if ($PSCmdlet.ShouldProcess("$Prefix\$TaskName", 'Create scheduled task')) {
                    ScheduledTasks\Register-ScheduledTask @taskParams
                }
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose "Task already exists: \$Prefix\$TaskName"
            }
        }

        # create system startup triggered task
        New-TaskDefinition `
            -TaskName "${Prefix}_at_startup" `
            -Description 'Scheduled-task executed at startup' `
            -Trigger (ScheduledTasks\New-ScheduledTaskTrigger -AtStartup)

        # create user logon triggered task
        New-TaskDefinition `
            -TaskName "${Prefix}_at_logon" `
            -Description 'Scheduled-task executed at logon' `
            -Trigger (ScheduledTasks\New-ScheduledTaskTrigger -AtLogOn)

        # create weekly tasks for each day and hour combination
        foreach ($day in $daysOfWeek) {
            for ($hour = 0; $hour -lt 24; $hour++) {
                $taskName = "$Prefix_$($day.ToLower())_$($hour.ToString('D2'))00h_utc"
                $description = "Scheduled-task for $day at $($hour.ToString('D2')):00h"

                # calculate next occurrence of this day and hour
                $dayDiff = ([int]$now.DayOfWeek) - $daysOfWeek.IndexOf($day)
                $at = $now.Date.AddDays($dayDiff).AddHours($hour)
                if ($at -lt $now) { $at = $at.AddDays(7) }

                New-TaskDefinition `
                    -TaskName $taskName `
                    -Description $description `
                    -Trigger (ScheduledTasks\New-ScheduledTaskTrigger -Weekly -DaysOfWeek $day -At $at)
            }
        }

        # create daily tasks for each hour
        for ($hour = 0; $hour -lt 24; $hour++) {
            $taskName = "$Prefix_daily_$($hour.ToString('D2'))00h_utc"
            $description = "Scheduled-task executed Daily at $($hour.ToString('D2')):00h"

            # calculate next occurrence of this hour
            $at = $now.Date.AddHours($hour)
            if ($at -lt $now) { $at = $at.AddDays(1) }

            New-TaskDefinition `
                -TaskName $taskName `
                -Description $description `
                -Trigger (ScheduledTasks\New-ScheduledTaskTrigger -Daily -At $at)
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Invoke-WindowsUpdate.ps1
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
Checks if Windows is up to date and optionally installs available updates.

.DESCRIPTION
This function checks for Windows updates, winget package updates, and PowerShell
module updates. It can display available updates or automatically install them.
The function requires administrative privileges to install Windows updates and
can optionally reboot the system if updates require a restart.

.PARAMETER Install
Automatically install available Windows updates, winget packages, and PowerShell
modules instead of just checking for their availability.

.PARAMETER AutoReboot
Automatically reboot the system if installed updates require a restart. This
parameter only has effect when Install is also specified.

.PARAMETER Criteria
Custom Windows Update search criteria. Defaults to finding all non-hidden,
uninstalled, important updates (excluding optional updates).

.PARAMETER IncludeDrivers
Include drivers in update search. When specified, driver updates will also be
considered in the search results.

.PARAMETER ProcessOptionalUpdates
Include optional updates in the search results that would normally be excluded.
When specified together with -Install, the user will be prompted for each
optional update individually to decide whether to install it. Without -Install,
optional updates are displayed separately from important updates.

.PARAMETER GroupByCategory
Group and color output by update category. This provides a more organized view
of available updates categorized by their type.

.PARAMETER NoBanner
Disable banner and status output. When specified, reduces verbose output and
displays only essential information.

.PARAMETER NoRebootCheck
Skip reboot requirement check and reporting. When specified, the function will
not check if a reboot is needed after installing updates.

.EXAMPLE
Invoke-WindowsUpdate

Checks for available Windows and winget updates without installing them.

.EXAMPLE
Invoke-WindowsUpdate -Install

Automatically installs all available Windows and winget updates.

.EXAMPLE
updatewindows -Install -AutoReboot

Installs all updates and reboots automatically if required using the alias.

.EXAMPLE
Invoke-WindowsUpdate -GroupByCategory

Displays available updates grouped by category for better organization.

.EXAMPLE
Invoke-WindowsUpdate -Install -ProcessOptionalUpdates

Installs all important updates automatically and prompts for each optional
update individually, allowing selective installation of optional updates.

.EXAMPLE
Invoke-WindowsUpdate -IncludeDrivers -Criteria "IsInstalled=0"

Checks for updates including drivers with custom search criteria.
#>
function Invoke-WindowsUpdate {

    [CmdletBinding(SupportsShouldProcess)]
    [Alias("updatewindows")]

    param(
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Automatically install available Windows updates"
        )]
        [switch] $Install,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Automatically reboot if updates require a restart"
        )]
        [switch] $AutoReboot,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Custom Windows Update search criteria"
        )]
        [string] $Criteria = "IsInstalled=0 and IsHidden=0 and AutoSelectOnWebSites=1",
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include drivers in update search"
        )]
        [switch] $IncludeDrivers,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Include optional updates and prompt to install each one"
        )]
        [switch] $ProcessOptionalUpdates,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Group and color output by update category"
        )]
        [switch] $GroupByCategory,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Disable banner/status output"
        )]
        [switch] $NoBanner,
        [Parameter(
            Mandatory = $false,
            HelpMessage = "Skip reboot requirement check/reporting"
        )]
        [switch] $NoRebootCheck
    )

    begin {

        Microsoft.PowerShell.Core\Import-Module Microsoft.WinGet.Client

        # initialize tracking variable for winget update availability
        [bool] $script:wingetHasUpdates = $false
        [bool] $script:hasAdminRights = $false
        [bool] $script:moduleUpdatesAvailable = $false
        $script:updateSession = $null
        $script:updateSearcher = $null

        # verify administrative privileges are available for windows updates
        $script:hasAdminRights = GenXdev\CurrentUserHasElevatedRights

        if (-not $script:hasAdminRights) {

            Microsoft.PowerShell.Utility\Write-Error (
                "This cmdlet requires administrative privileges.")
        }
        else {

            # initialize com objects for windows update operations
            try {

                # create main session object for update operations
                $script:updateSession = Microsoft.PowerShell.Utility\New-Object `
                    -ComObject Microsoft.Update.Session

                # create searcher object to find available updates
                $script:updateSearcher = $script:updateSession.CreateUpdateSearcher()
            }
            catch {

                Microsoft.PowerShell.Utility\Write-Error (
                    "Failed to initialize Windows Update session: ${_}")

                $script:hasAdminRights = $false
            }
        }

        # process winget updates if auto-install is requested
        if ($Install) {

            try {

                if (-not $NoBanner) {
                    Microsoft.PowerShell.Utility\Write-Progress -Activity "Checking for Updates" -Status "Checking WinGet packages..." -PercentComplete 20
                }

                # get list of packages with updates available
                $packagesWithUpdates = Microsoft.WinGet.Client\Get-WinGetPackage |
                    Microsoft.PowerShell.Core\Where-Object { $_.IsUpdateAvailable }

                if ($packagesWithUpdates.Count -gt 0) {

                    # request consent before updating winget packages
                    $wingetUpdateConsent = GenXdev\Confirm-InstallationConsent `
                        -ApplicationName "WinGet Package Updates" `
                        -Source "WinGet" `
                        -Description "Update existing third-party software packages managed by WinGet package manager" `
                        -Publisher "Various Publishers"

                    if (-not $wingetUpdateConsent) {
                        Microsoft.PowerShell.Utility\Write-Warning (
                            "WinGet package updates cancelled - installation consent denied")
                        $script:wingetHasUpdates = $packagesWithUpdates.Count -gt 0
                        return
                    }

                    # confirm winget update installation with user
                    if ($PSCmdlet.ShouldProcess("$($packagesWithUpdates.Count) available winget packages", "Update")) {

                        if (-not $NoBanner) {
                            Microsoft.PowerShell.Utility\Write-Host (
                                "Updating WinGet Packages:") -ForegroundColor Cyan
                            Microsoft.PowerShell.Utility\Write-Host (
                                "=========================") -ForegroundColor Cyan
                        }

                        $successCount = 0
                        $errorCount = 0
                        $updateResults = @()
                        $totalPackages = $packagesWithUpdates.Count
                        $currentPackage = 0

                        # update each package that has updates available
                        foreach ($package in $packagesWithUpdates) {

                            try {

                                $currentPackage++
                                $percentComplete = [math]::Round(($currentPackage / $totalPackages) * 100)

                                if (-not $NoBanner) {
                                    Microsoft.PowerShell.Utility\Write-Progress -Activity "Installing WinGet Updates" `
                                        -Status "Updating $($package.Name) ($currentPackage of $totalPackages)" `
                                        -PercentComplete $percentComplete

                                    Microsoft.PowerShell.Utility\Write-Host (
                                        "Updating: $($package.Name)") -ForegroundColor Yellow
                                }

                                $updateResult = Microsoft.WinGet.Client\Update-WinGetPackage -Id $package.Id -Mode Silent

                                if ($updateResult.Status -eq 'Ok') {
                                    $successCount++
                                    if (-not $NoBanner) {
                                        Microsoft.PowerShell.Utility\Write-Host (
                                            "  ✓ $($package.Name) updated successfully") -ForegroundColor Green
                                    }
                                } else {
                                    $errorCount++
                                    Microsoft.PowerShell.Utility\Write-Warning (
                                        "Failed to update $($package.Name): $($updateResult.Status)")
                                }

                                $updateResults += $updateResult
                            }
                            catch {

                                $errorCount++
                                Microsoft.PowerShell.Utility\Write-Warning (
                                    "Failed to update package $($package.Name): ${_}")
                            }
                        }

                        if (-not $NoBanner) {
                            Microsoft.PowerShell.Utility\Write-Progress -Activity "Installing WinGet Updates" -Completed
                            Microsoft.PowerShell.Utility\Write-Host ""
                            Microsoft.PowerShell.Utility\Write-Host (
                                "WinGet Update Summary: $successCount successful, $errorCount failed") `
                                -ForegroundColor $(if ($errorCount -eq 0) { 'Green' } else { 'Yellow' })
                            Microsoft.PowerShell.Utility\Write-Host ""
                        }
                    }
                }

                # check for remaining winget updates after installation
                $remainingUpdates = Microsoft.WinGet.Client\Get-WinGetPackage |
                    Microsoft.PowerShell.Core\Where-Object { $_.IsUpdateAvailable }

                $script:wingetHasUpdates = $remainingUpdates.Count -gt 0
            }
            catch {

                # assume no updates if winget check fails
                $script:wingetHasUpdates = $false

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Failed to check winget updates: ${_}")
            }
        }
        else {

            try {

                if (-not $NoBanner) {
                    Microsoft.PowerShell.Utility\Write-Progress -Activity "Checking for Updates" -Status "Checking WinGet packages..." -PercentComplete 20
                }

                # get list of packages with updates available
                $wingetUpdates = Microsoft.WinGet.Client\Get-WinGetPackage |
                    Microsoft.PowerShell.Core\Where-Object { $_.IsUpdateAvailable }

                # determine if winget updates are available
                $script:wingetHasUpdates = $wingetUpdates.Count -gt 0

                # display winget updates if found
                if ($script:wingetHasUpdates) {

                    if (-not $NoBanner) {
                        Microsoft.PowerShell.Utility\Write-Host (
                            "Available Winget Updates:") -ForegroundColor Yellow

                        Microsoft.PowerShell.Utility\Write-Host (
                            "=========================") -ForegroundColor Yellow

                        # display winget updates in formatted table
                        $wingetUpdates | Microsoft.PowerShell.Utility\Format-Table `
                            Name, Id, InstalledVersion, @{
                                Label = 'Available'
                                Expression = { $_.AvailableVersions[0] }
                            }, Source -AutoSize |
                            Microsoft.PowerShell.Utility\Out-String |
                            Microsoft.PowerShell.Core\ForEach-Object {
                                Microsoft.PowerShell.Utility\Write-Host $_.TrimEnd() `
                                    -ForegroundColor White
                            }

                        Microsoft.PowerShell.Utility\Write-Host ""
                    }
                    else {
                        # When NoBanner is set, just output basic info without formatting
                        $wingetUpdates | Microsoft.PowerShell.Utility\ForEach-Object {
                            Microsoft.PowerShell.Utility\Write-Output "WinGet Update Available: $($_.Name) ($($_.InstalledVersion) -> $($_.AvailableVersions[0]))"
                        }
                    }
                }
            }
            catch {

                # assume no updates if winget check fails
                $script:wingetHasUpdates = $false

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Failed to check winget updates: ${_}")
            }
        }

        # check for outdated PowerShell modules
        try {

            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Progress -Activity "Checking for Updates" -Status "Checking PowerShell modules..." -PercentComplete 60
            }

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Checking for outdated PowerShell modules...")

            # get list of installed modules that have updates available
            $installedModules = PowerShellGet\Get-InstalledModule -ErrorAction SilentlyContinue

            if (-not $installedModules) {
                Microsoft.PowerShell.Utility\Write-Verbose "No installed modules found or Get-InstalledModule failed"
                $script:moduleUpdatesAvailable = $false
            }
            else {
                Microsoft.PowerShell.Utility\Write-Verbose "Found $($installedModules.Count) installed modules"

                $outdatedModules = $installedModules | Microsoft.PowerShell.Core\ForEach-Object {
                    $installedModule = $_
                    Microsoft.PowerShell.Utility\Write-Verbose "Checking module: $($installedModule.Name) version $($installedModule.Version)"

                    try {
                        $latestVersion = PowerShellGet\Find-Module -Name $installedModule.Name -ErrorAction SilentlyContinue |
                            Microsoft.PowerShell.Utility\Select-Object -First 1

                        if ($latestVersion) {
                            Microsoft.PowerShell.Utility\Write-Verbose "Latest version for $($installedModule.Name): $($latestVersion.Version)"

                            if ([version]$latestVersion.Version -gt [version]$installedModule.Version) {
                                Microsoft.PowerShell.Utility\Write-Verbose "Update available for $($installedModule.Name): $($installedModule.Version) -> $($latestVersion.Version)"
                                [PSCustomObject]@{
                                    Name = $installedModule.Name
                                    InstalledVersion = $installedModule.Version
                                    AvailableVersion = $latestVersion.Version
                                    Repository = $latestVersion.Repository
                                }
                            }
                        }
                        else {
                            Microsoft.PowerShell.Utility\Write-Verbose "No online version found for $($installedModule.Name)"
                        }
                    }
                    catch {
                        Microsoft.PowerShell.Utility\Write-Verbose "Error checking module $($installedModule.Name): $_"
                    }
                }

                # set tracking variable for module updates
                $script:moduleUpdatesAvailable = $outdatedModules.Count -gt 0
                Microsoft.PowerShell.Utility\Write-Verbose "Found $($outdatedModules.Count) modules with updates available"
            }

            # display outdated modules if found and not installing
            if ($script:moduleUpdatesAvailable -and -not $Install) {

                if (-not $NoBanner) {
                    Microsoft.PowerShell.Utility\Write-Host (
                        "Available PowerShell Module Updates:") -ForegroundColor Cyan

                    Microsoft.PowerShell.Utility\Write-Host (
                        "====================================") -ForegroundColor Cyan

                    # display module updates in formatted table
                    $outdatedModules | Microsoft.PowerShell.Utility\Format-Table `
                        Name, InstalledVersion, AvailableVersion, Repository -AutoSize |
                        Microsoft.PowerShell.Utility\Out-String |
                        Microsoft.PowerShell.Core\ForEach-Object {
                            Microsoft.PowerShell.Utility\Write-Host $_.TrimEnd() `
                                -ForegroundColor White
                        }

                    Microsoft.PowerShell.Utility\Write-Host ""
                }
                else {
                    # When NoBanner is set, just output basic info without formatting
                    $outdatedModules | Microsoft.PowerShell.Utility\ForEach-Object {
                        Microsoft.PowerShell.Utility\Write-Output "PowerShell Module Update Available: $($_.Name) ($($_.InstalledVersion) -> $($_.AvailableVersion))"
                    }
                }
            }
            elseif (-not $script:moduleUpdatesAvailable) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "All installed PowerShell modules are up to date.")
            }
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Failed to check PowerShell module updates: ${_}")

            $script:moduleUpdatesAvailable = $false
        }
    }

    process {

        if ($Install) {

            # only prompt for PowerShell module updates if any are available
            if ($script:moduleUpdatesAvailable) {

            # request consent before updating PowerShell modules
            $moduleUpdateConsent = GenXdev\Confirm-InstallationConsent `
                -ApplicationName "PowerShell Module Updates" `
                -Source "PowerShell Gallery" `
                -Description "Update existing PowerShell modules from the PowerShell Gallery repository" `
                -Publisher "Various Publishers"

            if (-not $moduleUpdateConsent) {
                Microsoft.PowerShell.Utility\Write-Warning (
                    "PowerShell module updates cancelled - installation consent denied")
                # Continue with Windows updates even if module updates are declined
            }
            else {
                if ($PSCmdlet.ShouldProcess("PowerShell modules", "Update")) {

                if (-not $NoBanner) {
                    Microsoft.PowerShell.Utility\Write-Progress -Activity "Installing Updates" -Status "Updating PowerShell modules..." -PercentComplete 10
                    Microsoft.PowerShell.Utility\Write-Host (
                        "Updating PowerShell Modules:") -ForegroundColor Yellow
                    Microsoft.PowerShell.Utility\Write-Host (
                        "=============================") -ForegroundColor Yellow
                }

                $oldPolicy = (PowerShellGet\Get-PSRepository -Name 'PSGallery').InstallationPolicy
                try {
                    if (-not (PowerShellGet\Get-PSRepository -Name 'PSGallery').InstallationPolicy -eq 'Trusted') {
                        PowerShellGet\Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted -Confirm:$false
                    }

                    if (-not $NoBanner) {
                        Microsoft.PowerShell.Utility\Write-Host (
                            "Running Update-Module -AcceptLicense...") -ForegroundColor Yellow
                    }

                    PowerShellGet\Update-Module -AcceptLicense -ErrorAction Continue -Confirm:$false

                    if (-not $NoBanner) {
                        Microsoft.PowerShell.Utility\Write-Host (
                            "✓ PowerShell modules update completed") -ForegroundColor Green
                        Microsoft.PowerShell.Utility\Write-Host ""
                    }
                }
                finally {
                    if ($oldPolicy -ne (PowerShellGet\Get-PSRepository -Name 'PSGallery').InstallationPolicy) {

                        PowerShellGet\Set-PSRepository -Name 'PSGallery' -InstallationPolicy $oldPolicy -Confirm:$false
                    }
                }
                }
            }
            }
        }

        # if admin rights are not available, return result based on winget status only
        if (-not $script:hasAdminRights) {
            return
        }

        # verify COM objects were initialized successfully
        if ($null -eq $script:updateSession -or $null -eq $script:updateSearcher) {
            Microsoft.PowerShell.Utility\Write-Error (
                "Windows Update session was not properly initialized.")
            return
        }

        try {

            # adjust criteria for drivers if requested
            $searchCriteria = $Criteria

            # when processing optional updates with default criteria,
            # remove AutoSelectOnWebSites filter to include optional updates
            if ($ProcessOptionalUpdates -and -not $PSBoundParameters.ContainsKey('Criteria')) {
                $searchCriteria = "IsInstalled=0 and IsHidden=0"
            }

            if ($IncludeDrivers) {

                if ($searchCriteria -notmatch "Type='Driver'" -and $searchCriteria -notmatch "Type!='Driver'") {

                    $searchCriteria += " AND DeploymentAction=*"
                }
            }

            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Progress -Activity "Checking for Updates" -Status "Searching for Windows updates..." -PercentComplete 80
            }

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Searching for Windows updates with criteria: $searchCriteria")

            # search for available windows updates
            $searchResult = $script:updateSearcher.Search($searchCriteria)

            $updates = $searchResult.Updates

            # separate important and optional updates when processing both
            if ($ProcessOptionalUpdates) {
                $importantUpdates = @($updates | Microsoft.PowerShell.Core\Where-Object {
                        $_.AutoSelectOnWebSites
                    })
                $optionalUpdates = @($updates | Microsoft.PowerShell.Core\Where-Object {
                        -not $_.AutoSelectOnWebSites
                    })
            } else {
                $importantUpdates = @($updates)
                $optionalUpdates = @()
            }

            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Progress -Activity "Checking for Updates" -Completed
            }

            # check if no updates are available
            if ($updates.Count -eq 0 -and -not $script:wingetHasUpdates -and -not $script:moduleUpdatesAvailable) {

                if (-not $NoBanner) {

                    Microsoft.PowerShell.Utility\Write-Host (
                        "✅ System is up to date!") -ForegroundColor Green
                }

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "No updates available. System is up to date.")

                return
            }

            # display available updates without installing them
            if (-not $Install) {

                $totalUpdates = $importantUpdates.Count + $optionalUpdates.Count

                if ($totalUpdates -gt 0) {

                    # display updates grouped by category if requested
                    if ($GroupByCategory) {

                        $h1 = 'Category'
                        $h2 = 'Title'
                        $h3 = 'Description'
                        $catalog = @()

                        # build catalog of updates with category information
                        foreach ($update in $importantUpdates) {

                            if (-not $update.IsHidden) {

                                $table = '' | Microsoft.PowerShell.Utility\Select-Object $h1, $h2, $h3
                                $index = $update.Categories.Item.count - 1
                                $item = $update.Categories.Item($index)
                                $category = $item.Name
                                $table.$h1 = $category
                                $table.$h2 = $update.Title
                                $table.$h3 = $update.Description
                                $catalog += $table
                            }
                        }

                        # include optional updates with [OPTIONAL] label
                        foreach ($update in $optionalUpdates) {

                            if (-not $update.IsHidden) {

                                $table = '' | Microsoft.PowerShell.Utility\Select-Object $h1, $h2, $h3
                                $index = $update.Categories.Item.count - 1
                                $item = $update.Categories.Item($index)
                                $category = $item.Name
                                $table.$h1 = "${category} [OPTIONAL]"
                                $table.$h2 = $update.Title
                                $table.$h3 = $update.Description
                                $catalog += $table
                            }
                        }

                        # group updates by category and display
                        $group = $catalog | Microsoft.PowerShell.Utility\Group-Object -Property 'Category'

                        foreach ($member in $group) {

                            $title = $member.Name

                            Microsoft.PowerShell.Utility\Write-Host "[${title}]" `
                                -ForegroundColor Yellow

                            $member.Group | Microsoft.PowerShell.Core\ForEach-Object {

                                Microsoft.PowerShell.Utility\Write-Host " - $($_.Title)" `
                                    -ForegroundColor Cyan

                                Microsoft.PowerShell.Utility\Write-Host (
                                    "    $($_.Description)")

                                Microsoft.PowerShell.Utility\Write-Host ""
                            }

                            Microsoft.PowerShell.Utility\Write-Host ""
                        }
                    } else {

                        # display important updates in simple list format
                        if ($importantUpdates.Count -gt 0) {
                            Microsoft.PowerShell.Utility\Write-Host (
                                "Available Windows Updates:") -ForegroundColor Cyan

                            Microsoft.PowerShell.Utility\Write-Host (
                                "==========================") -ForegroundColor Cyan

                            foreach ($update in $importantUpdates) {

                                if (-not $update.IsHidden) {

                                    Microsoft.PowerShell.Utility\Write-Host (
                                        "• $($update.Title)") -ForegroundColor White

                                    Microsoft.PowerShell.Utility\Write-Host (
                                        "  Size: $([math]::Round($update.MaxDownloadSize / 1MB, 2)) MB") `
                                        -ForegroundColor Gray

                                    if ($update.Description) {

                                        $description = $update.Description

                                        if ($description.Length -gt 100) {

                                            $description = $description.Substring(0, 97) + "..."
                                        }

                                        Microsoft.PowerShell.Utility\Write-Host (
                                            "  $description") -ForegroundColor Gray
                                    }

                                    Microsoft.PowerShell.Utility\Write-Host ""
                                }
                            }
                        }

                        # display optional updates separately
                        if ($optionalUpdates.Count -gt 0) {
                            Microsoft.PowerShell.Utility\Write-Host (
                                "Optional Windows Updates:") -ForegroundColor DarkCyan

                            Microsoft.PowerShell.Utility\Write-Host (
                                "=========================") -ForegroundColor DarkCyan

                            foreach ($update in $optionalUpdates) {

                                if (-not $update.IsHidden) {

                                    Microsoft.PowerShell.Utility\Write-Host (
                                        "• $($update.Title)") -ForegroundColor Gray

                                    Microsoft.PowerShell.Utility\Write-Host (
                                        "  Size: $([math]::Round($update.MaxDownloadSize / 1MB, 2)) MB") `
                                        -ForegroundColor DarkGray

                                    if ($update.Description) {

                                        $description = $update.Description

                                        if ($description.Length -gt 100) {

                                            $description = $description.Substring(0, 97) + "..."
                                        }

                                        Microsoft.PowerShell.Utility\Write-Host (
                                            "  $description") -ForegroundColor DarkGray
                                    }

                                    Microsoft.PowerShell.Utility\Write-Host ""
                                }
                            }

                            if (-not $NoBanner) {
                                Microsoft.PowerShell.Utility\Write-Host (
                                    "Use -ProcessOptionalUpdates -Install to be prompted for each") `
                                    -ForegroundColor DarkCyan
                                Microsoft.PowerShell.Utility\Write-Host ""
                            }
                        }
                    }

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "$($totalUpdates) Windows updates are available but Install is not specified.")
                }

                if ($script:wingetHasUpdates) {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Winget updates are available but Install is not specified.")
                }

                if ($script:moduleUpdatesAvailable) {

                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "PowerShell module updates are available but Install is not specified.")
                }

                # display usage instructions if updates are available
                if (($totalUpdates -gt 0 -or $script:wingetHasUpdates -or $script:moduleUpdatesAvailable) -and -not $NoBanner) {

                    Microsoft.PowerShell.Utility\Write-Host (
                        "To install these updates automatically, use:") `
                        -ForegroundColor Green

                    Microsoft.PowerShell.Utility\Write-Host (
                        "  Invoke-WindowsUpdate -Install") -ForegroundColor Cyan

                    Microsoft.PowerShell.Utility\Write-Host (
                        "  updatewindows -Install") -ForegroundColor Cyan

                    Microsoft.PowerShell.Utility\Write-Host ""

                    Microsoft.PowerShell.Utility\Write-Host (
                        "To install and automatically reboot if needed, use:") `
                        -ForegroundColor Green

                    Microsoft.PowerShell.Utility\Write-Host (
                        "  Invoke-WindowsUpdate -Install -AutoReboot") `
                        -ForegroundColor Cyan

                    Microsoft.PowerShell.Utility\Write-Host (
                        "  updatewindows -Install -AutoReboot") -ForegroundColor Cyan

                    Microsoft.PowerShell.Utility\Write-Host ""
                }

                return
            }

            # prepare to install the available updates
            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Host (
                    "Installing Windows Updates:") -ForegroundColor Cyan
                Microsoft.PowerShell.Utility\Write-Host (
                    "============================") -ForegroundColor Cyan
            }

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Found $($importantUpdates.Count) important and $($optionalUpdates.Count) optional updates to consider.")

            # create collection for updates to install
            $updatesToInstall = Microsoft.PowerShell.Utility\New-Object `
                -ComObject Microsoft.Update.UpdateColl

            # add non-hidden important updates to installation collection
            foreach ($update in $importantUpdates) {

                if ($update.IsHidden -eq $false) {

                    $null = $updatesToInstall.Add($update)

                    if (-not $NoBanner) {
                        Microsoft.PowerShell.Utility\Write-Host (
                            "  • $($update.Title)") -ForegroundColor White
                    }
                }
            }

            # prompt for each optional update when ProcessOptionalUpdates is used
            if ($ProcessOptionalUpdates -and $optionalUpdates.Count -gt 0) {

                if (-not $NoBanner) {
                    Microsoft.PowerShell.Utility\Write-Host ""
                    Microsoft.PowerShell.Utility\Write-Host (
                        "Optional Updates Available:") -ForegroundColor DarkCyan
                    Microsoft.PowerShell.Utility\Write-Host (
                        "===========================") -ForegroundColor DarkCyan

                    $index = 1
                    foreach ($update in $optionalUpdates) {

                        if ($update.IsHidden -eq $false) {
                            Microsoft.PowerShell.Utility\Write-Host (
                                "  $index. $($update.Title)") -ForegroundColor Gray
                            Microsoft.PowerShell.Utility\Write-Host (
                                "     Size: $([math]::Round($update.MaxDownloadSize / 1MB, 2)) MB") `
                                -ForegroundColor DarkGray
                            $index++
                        }
                    }
                    Microsoft.PowerShell.Utility\Write-Host ""
                }

                foreach ($update in $optionalUpdates) {

                    if ($update.IsHidden -eq $false) {

                        $choice = $host.ui.PromptForChoice(
                            'Optional Update',
                            "Install '$($update.Title)'?",
                            @('&No', '&Yes'),
                            0)

                        if ($choice -eq 1) {

                            $null = $updatesToInstall.Add($update)

                            if (-not $NoBanner) {
                                Microsoft.PowerShell.Utility\Write-Host (
                                    "  ✓ $($update.Title) [OPTIONAL]") -ForegroundColor DarkCyan
                            }
                        } elseif (-not $NoBanner) {
                            Microsoft.PowerShell.Utility\Write-Host (
                                "  ✗ Skipped: $($update.Title)") -ForegroundColor DarkGray
                        }
                    }
                }
            }

            # verify we have valid updates to install
            if ($updatesToInstall.Count -eq 0) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "No valid updates to install after filtering.")

                return
            }

            # confirm Windows update installation with user
            if (-not $PSCmdlet.ShouldProcess("$($updatesToInstall.Count) Windows updates", "Download and Install")) {
                return
            }

            # create downloader and set updates to download
            $downloader = $updateSession.CreateUpdateDownloader()

            $downloader.Updates = $updatesToInstall

            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Progress -Activity "Installing Windows Updates" -Status "Downloading updates..." -PercentComplete 20
                Microsoft.PowerShell.Utility\Write-Host (
                    "Downloading updates...") -ForegroundColor Yellow
            }
            Microsoft.PowerShell.Utility\Write-Verbose "Downloading updates..."

            # download the selected updates
            $downloadResult = $downloader.Download()

            # verify download was successful
            if ($downloadResult.ResultCode -ne 2) {

                Microsoft.PowerShell.Utility\Write-Error (
                    "Failed to download updates. Result code: " +
                    "$($downloadResult.ResultCode)")

                return
            }

            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Progress -Activity "Installing Windows Updates" -Status "Installing updates..." -PercentComplete 60
                Microsoft.PowerShell.Utility\Write-Host (
                    "✓ Download completed successfully") -ForegroundColor Green
            }

            # create installer and set updates to install
            $installer = $updateSession.CreateUpdateInstaller()

            $installer.Updates = $updatesToInstall

            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Host (
                    "Installing updates...") -ForegroundColor Yellow
            }
            Microsoft.PowerShell.Utility\Write-Verbose "Installing updates..."

            # install the downloaded updates
            $installResult = $installer.Install()

            # verify installation was successful
            if ($installResult.ResultCode -ne 2) {

                Microsoft.PowerShell.Utility\Write-Error (
                    "Failed to install updates. Result code: " +
                    "$($installResult.ResultCode)")

                return
            }

            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Progress -Activity "Installing Windows Updates" -Completed
                Microsoft.PowerShell.Utility\Write-Host (
                    "✓ Installation completed successfully") -ForegroundColor Green
                Microsoft.PowerShell.Utility\Write-Host ""
            }

            # handle reboot requirement after installation
            if ($installResult.RebootRequired -and $AutoReboot -and -not $NoRebootCheck) {

                if ($PSCmdlet.ShouldProcess("Computer", "Restart")) {

                    if (-not $NoBanner) {
                        Microsoft.PowerShell.Utility\Write-Host (
                            "🔄 Reboot required. Restarting computer...") -ForegroundColor Yellow
                    }
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Reboot required. Initiating reboot...")

                    Microsoft.PowerShell.Management\Restart-Computer -Force
                }

                return
            } elseif ($installResult.RebootRequired -and -not $NoRebootCheck) {

                if (-not $NoBanner) {
                    Microsoft.PowerShell.Utility\Write-Host (
                        "⚠️  Reboot required to complete installation") -ForegroundColor Yellow
                    Microsoft.PowerShell.Utility\Write-Host (
                        "   Use -AutoReboot to restart automatically") -ForegroundColor Gray
                    Microsoft.PowerShell.Utility\Write-Host ""
                }
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Reboot required but AutoReboot not specified.")

                return
            }

            # check for additional updates after installation
            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Progress -Activity "Installing Windows Updates" -Status "Checking for additional updates..." -PercentComplete 90
            }

            $newSearchResult = $updateSearcher.Search($searchCriteria)

            # recheck for module updates after Update-Module has run
            $moduleUpdatesStillAvailable = $false
            if ($Install) {
                try {
                    $remainingModuleUpdates = PowerShellGet\Get-InstalledModule |
                        Microsoft.PowerShell.Core\ForEach-Object {
                            $installedModule = $_
                            $latestVersion = PowerShellGet\Find-Module -Name $_.Name -ErrorAction SilentlyContinue |
                                Microsoft.PowerShell.Utility\Select-Object -First 1

                            if ($latestVersion -and ([version]$latestVersion.Version -gt [version]$installedModule.Version)) {
                                $installedModule
                            }
                        }
                    $moduleUpdatesStillAvailable = $remainingModuleUpdates.Count -gt 0
                }
                catch {
                    $moduleUpdatesStillAvailable = $false
                }
            }

            if (-not $NoBanner) {
                Microsoft.PowerShell.Utility\Write-Progress -Activity "Installing Windows Updates" -Completed
            }

            # determine final status of system update state
            if ($newSearchResult.Updates.Count -eq 0 -and -not $script:wingetHasUpdates -and -not $moduleUpdatesStillAvailable) {

                if (-not $NoBanner) {
                    Microsoft.PowerShell.Utility\Write-Host (
                        "✅ System is now up to date!") -ForegroundColor Green
                    Microsoft.PowerShell.Utility\Write-Host ""
                }
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "No more updates available after installation.")

                return
            } else {

                if (-not $NoBanner) {
                    Microsoft.PowerShell.Utility\Write-Host (
                        "ℹ️  Additional updates may be available") -ForegroundColor Cyan
                }

                if ($newSearchResult.Updates.Count -gt 0) {

                    if (-not $NoBanner) {
                        Microsoft.PowerShell.Utility\Write-Host (
                            "   Run updatewindows again to check for more Windows updates") `
                            -ForegroundColor Gray
                    }
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Additional Windows updates found after installation.")
                }

                if ($script:wingetHasUpdates) {

                    if (-not $NoBanner) {
                        Microsoft.PowerShell.Utility\Write-Host (
                            "   Some WinGet packages still have updates available") `
                            -ForegroundColor Gray
                    }
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "Winget updates still available.")
                }

                if ($moduleUpdatesStillAvailable) {

                    if (-not $NoBanner) {
                        Microsoft.PowerShell.Utility\Write-Host (
                            "   Some PowerShell modules still have updates available") `
                            -ForegroundColor Gray
                    }
                    Microsoft.PowerShell.Utility\Write-Verbose (
                        "PowerShell module updates still available.")
                }

                if (-not $NoBanner) {
                    Microsoft.PowerShell.Utility\Write-Host ""
                }
            }
        }
        catch {

            Microsoft.PowerShell.Utility\Write-Error (
                "Error during update process: ${_}")

        }
    }

    end {

        # release com objects to prevent memory leaks
        if ($updateSession) {

            $null = [System.Runtime.InteropServices.Marshal]::ReleaseComObject(
                $updateSession)
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Pop-Window.ps1
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
Pops the last active window helper from the stack with optional modifications.

.DESCRIPTION
Pops a window helper from the stack and optionally applies window transformations.
If the stack is empty or contains invalid windows, returns the currently focused
window. This function allows you to manipulate windows that were previously saved
with Push-Window, applying various positioning, sizing, and visual effects.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER Minimize
Minimizes the window after popping it from the stack.

.PARAMETER Restore
Restores the window to its normal state after popping it from the stack.

.PARAMETER Hide
Hides the window after popping it from the stack.

.PARAMETER Show
Ensures the window is visible after popping it from the stack.

.PARAMETER NoBorders
Removes the window borders after popping it from the stack.

.PARAMETER AlwaysOnTop
Sets the window to always be on top after popping it from the stack.

.PARAMETER Opacity
Sets the window opacity (0-255) after popping it from the stack.

.PARAMETER X
Sets the window X position after popping it from the stack.

.PARAMETER Y
Sets the window Y position after popping it from the stack.

.PARAMETER Width
Sets the window width after popping it from the stack.

.PARAMETER Height
Sets the window height after popping it from the stack.

.PARAMETER Focus
Focuses the window after popping it from the stack.

.PARAMETER FadeIn
Applies a fade-in effect when showing the window after popping it from the stack.

.PARAMETER NoModify
Pops the window but doesn't apply any modifications (just returns it).

.PARAMETER Left
Places window on left half of screen after popping it from the stack.

.PARAMETER Right
Places window on right half of screen after popping it from the stack.

.PARAMETER Top
Places window on top half of screen after popping it from the stack.

.PARAMETER Bottom
Places window on bottom half of screen after popping it from the stack.

.PARAMETER Centered
Centers window on screen after popping it from the stack.

.PARAMETER Fullscreen
Fills window to entire screen after popping it from the stack.

.PARAMETER Monitor
Specifies the monitor to move the window to after popping from the stack:
  0 = Primary monitor (default)
  1..n = Specific monitor (1-based index)
  -2 = Secondary monitor (uses $Global:DefaultSecondaryMonitor if defined)

.EXAMPLE
Pop-Window -Maximize -Focus
Pops the last window from the stack, maximizes it and gives it focus.

.EXAMPLE
Pop-Window -X 100 -Y 100 -Width 800 -Height 600 -AlwaysOnTop
Pops the last window, positions it at coordinates (100,100),
resizes it to 800x600, and sets it to always stay on top.

.EXAMPLE
popw -Left -Focus
Pops the last window, positions it on the left half of the screen,
and gives it focus using the alias.

.EXAMPLE
Pop-Window -Monitor 1 -Maximize
Pops the last window, moves it to the first monitor, and maximizes it.

.EXAMPLE
Pop-Window -Monitor -2 -Fullscreen
Pops the last window, moves it to the secondary monitor, and makes it fullscreen.
###############################################################################>
function Pop-Window {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('popw')]
    param (
        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Maximize,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Minimize,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Restore,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Hide,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Show,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [Alias('nb')]
        [switch] $NoBorders,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $AlwaysOnTop,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [ValidateRange(0, 255)]
        [byte] $Opacity,

        [Parameter(
            ParameterSetName = 'Position',
            Mandatory = $true
        )]
        [int] $X = -999999,

        [Parameter(
            ParameterSetName = 'Position',
            Mandatory = $true
        )]
        [int] $Y = -999999,

        [Parameter(
            ParameterSetName = 'Dimensions',
            Mandatory = $true
        )]
        [int] $Width = -1,

        [Parameter(
            ParameterSetName = 'Dimensions',
            Mandatory = $true
        )]
        [int] $Height = -1,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Focus,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $FadeIn,

        [Parameter(
            ParameterSetName = 'NoModify'
        )]
        [switch] $NoModify,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Left,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Right,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Top,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Bottom,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Centered,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [Alias('sw')]
        [switch]$ShowWindow
        ,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [ValidateNotNull()]
        [Alias('m', 'mon')]
        [int] $Monitor
    )

    begin {
        # Check if the type already exists
        $typeName = 'Win32.Unique2165442User32'
        $typeExists = $null -ne [System.Type]::GetType($typeName)

        # define the iswindow function from user32.dll if it doesn't already exist
        if (-not $typeExists) {
            Microsoft.PowerShell.Utility\Add-Type -Namespace Win32 -Name Unique2165442User32 `
                -MemberDefinition @'
                [DllImport("user32.dll")]
                public static extern bool IsWindow(IntPtr hWnd);
'@ -Language CSharp
        }
    }

    process {
        # helper function to check if a window handle is still valid
        function IsWindowValid {
            param (
                [Parameter(Mandatory)]
                [IntPtr] $Handle
            )

            return [Win32.Unique2165442User32]::IsWindow($Handle)
        }

        # initialize the popped window variable to null
        [GenXdev.Helpers.WindowObj] $poppedWindow = $null

        # Check if window stack exists
        if (-not $Global:GenXdevWindowStack) {
            Microsoft.PowerShell.Utility\Write-Verbose "Window stack doesn't exist, initializing"
            $Global:GenXdevWindowStack = [System.Collections.Concurrent.ConcurrentQueue[GenXdev.Helpers.WindowObj]]::new()
        }

        # Log stack status
        Microsoft.PowerShell.Utility\Write-Verbose "Window stack empty: $($Global:GenXdevWindowStack.IsEmpty)"

        # try to get a valid window from the stack, discarding invalid handles
        while ($Global:GenXdevWindowStack -and -not $Global:GenXdevWindowStack.IsEmpty) {
            # attempt to dequeue a window from the stack
            $Global:GenXdevWindowStack.TryDequeue([ref]$poppedWindow) |
                Microsoft.PowerShell.Core\Out-Null

            # check if window is valid; if so, break the loop
            if ($poppedWindow -and $poppedWindow.Handle -and
                (IsWindowValid -Handle $poppedWindow.Handle)) {
                Microsoft.PowerShell.Utility\Write-Verbose "Found valid window in stack, Handle: $($poppedWindow.Handle), Title: $($poppedWindow.Title)"
                break
            }

            # reset to null if window was invalid
            Microsoft.PowerShell.Utility\Write-Verbose 'Discarded invalid window from stack'
            $poppedWindow = $null
        }

        # if no valid window found, push current window and use that instead
        if (-not $poppedWindow) {
            Microsoft.PowerShell.Utility\Write-Verbose 'No valid window in stack, getting current window'
            try {
                # Get the current foreground window directly
                $foregroundHandle = GenXdev\Get-CurrentFocusedWindow
                if ($foregroundHandle -ne 0) {
                    Microsoft.PowerShell.Utility\Write-Verbose "Got foreground window handle: $foregroundHandle"
                    $poppedWindow = [GenXdev.Helpers.WindowObj]::GetMainWindow($foregroundHandle)
                    Microsoft.PowerShell.Utility\Write-Verbose "Created window object, Title: $($poppedWindow.Title)"
                }
                else {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Failed to get foreground window, falling back to Push-Window'
                    $null = GenXdev\Push-Window
                    $Global:GenXdevWindowStack.TryDequeue([ref]$poppedWindow) |
                        Microsoft.PowerShell.Core\Out-Null
                }
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Verbose "Error getting current window: $_"
                Microsoft.PowerShell.Utility\Write-Verbose 'Falling back to Push-Window'
                $null = GenXdev\Push-Window
                $Global:GenXdevWindowStack.TryDequeue([ref]$poppedWindow) |
                    Microsoft.PowerShell.Core\Out-Null
            }
        }

        # Validate we have a window to work with
        if (-not $poppedWindow -or -not $poppedWindow.Handle -or -not (IsWindowValid -Handle $poppedWindow.Handle)) {
            Microsoft.PowerShell.Utility\Write-Error 'Failed to get a valid window to manipulate'
            return
        }

        Microsoft.PowerShell.Utility\Write-Verbose "Working with window: $($poppedWindow.Title), Handle: $($poppedWindow.Handle)"

        # skip modifications if nomodify is specified
        if ($NoModify) {
            return $poppedWindow
        }

        [int] $setDefaultMonitor = $Global:DefaultSecondaryMonitor -is [int] ?
        (
            $Global:DefaultSecondaryMonitor
        ):
        2;

        # move to specified monitor if requested
        if ($PSBoundParameters.ContainsKey('Monitor')) {
            # handle special case for secondary monitor (-2)
            if ($Monitor -eq -2 -and $setDefaultMonitor -is [int] -and
                $setDefaultMonitor -ge 0) {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Using monitor from `$setDefaultMonitor: " +
                    "$setDefaultMonitor"
                )
                $targetMonitor = $setDefaultMonitor
            }
            else {
                $targetMonitor = $Monitor
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Moving window to monitor: $targetMonitor"
            $null = $poppedWindow.MoveToMonitor($targetMonitor)
        }

        # apply show/fade effects if requested
        if ($Show) {
            if ($FadeIn) {
                # apply fade-in effect for smooth appearance
                $poppedWindow.FadeWindow($true)
            }
            else {
                # show window immediately
                $null = $poppedWindow.Show()
            }
        }

        # apply window state modifications
        if ($Maximize) {
            $null = $poppedWindow.Maximize()
        }
        elseif ($Minimize) {
            $null = $poppedWindow.Minimize()
        }
        elseif ($Restore) {
            $null = $poppedWindow.Restore()
        }

        # apply positioning parameters - with enhanced logging
        # Check if both horizontal and vertical positioning are specified
        $horizontalPos = $Left -or $Right
        $verticalPos = $Top -or $Bottom
        $cornerPositioning = $horizontalPos -and $verticalPos

        if ($cornerPositioning) {
            # Handle corner positioning (quarter screen)
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to corner (quarter screen)'

            if ($Left) {
                if ($Top) {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Positioning to top-left corner'
                    $result = $poppedWindow.PositionTopLeft()
                    Microsoft.PowerShell.Utility\Write-Verbose "PositionTopLeft result: $result"
                }
                else {
                    # Bottom
                    Microsoft.PowerShell.Utility\Write-Verbose 'Positioning to bottom-left corner'
                    $result = $poppedWindow.PositionBottomLeft()
                    Microsoft.PowerShell.Utility\Write-Verbose "PositionBottomLeft result: $result"
                }
            }
            else {
                # Right
                if ($Top) {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Positioning to top-right corner'
                    $result = $poppedWindow.PositionTopRight()
                    Microsoft.PowerShell.Utility\Write-Verbose "PositionTopRight result: $result"
                }
                else {
                    # Bottom
                    Microsoft.PowerShell.Utility\Write-Verbose 'Positioning to bottom-right corner'
                    $result = $poppedWindow.PositionBottomRight()
                    Microsoft.PowerShell.Utility\Write-Verbose "PositionBottomRight result: $result"
                }
            }
        }
        # Original half-screen positioning logic
        elseif ($Left) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to left half of screen'
            $result = $poppedWindow.PositionLeft()
            Microsoft.PowerShell.Utility\Write-Verbose "PositionLeft result: $result"
        }
        elseif ($Right) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to right half of screen'
            $result = $poppedWindow.PositionRight()
            Microsoft.PowerShell.Utility\Write-Verbose "PositionRight result: $result"
        }
        elseif ($Top) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to top half of screen'
            $result = $poppedWindow.PositionTop()
            Microsoft.PowerShell.Utility\Write-Verbose "PositionTop result: $result"
        }
        elseif ($Bottom) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to bottom half of screen'
            $result = $poppedWindow.PositionBottom()
            Microsoft.PowerShell.Utility\Write-Verbose "PositionBottom result: $result"
        }
        elseif ($Centered) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Centering window on screen'
            $result = $poppedWindow.PositionCentered()
            Microsoft.PowerShell.Utility\Write-Verbose "PositionCentered result: $result"
        }
        elseif ($Fullscreen) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Making window fullscreen'
            $result = $poppedWindow.PositionFullscreen()
            Microsoft.PowerShell.Utility\Write-Verbose "PositionFullscreen result: $result"
        }

        # hide window if requested
        if ($Hide) {
            $null = $poppedWindow.Hide()
        }

        # apply visual modifications
        if ($NoBorders) {
            $poppedWindow.RemoveBorder()
        }

        # set always-on-top property if requested
        if ($AlwaysOnTop) {
            $poppedWindow.SetAlwaysOnTop($true)
        }

        # set opacity if specified
        if ($PSBoundParameters.ContainsKey('Opacity')) {
            $poppedWindow.SetOpacity($Opacity)
        }

        # apply position changes if requested
        if ($PSBoundParameters.ContainsKey('X') -and $PSBoundParameters.ContainsKey('Y')) {
            $null = $poppedWindow.Move($X, $Y)
        }

        # apply size changes if requested
        if ($PSBoundParameters.ContainsKey('Width') -and $PSBoundParameters.ContainsKey('Height')) {
            $null = $poppedWindow.Resize($Width, $Height)
        }

        # focus the window if requested (done last for proper visibility)
        if ($Focus) {
            $null = $poppedWindow.Focus()
        }

        # return the window object for potential further manipulationanipulation
        return $poppedWindow
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Push-Window.ps1
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
Pushes the current window onto the window stack with optional modifications.

.DESCRIPTION
Pushes a window helper for the currently focused window onto the stack.
Allows applying various window transformations before or after pushing.
This function captures the current window and stores it for later retrieval
with Pop-Window, while optionally applying positioning, sizing, and visual
effects.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER Minimize
Minimizes the window before pushing it onto the stack.

.PARAMETER Restore
Restores the window to its normal state before pushing it onto the stack.

.PARAMETER Hide
Hides the window before pushing it onto the stack.

.PARAMETER Show
Ensures the window is visible before pushing it onto the stack.

.PARAMETER NoBorders
Removes the window borders before pushing it onto the stack.

.PARAMETER AlwaysOnTop
Sets the window to always be on top before pushing it onto the stack.

.PARAMETER Opacity
Sets the window opacity (0-255) before pushing it onto the stack.

.PARAMETER X
Sets the window X position before pushing it onto the stack.

.PARAMETER Y
Sets the window Y position before pushing it onto the stack.

.PARAMETER Width
Sets the window width before pushing it onto the stack.

.PARAMETER Height
Sets the window height before pushing it onto the stack.

.PARAMETER Focus
Focuses the window before pushing it onto the stack.

.PARAMETER FadeOut
Applies a fade-out effect before pushing the window onto the stack.

.PARAMETER PassThru
Returns the window object after pushing it onto the stack.

.PARAMETER Left
Places window on left half of screen before pushing it onto the stack.

.PARAMETER Right
Places window on right half of screen before pushing it onto the stack.

.PARAMETER Top
Places window on top half of screen before pushing it onto the stack.

.PARAMETER Bottom
Places window on bottom half of screen before pushing it onto the stack.

.PARAMETER Centered
Centers window on screen before pushing it onto the stack.

.PARAMETER Fullscreen
Fills window to entire screen before pushing it onto the stack.

.PARAMETER Monitor
Specifies the monitor to move the window to before pushing onto the stack:
  0 = Primary monitor (default)
  1..n = Specific monitor (1-based index)
  -2 = Secondary monitor (uses $Global:DefaultSecondaryMonitor if defined)

.EXAMPLE
Push-Window -Maximize -AlwaysOnTop
Maximizes the current window, sets it to be always on top, and pushes it onto the stack.

.EXAMPLE
Push-Window -X 100 -Y 100 -Width 800 -Height 600 -NoBorders
Positions and resizes the current window, removes its borders, and pushes it onto the stack.

.EXAMPLE
pushw -Left
Positions the current window on the left half of the screen and pushes it
onto the stack using the alias.

.EXAMPLE
Push-Window -Monitor 1 -Maximize
Moves the current window to the first monitor, maximizes it, and pushes it onto the stack.

.EXAMPLE
Push-Window -Monitor -2 -Fullscreen
Moves the current window to the secondary monitor, makes it fullscreen,
and pushes it onto the stack.
###############################################################################>
function Push-Window {

    [CmdletBinding(DefaultParameterSetName = 'Default')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseDeclaredVarsMoreThanAssignments', '')]
    [Alias('pushw')]
    param (
        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Maximize,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Minimize,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Restore,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Hide,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Show,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [Alias('nb')]
        [switch] $NoBorders,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $AlwaysOnTop,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [ValidateRange(0, 255)]
        [byte] $Opacity,

        [Parameter(
            ParameterSetName = 'Position',
            Mandatory = $true
        )]
        [int] $X = -999999,

        [Parameter(
            ParameterSetName = 'Position',
            Mandatory = $true
        )]
        [int] $Y = -999999,

        [Parameter(
            ParameterSetName = 'Dimensions',
            Mandatory = $true
        )]
        [int] $Width = -1,

        [Parameter(
            ParameterSetName = 'Dimensions',
            Mandatory = $true
        )]
        [int] $Height = -1,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Focus,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $FadeOut,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [Alias('pt')]
        [switch]$PassThru,


        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Left,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Right,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Top,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Bottom,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [switch] $Centered,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [Alias('sw')]
        [switch]$ShowWindow
        ,

        [Parameter(
            ParameterSetName = 'Default'
        )]
        [Parameter(
            ParameterSetName = 'Position'
        )]
        [Parameter(
            ParameterSetName = 'Dimensions'
        )]
        [ValidateNotNull()]
        [Alias('m', 'mon')]
        [int] $Monitor
    )

    begin {
        # initialize the global window stack if it doesn't exist yet
        if (-not $Global:GenXdevWindowStack) {
            $Global:GenXdevWindowStack = [System.Collections.Concurrent.ConcurrentQueue[GenXdev.Helpers.WindowObj]]::new()
            Microsoft.PowerShell.Utility\Write-Verbose 'Initialized new window stack'
        }
    }

    process {
        # get the process id of the currently focused window
        $processId = GenXdev\Get-CurrentFocusedProcess

        # extract the process id if we got a Process object
        if ($processId -is [System.Diagnostics.Process]) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Received Process object, extracting process ID'
            $processId = $processId.Id
        }

        Microsoft.PowerShell.Utility\Write-Verbose "Current focused process ID: $processId"

        # get a window helper for the currently focused window
        $window = GenXdev\Get-Window -ProcessId $processId

        # validate that we got a valid window
        if (-not $window) {
            Microsoft.PowerShell.Utility\Write-Error "Failed to get a valid window for process ID: $processId"
            return
        }

        Microsoft.PowerShell.Utility\Write-Verbose "Retrieved window handle: $($window.Handle)"

        [int] $setDefaultMonitor = $Global:DefaultSecondaryMonitor -is [int] ?
        (
            $Global:DefaultSecondaryMonitor
        ):
        2;

        # move to specified monitor if requested
        if ($PSBoundParameters.ContainsKey('Monitor')) {
            # handle special case for secondary monitor (-2)
            if ($Monitor -eq -2 -and $setDefaultMonitor -is [int] -and
                $setDefaultMonitor -ge 0) {
                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Using monitor from `$setDefaultMonitor: " +
                    "$setDefaultMonitor"
                )
                $targetMonitor = $setDefaultMonitor
            }
            else {
                $targetMonitor = $Monitor
            }

            Microsoft.PowerShell.Utility\Write-Verbose "Moving window to monitor: $targetMonitor"
            $null = $window.MoveToMonitor($targetMonitor)
        }

        # focus the window if requested
        if ($Focus) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Setting window foreground focus'
            $null = $window.Focus()
        }

        # apply window state modifications
        if ($Maximize) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Maximizing window'
            $null = $window.Maximize()
        }
        elseif ($Minimize) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Minimizing window'
            $null = $window.Minimize()
        }
        elseif ($Restore) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Restoring window'
            $null = $window.Restore()
        }

        # apply positioning parameters
        # Check if both horizontal and vertical positioning are specified
        $horizontalPos = $Left -or $Right
        $verticalPos = $Top -or $Bottom
        $cornerPositioning = $horizontalPos -and $verticalPos

        if ($cornerPositioning) {
            # Handle corner positioning (quarter screen)
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to corner (quarter screen)'

            if ($Left) {
                if ($Top) {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Positioning to top-left corner'
                    $null = $window.PositionTopLeft()
                }
                else {
                    # Bottom
                    Microsoft.PowerShell.Utility\Write-Verbose 'Positioning to bottom-left corner'
                    $null = $window.PositionBottomLeft()
                }
            }
            else {
                # Right
                if ($Top) {
                    Microsoft.PowerShell.Utility\Write-Verbose 'Positioning to top-right corner'
                    $null = $window.PositionTopRight()
                }
                else {
                    # Bottom
                    Microsoft.PowerShell.Utility\Write-Verbose 'Positioning to bottom-right corner'
                    $null = $window.PositionBottomRight()
                }
            }
        }
        # Original half-screen positioning logic
        elseif ($Left) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to left half'
            $null = $window.PositionLeft()
        }
        elseif ($Right) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to right half'
            $null = $window.PositionRight()
        }
        elseif ($Top) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to top half'
            $null = $window.PositionTop()
        }
        elseif ($Bottom) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Positioning window to bottom half'
            $null = $window.PositionBottom()
        }
        elseif ($Centered) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Centering window on screen'
            $null = $window.PositionCentered()
        }
        elseif ($Fullscreen) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Making window fullscreen'
            $null = $window.PositionFullscreen()
        }

        # apply hide/show effects
        if ($Hide) {
            if ($FadeOut) {
                # apply fade-out effect for smooth disappearance
                Microsoft.PowerShell.Utility\Write-Verbose 'Fading out window'
                $window.FadeWindow($false)
            }
            else {
                # hide window immediately
                Microsoft.PowerShell.Utility\Write-Verbose 'Hiding window'
                $null = $window.Hide()
            }
        }
        elseif ($Show) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Showing window'
            $null = $window.Show()
        }

        # apply visual modifications
        if ($NoBorders) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Removing window borders'
            $window.RemoveBorder()
        }

        # set always-on-top property if requested
        if ($AlwaysOnTop) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Setting window to always on top'
            $window.SetAlwaysOnTop($true)
        }

        # set opacity if specified
        if ($PSBoundParameters.ContainsKey('Opacity')) {
            Microsoft.PowerShell.Utility\Write-Verbose "Setting window opacity to: $Opacity"
            $window.SetOpacity($Opacity)
        }

        # apply position changes if requested
        if ($PSBoundParameters.ContainsKey('X') -and $PSBoundParameters.ContainsKey('Y')) {
            Microsoft.PowerShell.Utility\Write-Verbose "Moving window to position X:$X Y:$Y"
            $null = $window.Move($X, $Y)
        }

        # apply size changes if requested
        if ($PSBoundParameters.ContainsKey('Width') -and
            $PSBoundParameters.ContainsKey('Height')) {
            Microsoft.PowerShell.Utility\Write-Verbose "Resizing window to Width:$Width Height:$Height"
            $null = $window.Resize($Width, $Height)
        }

        # add the window to the stack
        Microsoft.PowerShell.Utility\Write-Verbose 'Enqueueing window to global stack'
        $Global:GenXdevWindowStack.Enqueue($window)

        # return window if passthru is specified
        if ($PassThru) {
            Microsoft.PowerShell.Utility\Write-Verbose 'Returning window object (PassThru)'
            return $window
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Send-Key.ps1
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
Sends simulated keystrokes to a window or process.

.DESCRIPTION
This function sends keyboard input to a target window or process using the
Windows Script Host Shell object. It can target windows by process name,
process ID, or window handle. The function supports special key sequences,
escape characters, and various timing options for reliable key delivery.

.PARAMETER KeysToSend
The keyboard input to send as an array of strings. Each string in the
array represents a sequence of keystrokes and is processed sequentially,
with optional delays between them if specified in the cmdlet logic.

The input format for each keystroke string follows the following syntax;

It supports plain characters, special key sequences in braces {},
modifiers for key combinations (SHIFT, CTRL, ALT), and repeat counts.

Keystroke String Details

Plain Characters: Use the character itself (e.g., 'A' for A, 'abc' for a, b, c in sequence).
Special Characters: Characters like +, ^, %, ~, (, ), {, }, [, ] have special meanings. To send them literally,
enclose in braces: '{+}' for plus, '{^}' for caret, etc. For braces: '{{}' for '{' and '{}}' for '}'. For brackets: '{[}' or '{]}'.
Non-Printable/Action Keys: Enclose key codes in braces. Common keys include:

BACKSPACE: {BACKSPACE}, {BS}, {BKSP}
BREAK: {BREAK}
CAPS LOCK: {CAPSLOCK}
DEL/DELETE: {DELETE}, {DEL}
DOWN ARROW: {DOWN}
END: {END}
ENTER: {ENTER}, ~
ESC: {ESC}
HELP: {HELP}
HOME: {HOME}
INS/INSERT: {INSERT}, {INS}
LEFT ARROW: {LEFT}
NUM LOCK: {NUMLOCK}
PAGE DOWN: {PGDN}
PAGE UP: {PGUP}
PRINT SCREEN: {PRTSC}
RIGHT ARROW: {RIGHT}
SCROLL LOCK: {SCROLLLOCK}
TAB: {TAB}
UP ARROW: {UP}
Function Keys: {F1} to {F16}

Modifiers for Key Combinations:

for SHIFT (e.g., '+A' for Shift+A)
^ for CTRL (e.g., '^C' for Ctrl+C)
% for ALT (e.g., '%F' for Alt+F)

Group combinations with parentheses: '+(EC)' to hold SHIFT while pressing E then C.
Repeating Keys: Use '{key number}' with a space between
e.g., '{A 5}' presses A five times; '{LEFT 10}' presses left arrow 10 times

.PARAMETER SendKeyEscape
When specified, escapes curly braces in the input text so they are sent as
literal characters rather than interpreted as special key sequences.

.PARAMETER ProcessName
The name of the target process to send keys to. Supports wildcard patterns
for flexible process matching.

.PARAMETER ProcessId
The process ID of the target process to send keys to. Provides precise
targeting when multiple processes have similar names.

.PARAMETER WindowHandle
The window handle (HWND) of the target window to send keys to. Offers
direct window targeting when the handle is known.

.PARAMETER SendKeyHoldKeyboardFocus
When specified, keeps keyboard focus on the target window after sending
keys instead of returning focus to the PowerShell window.

.PARAMETER SendKeyUseShiftEnter
When specified, converts newline characters to Shift+Enter key sequences
instead of regular Enter key sequences.

.PARAMETER SendKeyDelayMilliSeconds
The delay in milliseconds between sending different key sequences. Helps
ensure reliable delivery when sending multiple key strings.

.EXAMPLE
Send-Key -KeysToSend "Hello World{ENTER}" -ProcessName "notepad"
Sends text to Notepad followed by Enter key using process name targeting.

.EXAMPLE
Send-Key "Special {F11} key" -SendKeyEscape -ProcessId 1234
Sends literal "{F11}" text rather than F11 key using process ID targeting.

.EXAMPLE
sendkeys "Line 1{ENTER}Line 2" -WindowHandle 123456 -SendKeyDelayMilliSeconds 50
Sends multi-line text with custom delay using window handle targeting.
#>
function Send-Key {

    [CmdletBinding(DefaultParameterSetName = 'ByProcessName')]
    [Alias('sendkeys', 'invokekeys')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            ValueFromRemainingArguments = $false,
            HelpMessage = 'The keyboard input to send as an array of strings'
        )]
        [string[]] $KeysToSend,
        [Parameter(
            ParameterSetName = 'ByProcessName',
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'Name of the process to send keys to (supports wildcards)'
        )]
        [ValidateNotNullOrEmpty()]
        [SupportsWildcards()]
        [string] $ProcessName,
        [Parameter(
            ParameterSetName = 'ByProcessId',
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'ID of the process to send keys to'
        )]
        [ValidateNotNull()]
        [Alias('Id', 'PID')]
        [int] $ProcessId,
        [Parameter(
            ParameterSetName = 'ByWindowHandle',
            Mandatory = $false,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'Window handle to send keys to'
        )]
        [ValidateNotNull()]
        [Alias('Handle', 'hWnd')]
        [long] $WindowHandle,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers in input text'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on target window after sending keys'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter for newlines'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay between different input strings in milliseconds'
        )]
        [ValidateRange(0, [int]::MaxValue)]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds = 10
    )

    begin {

        # initialize the windows script host shell object for sending keystrokes
        $helper = Microsoft.PowerShell.Utility\New-Object -ComObject WScript.Shell

        # initialize window variable for target window operations
        $window = $null;

        # attempt to locate the target window if targeting parameters are provided
        if ($null -eq $window) {
            try {
                # copy relevant parameters for get-window cmdlet invocation
                $invocationArguments = GenXdev\Copy-IdenticalParamValues `
                    -FunctionName 'GenXdev\Get-Window' `
                    -BoundParameters $PSBoundParameters `
                    -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                        -Scope Local `
                        -ErrorAction SilentlyContinue)

                # check if any window targeting parameters were provided
                if ((-not [string]::IsNullOrWhiteSpace($ProcessName)) -or `
                    ($ProcessId -ne 0) -or `
                    ($WindowHandle -ne 0)) {

                    # retrieve the first matching window for the specified criteria
                    $window = GenXdev\Get-Window @invocationArguments `
                        -ErrorAction SilentlyContinue |
                        Microsoft.PowerShell.Utility\Select-Object -First 1
                }
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning $_.Exception.Message
            }
        }

        # bring the target window to foreground if one was found
        if ($null -ne $window) {

            $null = $window.SetForeground()

            # allow time for window activation to complete
            Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 500
        }
    }

    process {

    }

    end {

        try {
            # iterate through each key sequence string to send
            foreach ($key in $KeysToSend) {
                Microsoft.PowerShell.Utility\Write-Verbose `
                    "Processing key sequence: $key"

                try {
                    # join array elements into a single string for processing
                    $escapedQuery = $key -join ' '

                    # escape curly braces if escape mode is enabled
                    if ($SendKeyEscape) {
                        $escapedQuery = $escapedQuery -replace '(\{)', '{{}'

                        $escapedQuery = $escapedQuery -replace '(\})', '{}}'
                    }

                    # normalize line endings to consistent newline format
                    $escapedQuery = $escapedQuery -replace '`r', '`n'

                    $escapedQuery = $escapedQuery -replace '`n`n', '`n'

                    # convert newlines to appropriate key sequences based on mode
                    if ($SendKeyUseShiftEnter) {
                        $escapedQuery = $escapedQuery -replace '`n', '+{ENTER}'
                    }
                    else {
                        $escapedQuery = $escapedQuery -replace '`n', '{ENTER}'
                    }

                    Microsoft.PowerShell.Utility\Write-Verbose `
                        "Sending keys: $escapedQuery"

                    if ($key -eq '^v') {
                        Microsoft.PowerShell.Utility\Start-Sleep 2
                    }

                    # send the processed key sequence to the target window
                    $null = $helper.sendKeys($escapedQuery, $true)

                    # apply delay between key sequences if specified
                    if ($SendKeyDelayMilliSeconds -gt 0) {
                        Microsoft.PowerShell.Utility\Start-Sleep `
                            -Milliseconds $SendKeyDelayMilliSeconds
                    }
                    if ($key -eq '^v') {
                        Microsoft.PowerShell.Utility\Start-Sleep 2
                    }
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning $_.Exception.Message
                }
            }
        }
        finally {
            # handle window focus restoration after key sending is complete
            if ($null -ne $window) {
                try {

                    # restore powershell window focus unless holding focus was requested
                    if (-not $SendKeyHoldKeyboardFocus) {
                        try {
                            Microsoft.PowerShell.Utility\Write-Verbose `
                                'Restoring PowerShell window focus'

                            GenXdev\Set-WindowPosition -SetForeground -FocusWindow
                        }
                        catch {
                            Microsoft.PowerShell.Utility\Write-Warning `
                                $_.Exception.Message
                        }
                    }
                }
                catch {
                    Microsoft.PowerShell.Utility\Write-Warning $_.Exception.Message
                }
            }
        }
    }

}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Send-WakeOnLan.ps1
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

<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Send-WakeOnLan.ps1
Original author           : René Vaessen / GenXdev
Version                   : 3.26.2026
Copyright (c)  René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

<#
.SYNOPSIS
Sends a Wake-on-LAN magic packet to wake up remote computers on the network.

.DESCRIPTION
Constructs and broadcasts a Wake-on-LAN (WOL) magic packet to the specified
MAC address(es). The magic packet is a UDP broadcast containing the target
MAC address repeated 16 times, which triggers supported network interfaces to
power on the computer. Supports custom broadcast addresses and ports.

.PARAMETER MacAddress
One or more MAC addresses to send the magic packet to. Accepts both colon (:)
and dash (-) separated formats (e.g., 00:11:22:33:44:55 or 00-11-22-33-44-55).

.PARAMETER BroadcastAddress
The broadcast IP address to send the magic packet to. Default is
255.255.255.255 which broadcasts to the local network.

.PARAMETER Port
The UDP port to send the magic packet to. Default is port 4000.

.EXAMPLE
Send-WakeOnLan -MacAddress "00:11:22:33:44:55"

Sends a magic packet to wake the computer with the specified MAC address.

.EXAMPLE
"00:11:22:33:44:55", "AA:BB:CC:DD:EE:FF" | Send-WakeOnLan -Port 9

Sends magic packets to multiple computers on port 9 via pipeline input.
#>
function Send-WakeOnLan {
    param
    (
        [Parameter(
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = 'One or more MAC addresses to send the magic ' +
                'packet to (e.g., 00:11:22:33:44:55)'
        )]
        [ValidatePattern('^([0-9A-F]{2}[:-]){5}([0-9A-F]{2})$')]
        [string[]]
        $MacAddress,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The broadcast IP address to send the magic ' +
                'packet to (default: 255.255.255.255)'
        )]
        [ValidatePattern('^([0-9]{1,3}\.){3}([0-9]{1,3})$')]
        [string]$BroadcastAddress = "255.255.255.255",
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'The UDP port to send the magic packet to ' +
                '(default: 4000)'
        )]
        [ValidateRange(1, 65535)]
        [int]$Port = 4000
    )

    begin {
        # instantiate a UDP client:
        $UDPclient = [System.Net.Sockets.UdpClient]::new()
    }
    process {
        foreach ($m in $MacAddress) {
            try {
                $currentMacAddress = $m

                # get byte array from mac address:
                $mac = $currentMacAddress -split '[:-]' |
                    # convert the hex number into byte:
                    Microsoft.PowerShell.Core\ForEach-Object {
                        [System.Convert]::ToByte($_, 16)
                    }

                #region compose the "magic packet"

                # create a byte array with 102 bytes initialized to 255 each:
                $packet = [byte[]](, 0xFF * 102)

                # leave the first 6 bytes untouched, and
                # repeat the target mac address bytes in bytes 7 through 102:
                6..101 | Microsoft.PowerShell.Core\ForEach-Object {
                    # $_ is indexing in the byte array,
                    # $_ % 6 produces repeating indices between 0 and 5
                    # (modulo operator)
                    $packet[$_] = $mac[($_ % 6)]
                }

                #endregion

                # connect to port 400 on broadcast address:
                $UDPclient.Connect(([System.Net.IPAddress]::Parse($BroadcastAddress)), $Port)

                # send the magic packet to the broadcast address:
                $null = $UDPclient.Send($packet, $packet.Length)
                Microsoft.PowerShell.Utility\Write-Verbose "sent magic packet to $currentMacAddress..."
            }
            catch {
                Microsoft.PowerShell.Utility\Write-Warning "Unable to send ${mac}: $_"
            }
        }
    }
    end {
        # release the UDF client and free its memory:
        $UDPclient.Close()
        $UDPclient.Dispose()
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Set-ClipboardFiles.ps1
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
Sets files to the Windows clipboard for file operations like copy/paste.

.DESCRIPTION
This function copies one or more file paths to the Windows clipboard,
enabling file operations like paste in Windows Explorer. It handles both
STA and MTA threading modes automatically, ensuring compatibility across
different PowerShell execution contexts. The function validates file
existence before adding paths to the clipboard.

.PARAMETER InputObject
Array of file paths to add to the clipboard. Accepts pipeline input and
supports various aliases for compatibility with different object properties.

.EXAMPLE
Set-ClipboardFiles -InputObject "C:\temp\file1.txt", "C:\temp\file2.txt"
Sets two files to the clipboard using full parameter names.

.EXAMPLE
"C:\temp\file1.txt", "C:\temp\file2.txt" | Set-ClipboardFiles
Sets files to clipboard using pipeline input.

.EXAMPLE
ls * -file | select -first 5 | Set-ClipboardFiles
Sets files to clipboard using pipeline input, selecting the first 5 files
#>
function Set-ClipboardFiles {

    [CmdletBinding(SupportsShouldProcess)]
    [Alias('setclipfiles', 'scbf')]
    [Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSUseSingularNouns', '')]
    param (
        [Parameter(
            Position = 0,
            Mandatory = $true,
            ValueFromPipeline = $true,
            ValueFromPipelineByPropertyName = $true,
            HelpMessage = ('Array of file paths to add to the clipboard')
        )]
        [Alias('Path', 'FullName', 'ImageFileName', 'FileName')]
        [string[]]$InputObject
    )

    begin {

        # initialize array to collect all file paths from pipeline and parameters
        $allFilePaths = @()
    }

    process {

        # collect file paths from pipeline input or direct parameter
        if ($null -ne $InputObject) {
            $allFilePaths += $InputObject
        }
    }

    end {

        # exit early if no file paths collected
        if ($allFilePaths.Count -eq 0) {
            return
        }

        # check if we should proceed with the operation
        if (-not $PSCmdlet.ShouldProcess("$($allFilePaths.Count) file(s)", 'Set to clipboard')) {
            return
        }

        $done = @{}
        # validate each file path and collect only existing files
        $validFilePaths = $allFilePaths |
            Microsoft.PowerShell.Core\ForEach-Object {

                # expand the file path to absolute path
                $path = GenXdev\Expand-Path $_

                if ($done.ContainsKey($path)) {
                    # skip if this path has already been processed
                    return
                }

                # mark this path as processed
                $done[$path] = $true

                # check if file exists and include in collection
                if ([System.IO.File]::Exists($path)) {

                    $path
                    return
                }

                if ([System.IO.Directory]::Exists($path)) {

                    # if it's a directory, return it as well
                    $path
                    return
                }
            }

        # exit if no valid file paths found
        if (($null -eq $validFilePaths) -or
            ($validFilePaths.Count -eq 0)) {

            return
        }

        # get current thread apartment state for clipboard compatibility
        $apartmentState = [System.Threading.Thread]::CurrentThread.GetApartmentState()

        # check if running in single-threaded apartment mode
        if ($apartmentState -eq 'STA') {

            # load the system.windows.forms assembly for clipboard operations
            Microsoft.PowerShell.Utility\Add-Type -AssemblyName System.Windows.Forms

            # create a string collection for the file paths
            $fileCollection = Microsoft.PowerShell.Utility\New-Object `
                System.Collections.Specialized.StringCollection

            # add each valid file path to the collection
            $validFilePaths |
                Microsoft.PowerShell.Core\ForEach-Object {

                    $null = $fileCollection.Add($_)
                }

            # output verbose information about direct clipboard operation
            Microsoft.PowerShell.Utility\Write-Verbose `
            ('Setting clipboard directly in STA mode with ' +
                "$($fileCollection.Count) files")

            # set clipboard directly in sta mode
            [System.Windows.Forms.Clipboard]::SetFileDropList($fileCollection)
        }
        else {

            # output verbose information about sta subprocess requirement
            Microsoft.PowerShell.Utility\Write-Verbose (
                'Current thread is MTA mode, launching STA subprocess ' +
                'for clipboard operation')

            # convert file paths to json for subprocess parameter
            $jsonFilePaths = $validFilePaths | Microsoft.PowerShell.Utility\ConvertTo-Json -Compress

            # create a temporary file to store the json data
            $tempFile = GenXdev\Expand-Path ([System.IO.Path]::GetTempFileName()) -DeleteExistingFile -CreateDirectory
            $jsonFilePaths | Microsoft.PowerShell.Utility\Out-File $tempFile

            # define the powershell command to execute in sta mode
            $command = (
                'Microsoft.PowerShell.Utility\Add-Type -AssemblyName System.Windows.Forms;' +
                "`$InputObject = Microsoft.PowerShell.Management\Get-Content -LiteralPath '$tempFile' | " +
                'Microsoft.PowerShell.Utility\ConvertFrom-Json -ErrorAction SilentlyContinue;' +
                "Microsoft.PowerShell.Management\Remove-Item -LiteralPath '$tempFile' -Force -ErrorAction SilentlyContinue;" +
                "`$fileCollection = Microsoft.PowerShell.Utility\New-Object System.Collections.Specialized.StringCollection;" +
                "`$InputObject | Microsoft.PowerShell.Core\ForEach-Object { `$null = `$fileCollection.Add(`$_) };" +
                "[System.Windows.Forms.Clipboard]::SetFileDropList(`$fileCollection);"
            );

            try {

                # output verbose information about subprocess execution
                Microsoft.PowerShell.Utility\Write-Verbose `
                    'Executing STA subprocess for clipboard operation'

                # prepare arguments for powershell subprocess
                $pwshArgs = @(
                    '-STA',
                    '-NoProfile',
                    '-Command',
                    $command
                )

                # start powershell subprocess in sta mode and wait for completion
                Microsoft.PowerShell.Management\Start-Process `
                    -FilePath 'pwsh' `
                    -ArgumentList $pwshArgs `
                    -NoNewWindow `
                    -Wait
            }
            catch {

                # cleanup temp file in case of error
                if (Microsoft.PowerShell.Management\Test-Path -LiteralPath $tempFile) {
                    Microsoft.PowerShell.Management\Remove-Item -LiteralPath $tempFile -Force -ErrorAction SilentlyContinue
                }

                # output error if subprocess execution fails
                Microsoft.PowerShell.Utility\Write-Error `
                    "Error invoking pwsh: $_"
            }
        }
    }
}

<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Set-KnownFolderPath.ps1
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


###############################################################################define known folder guids for windows shell api
$knownFolders = @{
    '3DObjects'             = '31C0DD25-9439-4F12-BF41-7FF4EDA38722';
    'AddNewPrograms'        = 'de61d971-5ebc-4f02-a3a9-6c82895e5c04';
    'AdminTools'            = '724EF170-A42D-4FEF-9F26-B60E846FBA4F';
    'AppUpdates'            = 'a305ce99-f527-492b-8b1a-7e76fa98d6e4';
    'CDBurning'             = '9E52AB10-F80D-49DF-ACB8-4330F5687855';
    'ChangeRemovePrograms'  = 'df7266ac-9274-4867-8d55-3bd661de872d';
    'CommonAdminTools'      = 'D0384E7D-BAC3-4797-8F14-CBA229B392B5';
    'CommonOEMLinks'        = 'C1BAE2D0-10DF-4334-BEDD-7AA20B227A9D';
    'CommonPrograms'        = '0139D44E-6AFE-49F2-8690-3DAFCAE6FFB8';
    'CommonStartMenu'       = 'A4115719-D62E-491D-AA7C-E74B8BE3B067';
    'CommonStartup'         = '82A5EA35-D9CD-47C5-9629-E15D2F714E6E';
    'CommonTemplates'       = 'B94237E7-57AC-4347-9151-B08C6C32D1F7';
    'ComputerFolder'        = '0AC0837C-BBF8-452A-850D-79D08E667CA7';
    'ConflictFolder'        = '4bfefb45-347d-4006-a5be-ac0cb0567192';
    'ConnectionsFolder'     = '6F0CD92B-2E97-45D1-88FF-B0D186B8DEDD';
    'Contacts'              = '56784854-C6CB-462b-8169-88E350ACB882';
    'ControlPanelFolder'    = '82A74AEB-AEB4-465C-A014-D097EE346D63';
    'Cookies'               = '2B0F765D-C0E9-4171-908E-08A611B84FF6';
    'Desktop'               = 'B4BFCC3A-DB2C-424C-B029-7FE99A87C641';
    'Documents'             = 'FDD39AD0-238F-46AF-ADB4-6C85480369C7';
    'Downloads'             = '374DE290-123F-4565-9164-39C4925E467B';
    'Favorites'             = '1777F761-68AD-4D8A-87BD-30B759FA33DD';
    'Fonts'                 = 'FD228CB7-AE11-4AE3-864C-16F3910AB8FE';
    'Games'                 = 'CAC52C1A-B53D-4edc-92D7-6B2E8AC19434';
    'GameTasks'             = '054FAE61-4DD8-4787-80B6-090220C4B700';
    'History'               = 'D9DC8A3B-B784-432E-A781-5A1130A75963';
    'InternetCache'         = '352481E8-33BE-4251-BA85-6007CAEDCF9D';
    'InternetFolder'        = '4D9F7874-4E0C-4904-967B-40B0D20C3E4B';
    'Links'                 = 'bfb9d5e0-c6a9-404c-b2b2-ae6db6af4968';
    'LocalAppData'          = 'F1B32785-6FBA-4FCF-9D55-7B8E7F157091';
    'LocalAppDataLow'       = 'A520A1A4-1780-4FF6-BD18-167343C5AF16';
    'LocalizedResourcesDir' = '2A00375E-224C-49DE-B8D1-440DF7EF3DDC';
    'Music'                 = '4BD8D571-6D19-48D3-BE97-422220080E43';
    'NetHood'               = 'C5ABBF53-E17F-4121-8900-86626FC2C973';
    'NetworkFolder'         = 'D20BEEC4-5CA8-4905-AE3B-BF251EA09B53';
    'OriginalImages'        = '2C36C0AA-5812-4b87-BFD0-4CD0DFB19B39';
    'PhotoAlbums'           = '69D2CF90-FC33-4FB7-9A0C-EBB0F0FCB43C';
    'Pictures'              = '33E28130-4E1E-4676-835A-98395C3BC3BB';
    'Playlists'             = 'DE92C1C7-837F-4F69-A3BB-86E631204A23';
    'PrintersFolder'        = '76FC4E2D-D6AD-4519-A663-37BD56068185';
    'PrintHood'             = '9274BD8D-CFD1-41C3-B35E-B13F55A758F4';
    'Profile'               = '5E6C858F-0E22-4760-9AFE-EA3317B67173';
    'ProgramData'           = '62AB5D82-FDC1-4DC3-A9DD-070D1D495D97';
    'ProgramFiles'          = '905e63b6-c1bf-494e-b29c-65b732d3d21a';
    'ProgramFilesX64'       = '6D809377-6AF0-444b-8957-A3773F02200E';
    'ProgramFilesX86'       = '7C5A40EF-A0FB-4BFC-874A-C0F2E0B9FA8E';
    'ProgramFilesCommon'    = 'F7F1ED05-9F6D-47A2-AAAE-29D317C6F066';
    'ProgramFilesCommonX64' = '6365D5A7-0F0D-45E5-87F6-0DA56B6A4F7D';
    'ProgramFilesCommonX86' = 'DE974D24-D9C6-4D3E-BF91-F4455120B917';
    'Programs'              = 'A77F5D77-2E2B-44C3-A6A2-ABA601054A51';
    'Public'                = 'DFDF76A2-C82A-4D63-906A-5644AC457385';
    'PublicDesktop'         = 'C4AA340D-F20F-4863-AFEF-F87EF2E6BA25';
    'PublicDocuments'       = 'ED4824AF-DCE4-45A8-81E2-FC7965083634';
    'PublicDownloads'       = '3D644C9B-1FB8-4f30-9B45-F670235F79C0';
    'PublicGameTasks'       = 'DEBF2536-E1A8-4c59-B6A2-414586476AEA';
    'PublicMusic'           = '3214FAB5-9757-4298-BB61-92A9DEAA44FF';
    'PublicPictures'        = 'B6EBFB86-6907-413C-9AF7-4FC2ABF07CC5';
    'PublicVideos'          = '2400183A-6185-49FB-A2D8-4A392A602BA3';
    'QuickLaunch'           = '52a4f021-7b75-48a9-9f6b-4b87a210bc8f';
    'Recent'                = 'AE50C081-EBD2-438A-8655-8A092E34987A';
    'RecycleBinFolder'      = 'B7534046-3ECB-4C18-BE4E-64CD4CB7D6AC';
    'ResourceDir'           = '8AD10C31-2ADB-4296-A8F7-E4701232C972';
    'RoamingAppData'        = '3EB685DB-65F9-4CF6-A03A-E3EF65729F3D';
    'SampleMusic'           = 'B250C668-F57D-4EE1-A63C-290EE7D1AA1F';
    'SamplePictures'        = 'C4900540-2379-4C75-844B-64E6FAF8716B';
    'SamplePlaylists'       = '15CA69B3-30EE-49C1-ACE1-6B5EC372AFB5';
    'SampleVideos'          = '859EAD94-2E85-48AD-A71A-0969CB56A6CD';
    'SavedGames'            = '4C5C32FF-BB9D-43b0-B5B4-2D72E54EAAA4';
    'SavedSearches'         = '7d1d3a04-debb-4115-95cf-2f29da2920da';
    'SEARCH_CSC'            = 'ee32e446-31ca-4aba-814f-a5ebd2fd6d5e';
    'SEARCH_MAPI'           = '98ec0e18-2098-4d44-8644-66979315a281';
    'SearchHome'            = '190337d1-b8ca-4121-a639-6d472d16972a';
    'SendTo'                = '8983036C-27C0-404B-8F08-102D10DCFD74';
    'SidebarDefaultParts'   = '7B396E54-9EC5-4300-BE0A-2482EBAE1A26';
    'SidebarParts'          = 'A75D362E-50FC-4fb7-AC2C-A8BEAA314493';
    'StartMenu'             = '625B53C3-AB48-4EC1-BA1F-A1EF4146FC19';
    'Startup'               = 'B97D20BB-F46A-4C97-BA10-5E3608430854';
    'SyncManagerFolder'     = '43668BF8-C14E-49B2-97C9-747784D784B7';
    'SyncResultsFolder'     = '289a9a43-be44-4057-a41b-587a76d7e7f9';
    'SyncSetupFolder'       = '0F214138-B1D3-4a90-BBA9-27CBC0C5389A';
    'System'                = '1AC14E77-02E7-4E5D-B744-2EB1AE5198B7';
    'SystemX86'             = 'D65231B0-B2F1-4857-A4CE-A8E7C6EA7D27';
    'Templates'             = 'A63293E8-664E-48DB-A079-DF759E0509F7';
    'TreeProperties'        = '5b3749ad-b49f-49c1-83eb-15370fbd4882';
    'UserProfiles'          = '0762D272-C50A-4BB0-A382-697DCD729B80';
    'UsersFiles'            = 'f3ce0f7c-4901-4acc-8648-d5d44b04ef8f';
    'Videos'                = '18989B1D-99B5-455B-841C-AB7C74E4DDFC';
    'Windows'               = 'F38BF404-1D43-42F2-9305-67DE0B28FC23';
}


<#
.SYNOPSIS
Modifies the physical path of a Windows known folder.

.DESCRIPTION
Uses the Windows Shell32 API to relocate system folders like Documents,
Downloads, Desktop, or other known Windows folders to a new location. The
function validates the target path exists, looks up the folder's unique GUID
from the comprehensive known folders registry, and uses the SHSetKnownFolderPath
API to perform the relocation. Common use cases include moving user folders to
a different drive for space management or organization. Exercise caution when
moving system-critical folders as this may affect system stability.

.PARAMETER KnownFolder
The name of the known folder to relocate. Supports all Windows known folders
including user folders (Documents, Downloads, Desktop, Pictures, Videos,
Music), system folders (Windows, System, ProgramFiles), and special folders
(Recent, Favorites, SendTo, etc.). Use with caution as moving certain system
folders may cause instability.

.PARAMETER Path
The new physical file system path where the known folder should be located.
The path must exist before attempting the move operation. The function will
throw an error if the path is invalid or inaccessible.

.EXAMPLE
Set-KnownFolderPath -KnownFolder 'Documents' -Path 'D:\UserDocs'

.EXAMPLE
Set-KnownFolderPath Downloads 'E:\Downloads'
#>
function Set-KnownFolderPath {

    [CmdletBinding(SupportsShouldProcess = $true, ConfirmImpact = 'High')]
    param(
        [Parameter(
            Position = 0,
            Mandatory = $true,
            HelpMessage = 'Known folder to modify'
        )]
        [ValidateSet('3DObjects', 'AddNewPrograms', 'AdminTools',
            'AppUpdates', 'CDBurning', 'ChangeRemovePrograms',
            'CommonAdminTools', 'CommonOEMLinks', 'CommonPrograms',
            'CommonStartMenu', 'CommonStartup', 'CommonTemplates',
            'ComputerFolder', 'ConflictFolder', 'ConnectionsFolder',
            'Contacts', 'ControlPanelFolder', 'Cookies', 'Desktop',
            'Documents', 'Downloads', 'Favorites', 'Fonts', 'Games',
            'GameTasks', 'History', 'InternetCache', 'InternetFolder',
            'Links', 'LocalAppData', 'LocalAppDataLow',
            'LocalizedResourcesDir', 'Music', 'NetHood',
            'NetworkFolder', 'OriginalImages', 'PhotoAlbums',
            'Pictures', 'Playlists', 'PrintersFolder', 'PrintHood',
            'Profile', 'ProgramData', 'ProgramFiles', 'ProgramFilesX64',
            'ProgramFilesX86', 'ProgramFilesCommon',
            'ProgramFilesCommonX64', 'ProgramFilesCommonX86',
            'Programs', 'Public', 'PublicDesktop', 'PublicDocuments',
            'PublicDownloads', 'PublicGameTasks', 'PublicMusic',
            'PublicPictures', 'PublicVideos', 'QuickLaunch', 'Recent',
            'RecycleBinFolder', 'ResourceDir', 'RoamingAppData',
            'SampleMusic', 'SamplePictures', 'SamplePlaylists',
            'SampleVideos', 'SavedGames', 'SavedSearches', 'SEARCH_CSC',
            'SEARCH_MAPI', 'SearchHome', 'SendTo', 'SidebarDefaultParts',
            'SidebarParts', 'StartMenu', 'Startup', 'SyncManagerFolder',
            'SyncResultsFolder', 'SyncSetupFolder', 'System',
            'SystemX86', 'Templates', 'TreeProperties', 'UserProfiles',
            'UsersFiles', 'Videos', 'Windows')]
        [string] $KnownFolder,
        [Parameter(
            Position = 1,
            Mandatory = $true,
            HelpMessage = 'New path for the known folder'
        )]
        [ValidateNotNullOrEmpty()]
        [Alias('FullName')]
        [string] $Path
    )

    begin {

        # check if shell32 api type is already loaded to avoid redefining
        $type = ([System.Management.Automation.PSTypeName]`
                'KnownFolders.SHSetKnownFolderPathPS').Type

        if (-not $type) {

            # define windows api function signature for shell32.dll import
            $signature = @'
[DllImport("shell32.dll")]
public extern static int SHSetKnownFolderPath(ref Guid folderId, uint flags,
    IntPtr token, [MarshalAs(UnmanagedType.LPWStr)] string path);
'@

            # load the shell32 api function into powershell runtime
            $type = Microsoft.PowerShell.Utility\Add-Type `
                -MemberDefinition $signature `
                -Namespace 'KnownFolders' `
                -Name 'SHSetKnownFolderPathPS' `
                -PassThru
        }

        Microsoft.PowerShell.Utility\Write-Verbose (
            'Starting known folder path change operation'
        )

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Target folder: $KnownFolder"
        )

        Microsoft.PowerShell.Utility\Write-Verbose (
            "New path: $Path"
        )
    }

    process {

        # verify the destination path exists before attempting to move
        if (-not (Microsoft.PowerShell.Management\Test-Path `
                    -LiteralPath $Path `
                    -PathType Container)) {

            $msg = "Could not find folder path: $Path"

            Microsoft.PowerShell.Utility\Write-Error -Message $msg

            throw [System.IO.DirectoryNotFoundException] $msg
        }

        # lookup the folder's unique guid from our hash table
        $knownFolderId = $knownFolders[$KnownFolder]

        Microsoft.PowerShell.Utility\Write-Verbose (
            "Found folder GUID: $knownFolderId"
        )

        if ($PSCmdlet.ShouldProcess($Path, "Set $KnownFolder location")) {

            # call shell32 api to perform the folder relocation
            # parameters: folderId (ref), flags (0), token (0), new path
            $result = $type::SHSetKnownFolderPath([ref]$knownFolderId, 0, 0,
                $Path)

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Shell API call completed with result: $result"
            )

            return $result
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Set-TaskbarAlignment.ps1
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
Configures Windows 11+ taskbar alignment between center and left positions.

.DESCRIPTION
Sets the taskbar alignment in Windows 11 and newer versions by modifying the
registry key 'TaskbarAl' under HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\
Explorer\Advanced. The alignment can be set to either center (value 1) or left
(value 0).

.PARAMETER Justify
Specifies the desired taskbar alignment: 'Center' or 'Left'. This setting is
converted to the appropriate registry value (1 for Center, 0 for Left).

.EXAMPLE
Set-TaskbarAlignment -Justify Left
Sets the Windows 11 taskbar to left alignment

.EXAMPLE
Set-TaskAlign Center -WhatIf
Shows what would happen if taskbar was set to center alignment
#>
function Set-TaskbarAlignment {

    [CmdletBinding(SupportsShouldProcess = $true)]
    param(
        [Parameter(
            Mandatory = $true,
            Position = 0,
            HelpMessage = 'The taskbar alignment (Center or Left)'
        )]
        [ValidateSet('Center', 'Left')]
        [string] $Justify
    )

    begin {

        # store the registry path for taskbar settings
        $regPath = 'HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced'

        # log the requested alignment change for troubleshooting
        Microsoft.PowerShell.Utility\Write-Verbose "Setting taskbar alignment to: $Justify"
    }


    process {

        # convert the alignment choice to its corresponding registry value
        $value = if ($Justify -eq 'Left') { 0 } else { 1 }

        # check if we should proceed with the registry modification
        if ($PSCmdlet.ShouldProcess(
                'Windows Taskbar Alignment',
                "Set alignment to $Justify"
            )) {

            # update the registry key
            $null = Microsoft.PowerShell.Management\Set-ItemProperty -Path $regPath `
                -Name 'TaskbarAl' `
                -Value $value

            Microsoft.PowerShell.Utility\Write-Verbose "Registry value 'TaskbarAl' set to: $value"
        }
    }

    end {
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Set-WindowPosition.ps1
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
Positions and resizes windows when explicit positioning parameters are provided.

.DESCRIPTION
Provides precise control over window positioning and sizing when positioning
parameters are specified. Supports multiple monitors, border removal, and
various preset positions like left/right split, top/bottom split, and center
placement. Windows can be positioned by coordinates or using predefined layouts.
Without positioning parameters, the function performs no action on the window.

.PARAMETER ProcessName
The process name of the window to position

.PARAMETER Process
Process or processes whose windows need positioning

.PARAMETER WindowHelper
Window helper object for direct window manipulation

.PARAMETER Monitor
Monitor selection: 0=primary, 1+=specific monitor, -1=current, -2=secondary

.PARAMETER NoBorders
Removes window borders and title bar for a cleaner appearance

.PARAMETER Width
Window width in pixels

.PARAMETER Height
Window height in pixels

.PARAMETER X
Window horizontal position in pixels

.PARAMETER Y
Window vertical position in pixels

.PARAMETER Left
Places window on left half of screen

.PARAMETER Right
Places window on right half of screen

.PARAMETER Top
Places window on top half of screen

.PARAMETER Bottom
Places window on bottom half of screen

.PARAMETER Centered
Centers window on screen

.PARAMETER Fullscreen
Maximizes window to fill entire screen

.PARAMETER RestoreFocus
Returns focus to PowerShell window after positioning

.PARAMETER PassThru
Returns window helper object for further manipulation

.PARAMETER SideBySide
Will either set the window fullscreen on a different monitor than Powershell, or
side by side with Powershell on the same monitor

.PARAMETER FocusWindow
Focus the window after positioning

.PARAMETER SetForeground
Set the window to foreground after positioning

.PARAMETER Minimize
Minimizes the window after positioning

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER KeysToSend
Keystrokes to send to the window after positioning

.PARAMETER SendKeyEscape
Escape control characters and modifiers when sending keys

.PARAMETER SendKeyHoldKeyboardFocus
Hold keyboard focus on target window when sending keys

.PARAMETER SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys

.PARAMETER SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys

.PARAMETER SessionOnly
Switch to use alternative settings stored in session for AI preferences

.PARAMETER ClearSession
Switch to clear alternative settings stored in session for AI preferences

.PARAMETER SkipSession
Switch to store settings only in persistent preferences without affecting
session

.PARAMETER OnlyOutputCoords
Only output the calculated coordinates and size without actually positioning
the window. Returns a hashtable with Left, Top, Width, and Height properties
representing global (multi-monitor) coordinates

.EXAMPLE
Set-WindowPosition -Centered -Monitor 0 -NoBorders
Position PowerShell window centered on primary monitor with no borders

.EXAMPLE
Get-Process notepad,calc | wp -m 1 -l,-r
Split notepad and calc side by side on second monitor using aliases

.EXAMPLE
Set-WindowPosition -ProcessName notepad
Does nothing - no positioning parameters specified

.EXAMPLE
Set-WindowPosition -ProcessName notepad -KeysToSend "Hello World"
Sends keystrokes to notepad window without repositioning it

.EXAMPLE
Set-WindowPosition -ProcessName notepad -Left -Monitor 1 -OnlyOutputCoords
Returns the calculated coordinates where notepad would be placed on the left
side of monitor 1 without actually moving the window
#>
function Set-WindowPosition {

    [CmdletBinding(DefaultParameterSetName = 'Default', SupportsShouldProcess = $true)]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    [Alias('wp')]
    param(
        [parameter(
            ParameterSetName = 'ProcessName',
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The process name of the window to position',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            ValueFromRemainingArguments = $false
        )]
        [SupportsWildcards()]
        [Alias('Name')]
        [string] $ProcessName,
        [parameter(
            ParameterSetName = 'Process',
            Mandatory = $false,
            HelpMessage = 'The process of the window to position',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            ValueFromRemainingArguments = $false
        )]
        [ValidateNotNull()]
        [System.Diagnostics.Process] $Process,
        [parameter(
            ParameterSetName = 'WindowHelper',
            Mandatory = $false,
            HelpMessage = 'Get-Window helper object for direct window manipulation',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            ValueFromRemainingArguments = $false
        )]
        [ValidateNotNull()]
        [GenXdev.Helpers.WindowObj[]] $WindowHelper,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Monitor selection: 0=primary, 1+=specific monitor, -1=current, -2=secondary'
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -1,
        [Alias('nb')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the window'
        )]
        [switch] $NoBorders,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Window width in pixels'
        )]
        [int] $Width = -1,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Window height in pixels'
        )]
        [int] $Height = -999999,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Window horizontal position in pixels'
        )]
        [int] $X = -999999,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Window vertical position in pixels'
        )]
        [int] $Y = -999999,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the left side of the screen'
        )]
        [switch] $Left,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the right side of the screen'
        )]
        [switch] $Right,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the top side of the screen'
        )]
        [switch] $Top,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the bottom side of the screen'
        )]
        [switch] $Bottom,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Place window in the center of the screen'
        )]
        [switch] $Centered,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Maximize the window'
        )]
        [Alias('fs')]
        [switch] $Fullscreen,

        [parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch]$RestoreFocus,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Returns the window helper for each process'
        )]
        [Alias('pt')]
        [switch]$PassThru,
        [parameter(
            Mandatory = $false,
            HelpMessage = ('Will either set the window fullscreen on a different ' +
                'monitor than Powershell, or side by side with Powershell on the ' +
                'same monitor')
        )]
        [Alias('sbs')]
        [switch]$SideBySide,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the window after opening'
        )]
        [Alias('fw','focus')]
        [switch] $FocusWindow,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window to foreground after opening'
        )]
        [Alias('fg')]
        [switch] $SetForeground,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Minimizes the window after positioning'
        )]
        [switch] $Minimize,
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
            HelpMessage = ('Keystrokes to send to the Window, ' +
                'see documentation for cmdlet GenXdev\Send-Key')
        )]
        [string[]] $KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on target window when sending keys'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter when sending keys'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Delay between different input strings in ' +
                'milliseconds when sending keys')
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $SessionOnly,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $ClearSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences without ' +
                'affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession,
        [Parameter(
            Mandatory = $false,
            HelpMessage = ('Only output the calculated coordinates and size ' +
                'without actually positioning the window')
        )]
        [switch] $OnlyOutputCoords
    )

    begin {

        # initialize screen selection variable for monitor targeting
        $screen = $null
        [int] $setDefaultMonitor = $Global:DefaultSecondaryMonitor -is [int] ?
            (
                $Global:DefaultSecondaryMonitor
            ):
            2;

        # retrieve all available monitors from the system
        $allScreens = @([WpfScreenHelper.Screen]::AllScreens |
                Microsoft.PowerShell.Core\ForEach-Object { $PSItem })

        # log the total number of detected monitors for debugging
        Microsoft.PowerShell.Utility\Write-Verbose ("Found $($allScreens.Count) " +
            "monitors available for window positioning")

        # enumerate and log details of each available monitor
        for ($i = 0; $i -lt $allScreens.Count; $i++) {

            # get current monitor information for logging
            $screenInfo = $allScreens[$i]

            # log monitor specifications including size, position and device name
            Microsoft.PowerShell.Utility\Write-Verbose ("Monitor ${i}: " +
                "$($screenInfo.WorkingArea.Width)x$($screenInfo.WorkingArea.Height) " +
                "at ($($screenInfo.WorkingArea.X),$($screenInfo.WorkingArea.Y)) " +
                "Device: $($screenInfo.DeviceName)")
        }


        # obtain reference to powershell main window for focus restoration
        $powerShellWindow = GenXdev\Get-PowershellMainWindow

        # log powershell window information if successfully detected
        if ($null -ne $powerShellWindow) {

            Microsoft.PowerShell.Utility\Write-Verbose ("PowerShell window " +
                "found - Handle: $($powerShellWindow.Handle), " +
                "Position: $($powerShellWindow.Position().X)," +
                "$($powerShellWindow.Position().Y), " +
                "Size: $($powerShellWindow.Size().Width)x" +
                "$($powerShellWindow.Size().Height)")
        }
        else {

            # log warning when powershell window cannot be detected
            Microsoft.PowerShell.Utility\Write-Verbose ("PowerShell window " +
                "not found or not available")
        }

        # copy window positioning parameters for validation and logging
        $wpparams = GenXdev\Copy-IdenticalParamValues `
                    -BoundParameters $PSBoundParameters `
                    -FunctionName 'GenXdev\Set-WindowPosition'

        # log which positioning parameters were provided by the user
        Microsoft.PowerShell.Utility\Write-Verbose ("Window positioning " +
            "parameters available: $($wpparams.Keys -join ', ')")

        # determine if side-by-side mode should be forced due to monitor limitations
        $ForcedSideBySide = ($Monitor -eq -2) -and (
               ($allScreens.Count -lt 2)  -or
               (-not ($setDefaultMonitor -is [int] -and ($setDefaultMonitor -gt 0)))
        )

        if ($ForcedSideBySide) {

            Microsoft.PowerShell.Utility\Write-Verbose ("Forcing side-by-side " +
                "positioning: insufficient monitors ($($allScreens.Count)) or " +
                "invalid DefaultSecondaryMonitor " +
                "($setDefaultMonitor)")
        }

        # Store side-by-side request for processing in the process block
        # where we can handle both coordinate-only and actual window modes
        $SideBySideRequested = $SideBySide -or $ForcedSideBySide

        if ($SideBySideRequested -and (-not $OnlyOutputCoords)) {
            # Only configure side-by-side settings when actually positioning windows
            if ($null -ne $powerShellWindow) {
                Microsoft.PowerShell.Utility\Write-Verbose ("Configuring " +
                    "side-by-side positioning - PowerShell monitor: " +
                    "$($powerShellWindow.GetCurrentMonitor()), " +
                    "Target monitor: $($powerShellWindow.GetCurrentMonitor() + 1)")

                $SideBySide = $true
                $Monitor = $powerShellWindow.GetCurrentMonitor() + 1
                $SetForeground = $true
                $RestoreFocus = $true
                $SetRestored = $true
                $Maximize = $false
                $FullScreen = $false
                if ($null -ne $KeysToSend -and $KeysToSend.Count -eq 1 -and $KeysToSend[0] -in @('f', '{F11}')) {
                    $KeysToSend = $null
                }

                Microsoft.PowerShell.Utility\Write-Verbose ("Side-by-side final " +
                    "settings: Monitor=$Monitor, SetForeground=$SetForeground, " +
                    "RestoreFocus=$RestoreFocus, Maximize=$Maximize")
            } else {
                Microsoft.PowerShell.Utility\Write-Verbose ("Side-by-side requested but PowerShell window not available - deferring to process block")
            }
        }

        # preserve bound parameters for use in subsequent function calls
        $myPSBoundParameters = $PSBoundParameters

        # determine if process lookup should be skipped for coordinate-only calculations
        # coordinate calculation mode only requires positioning math without window interaction
        $skipProcessLookup = $OnlyOutputCoords

        # resolve target process based on the parameter set specified by the user
        switch ($PSCmdlet.ParameterSetName) {
            'ProcessName' {
                # handle process lookup by name when not in coordinate-only mode
                if (-not $skipProcessLookup) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('ParameterSetName: ProcessName')

                    # search for processes matching the specified name with active windows
                    $foundProcess = Microsoft.PowerShell.Management\Get-Process `
                        -Name $ProcessName `
                        -ErrorAction SilentlyContinue |
                        Microsoft.PowerShell.Core\Where-Object `
                            -Property 'MainWindowHandle' `
                            -NE 0 |
                        Microsoft.PowerShell.Utility\Sort-Object `
                            -Property 'StartTime' `
                            -Descending |
                        Microsoft.PowerShell.Utility\Select-Object `
                            -First 1

                    # validate that a matching process with a window was found
                    if ($null -eq $foundProcess) {
                        Microsoft.PowerShell.Utility\Write-Verbose ("No process found with name '$ProcessName' (ProcessName set)")
                        Microsoft.PowerShell.Utility\Write-Error ('No process found with ' + "name '$ProcessName'")
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Verbose ("Process found: $($foundProcess.ProcessName) with ID $($foundProcess.Id) (ProcessName set)")
                        $Process = $foundProcess
                        Microsoft.PowerShell.Utility\Write-Verbose ('Found process: ' + "$($Process.ProcessName) with ID $($Process.Id)")
                    }
                } else {
                    Microsoft.PowerShell.Utility\Write-Verbose ('OnlyOutputCoords set - skipping process lookup for ProcessName')
                }
                break;
            }
            'Process' {
                if (-not $skipProcessLookup) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('ParameterSetName: Process')

                # get process by id first
                $foundProcess = Microsoft.PowerShell.Management\Get-Process `
                    -Id ($Process.Id) `
                    -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Core\Where-Object `
                        -Property 'MainWindowHandle' `
                        -NE 0

                if ($null -eq $foundProcess) {

                    Microsoft.PowerShell.Utility\Write-Verbose ("No process found by Id $($Process.Id), trying by Name $($Process.Name) (Process set)")

                    # fallback to process by name
                    $foundProcess = Microsoft.PowerShell.Management\Get-Process `
                        -Name ($Process.Name) `
                        -ErrorAction SilentlyContinue |
                        Microsoft.PowerShell.Core\Where-Object `
                            -Property 'MainWindowHandle' `
                            -NE 0

                    if ($null -eq $foundProcess) {

                        Microsoft.PowerShell.Utility\Write-Verbose ("No process found with name '$($Process.Name)' (Process set)")
                        Microsoft.PowerShell.Utility\Write-Error ('No process found with ' + "name '$($Process.Name)'")
                        $Process = $null

                    } else {

                        Microsoft.PowerShell.Utility\Write-Verbose ("Process found by Name: $($foundProcess.ProcessName) with ID $($foundProcess.Id) (Process set)")
                    }
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose ("Process found by Id: $($foundProcess.ProcessName) with ID $($foundProcess.Id) (Process set)")
                    $Process = $foundProcess
                    Microsoft.PowerShell.Utility\Write-Verbose ('Found process: ' + "$($Process.ProcessName) with ID $($Process.Id)")
                }
                } else {
                    Microsoft.PowerShell.Utility\Write-Verbose ('OnlyOutputCoords set - skipping process lookup for Process')
                }
                break;
            }
            'WindowHelper' {
                if (-not $skipProcessLookup) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('ParameterSetName: WindowHelper')

                # get processes from window helper handles
                $foundProcess = Microsoft.PowerShell.Management\Get-Process `
                    -ErrorAction SilentlyContinue |
                    Microsoft.PowerShell.Core\Where-Object `
                        -Property MainWindowHandle `
                        -EQ $WindowHelper.Handle

                if ($null -eq $foundProcess) {

                    Microsoft.PowerShell.Utility\Write-Verbose ("No process found with window handle '$($WindowHelper.Handle)' (WindowHelper set)")
                    Microsoft.PowerShell.Utility\Write-Error ('No process found with ' + "window handle '$($WindowHelper.Handle)'")
                }
                else {

                    Microsoft.PowerShell.Utility\Write-Verbose ("Process found by WindowHelper: $($foundProcess.ProcessName) with ID $($foundProcess.Id) (WindowHelper set)")
                    $Process = $foundProcess
                    Microsoft.PowerShell.Utility\Write-Verbose ('Found process: ' + "$($Process.ProcessName) with ID $($Process.Id)")
                }
                } else {
                    Microsoft.PowerShell.Utility\Write-Verbose ('OnlyOutputCoords set - skipping process lookup for WindowHelper')
                }
                break;
            }
            default {
                if (-not $skipProcessLookup) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('ParameterSetName: default (using PowerShell main window process)')
                    # default to powershell main window process
                    $Process = (GenXdev\Get-PowershellMainWindowProcess)
                } else {
                    Microsoft.PowerShell.Utility\Write-Verbose ('OnlyOutputCoords set - skipping default process lookup')
                }
                break;
            }
        }
    }

    process {



        # handle coordinate-only calculation mode without process interaction
        # this mode calculates positioning coordinates without actually moving any window
        if ($OnlyOutputCoords) {

            Microsoft.PowerShell.Utility\Write-Verbose ('OnlyOutputCoords mode - calculating coordinates without process')

            # Handle side-by-side logic for coordinate calculation
            if ($SideBySideRequested) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Side-by-side requested in coordinate-only mode')

                # For coordinate calculation, assume PowerShell is on primary monitor (index 0)
                # and use sensible defaults for side-by-side positioning
                $powerShellMonitorIndex = 0
                if ($allScreens.Count -gt 1) {
                    # Use next monitor for side-by-side if available
                    $Monitor = 1
                } else {
                    # Single monitor - use half-screen positioning
                    $Monitor = 0
                }

                $SideBySide = $true
                $SetForeground = $true
                $RestoreFocus = $true
                $SetRestored = $true
                $Maximize = $false
                $FullScreen = $false

                # Determine split direction based on primary monitor dimensions
                $primaryScreen = $allScreens[0]
                if ($primaryScreen.WorkingArea.Width -gt $primaryScreen.WorkingArea.Height) {
                    # Wide screen - split horizontally (right side)
                    $Right = $true
                    Microsoft.PowerShell.Utility\Write-Verbose ('Coordinate-only side-by-side: using right half of screen')
                } else {
                    # Tall screen - split vertically (top half)
                    $Top = $true
                    Microsoft.PowerShell.Utility\Write-Verbose ('Coordinate-only side-by-side: using top half of screen')
                }

                Microsoft.PowerShell.Utility\Write-Verbose ("Side-by-side coordinate calculation: Monitor=$Monitor, Right=$Right, Top=$Top")
            }

            # evaluate if any positioning parameters were provided for calculation
            $havePositioningParams = ($X -gt -999999) -or ($Y -gt -999999) `
                -or ($Width -gt 0) -or ($Height -gt 0) `
                -or $Left -or $Right -or $Top -or $Bottom `
                -or $Centered -or $Fullscreen -or $SideBySide `
                -or $Maximize -or $Minimize -or $NoBorders

            # return null if no positioning parameters were provided for calculation
            if (-not $havePositioningParams) {
                Microsoft.PowerShell.Utility\Write-Verbose ('No positioning parameters provided for coordinate calculation')
                return $null
            }
        }

        # begin processing windows that require positioning or focus changes
        if (($null -ne $Process) -or $OnlyOutputCoords) {

            # log which type of processing is being performed
            if ($null -ne $Process) {
                Microsoft.PowerShell.Utility\Write-Verbose ("Processing window for process: $($Process.ProcessName) (Id: $($Process.Id))")
            } else {
                Microsoft.PowerShell.Utility\Write-Verbose ("Processing coordinate calculation (no process)")
            }

            # analyze all provided parameters to determine required operations
            $havePositioningParams = ($X -gt -999999) -or ($Y -gt -999999) `
                -or ($Width -gt 0) -or ($Height -gt 0) `
                -or $Left -or $Right -or $Top -or $Bottom `
                -or $Centered -or $Fullscreen -or $SideBySide `
                -or $Maximize -or $Minimize -or $NoBorders

            # check for focus and foreground control parameters
            $haveFocusParams = $SetForeground -or $FocusWindow -or $RestoreFocus -or ($KeysToSend -and ($KeysToSend.Count -gt 0))

            # determine overall processing requirements based on parameter analysis
            $shouldProcessWindow = $havePositioningParams -or $haveFocusParams -or ($null -ne $KeysToSend -and ($KeysToSend.Count -gt 0))

            # log comprehensive parameter analysis for troubleshooting and debugging
            Microsoft.PowerShell.Utility\Write-Verbose ("Positioning parameters " +
                "detected: $havePositioningParams (X=$X, Y=$Y, Width=$Width, " +
                "Height=$Height, Left=$Left, Right=$Right, Top=$Top, " +
                "Bottom=$Bottom, Centered=$Centered, Fullscreen=$Fullscreen, " +
                "SideBySide=$SideBySide, Maximize=$Maximize, Minimize=$Minimize, " +
                "NoBorders=$NoBorders)")

            # log focus and foreground parameter analysis for debugging
            Microsoft.PowerShell.Utility\Write-Verbose ("Focus parameters " +
                "detected: $haveFocusParams (SetForeground=$SetForeground, " +
                "FocusWindow=$FocusWindow, RestoreFocus=$RestoreFocus)")

            # log overall window processing decision based on parameter analysis
            Microsoft.PowerShell.Utility\Write-Verbose ("Should process window: " +
                "$shouldProcessWindow (positioning=$havePositioningParams, " +
                "focus=$haveFocusParams, keys=$($null -ne $KeysToSend -and ($KeysToSend.Count -gt 0)))")

            # obtain window handle for positioning operations (skip if coordinate-only mode)
            $window = $null
            $originalWindowState = $null
            if (-not $OnlyOutputCoords) {
                # get window object using either provided helper or process main window
                $window = $WindowHelper ? $WindowHelper : (GenXdev\Get-Window -ProcessId ($Process.Id))

                # capture current window state for potential restoration after positioning
                if ($null -ne $window) {
                    $originalWindowState = $window.CaptureState()
                    Microsoft.PowerShell.Utility\Write-Verbose ("Original window state captured: Maximized=$($originalWindowState.IsMaximized), Minimized=$($originalWindowState.IsMinimized)")
                }
            }

            # validate window object detection and log detailed window information
            if ($null -ne $window) {

                # log comprehensive window details for debugging and troubleshooting
                Microsoft.PowerShell.Utility\Write-Verbose ("`r`n-----------`r`nWindow object found:`r`n" +
                    "Title: $($window.Title)`r`n" +
                    "Handle: $($window.Handle)`r`n" +
                    "Position: $($window.Position().X),$($window.Position().Y)`r`n" +
                    "Size: $($window.Size().Width)x$($window.Size().Height)`r`n-----------")
            }
            else {

                # log appropriate message based on operation mode when window not found
                if (-not $OnlyOutputCoords) {
                    Microsoft.PowerShell.Utility\Write-Verbose ("No window object " +
                        "available for process $($Process.ProcessName)")
                } else {
                    Microsoft.PowerShell.Utility\Write-Verbose ("OnlyOutputCoords mode - no window object needed")
                }
            }

            # determine current monitor for window position comparison (skip in coordinate-only mode)
            $currentWindowScreen = $null
            if (($null -ne $window) -and (-not $OnlyOutputCoords)) {
                # detect which monitor currently contains the window based on position
                $currentWindowScreen = [WpfScreenHelper.Screen]::FromPoint(@{X = $window.Position().X; Y = $window.Position().Y })

                # log current monitor information for positioning reference
                Microsoft.PowerShell.Utility\Write-Verbose ("Window's current " +
                    "monitor detected: $($currentWindowScreen.DeviceName) - " +
                    "$($currentWindowScreen.WorkingArea.Width)x" +
                    "$($currentWindowScreen.WorkingArea.Height)")
            }
            # handle explicit primary monitor selection when monitor parameter is zero
            if ($Monitor -eq 0) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Choosing primary ' +
                    'monitor, because default monitor requested using -Monitor 0')

                # select the system's primary monitor for window positioning
                $Screen = [WpfScreenHelper.Screen]::PrimaryScreen;

                # log primary monitor specifications for reference
                Microsoft.PowerShell.Utility\Write-Verbose ("Primary monitor " +
                    "selected: $($Screen.DeviceName) - " +
                    "$($Screen.WorkingArea.Width)x$($Screen.WorkingArea.Height) " +
                    "at ($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")
            }
            elseif ((-not $SideBySide) -and ((GenXdev\Get-MonitorCount) -gt 1) -and $Monitor -eq -2 -and $setDefaultMonitor -is [int] -and $setDefaultMonitor -ge 0) {

                # use global default secondary monitor when available and valid
                $userMonitorNum = $setDefaultMonitor
                # For monitor selection, convert 1-based monitor number to 0-based array index
                # Monitor 1 = index 0, Monitor 2 = index 1, etc.
                $screenIndex = ($setDefaultMonitor - 1) % $AllScreens.Length
                Microsoft.PowerShell.Utility\Write-Verbose ('Picking monitor ' +
                    "#$userMonitorNum as secondary (requested with -monitor -2) " +
                    "set by `$Global:DefaultSecondaryMonitor")

                # select the user-configured secondary monitor from available screens
                $Screen = $AllScreens[$screenIndex];
                $Monitor = $setDefaultMonitor;

                # log secondary monitor selection details for verification
                Microsoft.PowerShell.Utility\Write-Verbose ("Secondary monitor " +
                    "selected: $($Screen.DeviceName) - " +
                    "$($Screen.WorkingArea.Width)x$($Screen.WorkingArea.Height) " +
                    "at ($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")

            } elseif ($Monitor -eq -2 -and ((GenXdev\Get-MonitorCount) -gt 1) -and -not $SideBySide) {

                # fallback to first secondary monitor when global default not configured
                Microsoft.PowerShell.Utility\Write-Verbose ('Picking monitor #1 ' +
                    'as default secondary (requested with -monitor -2), because ' +
                    '`$Global:DefaultSecondaryMonitor not set')

                # select monitor index 1 as default secondary from available screens
                $Screen = $AllScreens[1 % $AllScreens.Length];

                # log fallback secondary monitor selection for reference
                Microsoft.PowerShell.Utility\Write-Verbose ("Default secondary " +
                    "monitor selected: $($Screen.DeviceName) - " +
                    "$($Screen.WorkingArea.Width)x$($Screen.WorkingArea.Height) " +
                    "at ($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")
            }
            elseif ($Monitor -eq -2 -and -not $SideBySide) {
                # fallback to primary monitor when secondary monitor requested but unavailable
                Microsoft.PowerShell.Utility\Write-Verbose ('Monitor -2 requested ' + 'but no secondary monitor found, defaulting to primary.')
                $Monitor = 0
                $Screen = [WpfScreenHelper.Screen]::PrimaryScreen;

                # log fallback to primary monitor when secondary not available
                Microsoft.PowerShell.Utility\Write-Verbose ("Fallback to primary " +
                    "monitor: $($Screen.DeviceName) - " +
                    "$($Screen.WorkingArea.Width)x$($Screen.WorkingArea.Height) " +
                    "at ($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")
            }
            elseif ((-not $SideBySide) -and $Monitor -ge 1) {

                # select specific monitor by user-provided number (1-based indexing)
                # Convert 1-based monitor number to 0-based array index
                $selectedIndex = ($Monitor - 1) % $AllScreens.Length

                Microsoft.PowerShell.Utility\Write-Verbose ('Picking monitor ' +
                    "#$Monitor (array index $selectedIndex) as requested by the -Monitor parameter")

                # select the specific monitor from available screens array
                $Screen = $AllScreens[$selectedIndex]

                # log requested monitor selection details for verification
                Microsoft.PowerShell.Utility\Write-Verbose ("Requested monitor " +
                    "selected: $($Screen.DeviceName) - " +
                    "$($Screen.WorkingArea.Width)x$($Screen.WorkingArea.Height) " +
                    "at ($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")
            }
            else {
                # handle default monitor selection based on current context
                if (-not $SideBySide) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Picking monitor ' + '#1 (FromPoint)')
                    # use window's current monitor as default for positioning operations
                    $Screen = $currentWindowScreen

                    # fallback to primary monitor if no current window screen in coordinate-only mode
                    if ($null -eq $Screen) {
                        Microsoft.PowerShell.Utility\Write-Verbose ('No current window screen available, using primary monitor')
                        $Screen = $allScreens[0]
                    }

                    # log current monitor selection when successfully detected
                    if ($null -ne $Screen) {

                        Microsoft.PowerShell.Utility\Write-Verbose ("Monitor used: $($Screen.DeviceName) - " +
                            "$($Screen.WorkingArea.Width)x$($Screen.WorkingArea.Height) " +
                            "at ($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")
                    }
                }
                else {
                    # use powershell's monitor for side-by-side positioning reference
                    if (($null -ne $powerShellWindow) -and (-not $OnlyOutputCoords)) {
                        $Screen = $allScreens[$powerShellWindow.GetCurrentMonitor()]
                        Microsoft.PowerShell.Utility\Write-Verbose ("PowerShell's " +
                            "current monitor used for side-by-side: " +
                            "$($Screen.DeviceName) - " +
                            "$($Screen.WorkingArea.Width)x$($Screen.WorkingArea.Height) " +
                            "at ($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")
                    } else {
                        # In coordinate-only mode or when PowerShell window not available, use primary monitor
                        $Screen = $allScreens[0]
                        Microsoft.PowerShell.Utility\Write-Verbose ("Side-by-side coordinate calculation using primary monitor: " +
                            "$($Screen.DeviceName) - " +
                            "$($Screen.WorkingArea.Width)x$($Screen.WorkingArea.Height) " +
                            "at ($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")
                    }
                }
            }

            # handle side-by-side positioning
            if ($SideBySide -and (($null -eq $powerShellWindow) -or ($null -eq $window) -or ($powerShellWindow.Handle -ne $window.Handle) -or $OnlyOutputCoords)) {

                Microsoft.PowerShell.Utility\Write-Verbose ('SideBySide requested')

                if ($OnlyOutputCoords) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Side-by-side coordinate calculation mode')
                    # In coordinate-only mode, position logic is already set above
                    # Just ensure the positioning flags are properly set
                    $FullScreen = $false
                    $Centered = $false
                    $RestoreFocus = $true
                } else {
                    # Normal side-by-side window positioning
                    $PowershellScreen = $Screen  # Use the same screen as determined above
                    $powershellMonitorIndex = $AllScreens.IndexOf($PowershellScreen) + 1
                    Microsoft.PowerShell.Utility\Write-Verbose ('Window and PowerShell are ' + 'on the same screen.')
                    Microsoft.PowerShell.Utility\Write-Verbose ("PowerShell screen index: " +
                        "$powershellMonitorIndex for side-by-side positioning")

                    $Left = $false; $Top = $false; $Right = $false; $FullScreen = $false; $Centered = $false
                    if ($null -ne $KeysToSend -and $KeysToSend.Count -eq 1 -and $KeysToSend[0] -in @('f', '{F11}')) {
                        $KeysToSend = @()
                    }
                    $RestoreFocus = $true

                    # split horizontally or vertically based on screen orientation
                    if ($PowershellScreen.WorkingArea.Width -gt $PowershellScreen.WorkingArea.Height) {
                        Microsoft.PowerShell.Utility\Write-Verbose ('Screen is wider than ' +
                            'tall, splitting horizontally (Left). Screen dimensions: ' +
                            "$($PowershellScreen.WorkingArea.Width)x" +
                            "$($PowershellScreen.WorkingArea.Height)")
                        GenXdev\Set-WindowPosition -Left -Monitor $powershellMonitorIndex
                        $FullScreen = $false
                        $Right = $true
                        Microsoft.PowerShell.Utility\Write-Verbose ('PowerShell moved to ' + 'left, target window will be positioned on right')
                    }
                    else {
                        Microsoft.PowerShell.Utility\Write-Verbose ('Screen is taller than ' +
                            'wide, splitting vertically (Bottom). Screen dimensions: ' +
                            "$($PowershellScreen.WorkingArea.Width)x" +
                            "$($PowershellScreen.WorkingArea.Height)")
                        GenXdev\Set-WindowPosition -Bottom -Monitor $powershellMonitorIndex
                        $FullScreen = $false
                        $Top = $true
                        Microsoft.PowerShell.Utility\Write-Verbose ('PowerShell moved to ' + 'bottom, target window will be positioned at top')
                    }
                }
            }

            if ($null -eq $screen) {
                Microsoft.PowerShell.Utility\Write-Verbose ("No screen object set, using window's current monitor as fallback.")
                $screen = $currentWindowScreen ? $currentWindowScreen : $allScreens[0]
            }

            # detect if monitor change is being requested (skip in coordinate-only mode)
            $isMonitorChangeRequest = $false
            if (($Monitor -ge 0) -and ($null -ne $currentWindowScreen) -and ($null -ne $Screen) -and (-not $OnlyOutputCoords)) {

                $isMonitorChangeRequest = ($currentWindowScreen.DeviceName -ne $Screen.DeviceName)

                if ($isMonitorChangeRequest) {

                    Microsoft.PowerShell.Utility\Write-Verbose ("Monitor change " +
                        "detected: Moving window from " +
                        "'$($currentWindowScreen.DeviceName)' to " +
                        "'$($Screen.DeviceName)'")
                    Microsoft.PowerShell.Utility\Write-Verbose ("Source monitor " +
                        "working area: $($currentWindowScreen.WorkingArea.Width)x" +
                        "$($currentWindowScreen.WorkingArea.Height) at " +
                        "($($currentWindowScreen.WorkingArea.X)," +
                        "$($currentWindowScreen.WorkingArea.Y))")
                    Microsoft.PowerShell.Utility\Write-Verbose ("Target monitor " +
                        "working area: $($Screen.WorkingArea.Width)x" +
                        "$($Screen.WorkingArea.Height) at " +
                        "($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")

                    # Monitor change implies positioning is needed
                    if (-not $havePositioningParams) {

                        Microsoft.PowerShell.Utility\Write-Verbose ('No explicit ' + 'positioning parameters, but monitor change requested ' +
                            '- enabling positioning for monitor change')
                        $havePositioningParams = $true

                        Microsoft.PowerShell.Utility\Write-Verbose ('Detecting ' +
                            'current window position to preserve when moving to ' +
                            'new monitor')

                        # Get current window position and size
                        $currentPos = $window.Position()
                        $currentSize = $window.Size()
                        $currentWorkArea = $currentWindowScreen.WorkingArea

                        # Calculate relative position within current monitor's work area
                        $relativeX = ($currentPos.X - $currentWorkArea.X) / $currentWorkArea.Width
                        $relativeY = ($currentPos.Y - $currentWorkArea.Y) / $currentWorkArea.Height
                        $relativeWidth = $currentSize.Width / $currentWorkArea.Width
                        $relativeHeight = $currentSize.Height / $currentWorkArea.Height

                        Microsoft.PowerShell.Utility\Write-Verbose ("Current relative position: X=$([Math]::Round($relativeX, 2)), Y=$([Math]::Round($relativeY, 2)), W=$([Math]::Round($relativeWidth, 2)), H=$([Math]::Round($relativeHeight, 2))")

                        # Detect positioning style based on relative position and size
                        $tolerance = 0.1  # 10% tolerance for position detection
                        $sizeTolerance = 0.4  # 40% minimum size to consider positioned (allows for half-screen at 50%)

                        # Determine primary positioning based on which dimension is more constrained
                        # If width is more constrained (< 90% of screen), check left/right first
                        # If height is more constrained (< 90% of screen), check top/bottom first

                        $widthConstrained = $relativeWidth -lt 0.9
                        $heightConstrained = $relativeHeight -lt 0.9

                        # Priority 1: Check the more constrained dimension first
                        if ($widthConstrained -and (-not $heightConstrained)) {
                            # Width is constrained, height spans most/all screen - check left/right
                            if ($relativeWidth -ge $sizeTolerance) {
                                if ($relativeX -le $tolerance) {
                                    $Left = $true
                                    Microsoft.PowerShell.Utility\Write-Verbose ('Detected LEFT positioning (full height) - preserving on new monitor')
                                } elseif (($relativeX + $relativeWidth) -ge (1.0 - $tolerance)) {
                                    $Right = $true
                                    Microsoft.PowerShell.Utility\Write-Verbose ('Detected RIGHT positioning (full height) - preserving on new monitor')
                                }
                            }
                        } elseif ($heightConstrained -and (-not $widthConstrained)) {
                            # Height is constrained, width spans most/all screen - check top/bottom
                            if ($relativeHeight -ge $sizeTolerance) {
                                if ($relativeY -le $tolerance) {
                                    $Top = $true
                                    Microsoft.PowerShell.Utility\Write-Verbose ('Detected TOP positioning (full width) - preserving on new monitor')
                                } elseif (($relativeY + $relativeHeight) -ge (1.0 - $tolerance)) {
                                    $Bottom = $true
                                    Microsoft.PowerShell.Utility\Write-Verbose ('Detected BOTTOM positioning (full width) - preserving on new monitor')
                                }
                            }
                        } elseif ($widthConstrained -and $heightConstrained) {
                            # Both dimensions constrained - check for corner positioning or centered
                            $centerX = $relativeX + ($relativeWidth / 2)
                            $centerY = $relativeY + ($relativeHeight / 2)

                            # Window with 10% margins (like X=0.1, W=0.8) should be considered centered
                            $leftMargin = $relativeX
                            $rightMargin = 1.0 - ($relativeX + $relativeWidth)
                            $topMargin = $relativeY
                            $bottomMargin = 1.0 - ($relativeY + $relativeHeight)

                            # Consider centered if ALL margins are small (≤ 10% for more reasonable detection)
                            $hasSmallMargins = ($leftMargin -le 0.1) -and ($rightMargin -le 0.1) -and ($topMargin -le 0.1) -and ($bottomMargin -le 0.1)

                            Microsoft.PowerShell.Utility\Write-Verbose ("Positioning check: centerX=$([Math]::Round($centerX, 2)), centerY=$([Math]::Round($centerY, 2))")
                            Microsoft.PowerShell.Utility\Write-Verbose ("Window bounds: X=$([Math]::Round($relativeX, 2)), Y=$([Math]::Round($relativeY, 2)), W=$([Math]::Round($relativeWidth, 2)), H=$([Math]::Round($relativeHeight, 2))")
                            Microsoft.PowerShell.Utility\Write-Verbose ("Actual margins: Left=$([Math]::Round($leftMargin, 3)), Right=$([Math]::Round($rightMargin, 3)), Top=$([Math]::Round($topMargin, 3)), Bottom=$([Math]::Round($bottomMargin, 3))")
                            Microsoft.PowerShell.Utility\Write-Verbose ("Has small margins (all ≤ 10%): $hasSmallMargins")

                            # If window has small margins on all sides, consider it centered
                            if ($hasSmallMargins) {
                                $Centered = $true
                                Microsoft.PowerShell.Utility\Write-Verbose ('Detected CENTERED positioning (small margins on all sides) - preserving on new monitor')
                            } else {
                                # Check for specific edge positioning
                                # Check left/right first
                                if ($relativeWidth -ge $sizeTolerance) {
                                    if ($relativeX -le $tolerance) {
                                        $Left = $true
                                        Microsoft.PowerShell.Utility\Write-Verbose ('Detected LEFT positioning - preserving on new monitor')
                                    } elseif (($relativeX + $relativeWidth) -ge (1.0 - $tolerance)) {
                                        $Right = $true
                                        Microsoft.PowerShell.Utility\Write-Verbose ('Detected RIGHT positioning - preserving on new monitor')
                                    }
                                }
                                # Then check top/bottom
                                if ($relativeHeight -ge $sizeTolerance) {
                                    if ($relativeY -le $tolerance) {
                                        $Top = $true
                                        Microsoft.PowerShell.Utility\Write-Verbose ('Detected TOP positioning - preserving on new monitor')
                                    } elseif (($relativeY + $relativeHeight) -ge (1.0 - $tolerance)) {
                                        $Bottom = $true
                                        Microsoft.PowerShell.Utility\Write-Verbose ('Detected BOTTOM positioning - preserving on new monitor')
                                    }
                                }

                                # If no specific positioning detected, just enable positioning for auto-sizing
                                if ((-not $Left) -and (-not $Right) -and (-not $Top) -and (-not $Bottom)) {
                                    Microsoft.PowerShell.Utility\Write-Verbose ('No specific positioning detected - enabling auto-sizing to maximum')
                                }
                            }
                        } else {
                            # Neither dimension particularly constrained - likely fullscreen or very large window
                            # Check margins for large window centered detection
                            $leftMargin = $relativeX
                            $rightMargin = 1.0 - ($relativeX + $relativeWidth)
                            $topMargin = $relativeY
                            $bottomMargin = 1.0 - ($relativeY + $relativeHeight)

                            # For large windows, be even more generous (≤ 15% margins)
                            $hasSmallMargins = ($leftMargin -le 0.15) -and ($rightMargin -le 0.15) -and ($topMargin -le 0.15) -and ($bottomMargin -le 0.15)

                            if (-not $hasSmallMargins) {
                                $Centered = $true
                                Microsoft.PowerShell.Utility\Write-Verbose ('Detected CENTERED positioning (large window with small margins) - preserving on new monitor')
                            } else {
                                Microsoft.PowerShell.Utility\Write-Verbose ('Large window not centered - enabling auto-sizing to maximum')
                            }
                        }
                    }
                }
            }

            # calculate final window coordinates and dimensions
            if (($X -le -999999) -or ($X -isnot [int])) {
                Microsoft.PowerShell.Utility\Write-Verbose ('X not provided or invalid, using screen.WorkingArea.X')
                $X = $Screen.WorkingArea.X;
            }
            else {
                # adjust x position for monitor offset
                if ($Monitor -ge 0) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Adjusting X for monitor offset.')
                    $X = $Screen.WorkingArea.X + $X;
                }
            }
            Microsoft.PowerShell.Utility\Write-Verbose ("X determined to be $X")
            # calculate y position
            if (($Y -le -999999) -or ($Y -isnot [int])) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Y not provided or invalid, using screen.WorkingArea.Y')
                $Y = $Screen.WorkingArea.Y;
            }
            else {
                # adjust y position for monitor offset
                if ($Monitor -ge 0) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Adjusting Y for monitor offset.')
                    $Y = $Screen.WorkingArea.Y + $Y;
                }
            }
            Microsoft.PowerShell.Utility\Write-Verbose ("Y determined to be $Y")
            # set fullscreen dimensions if requested
            if ($Fullscreen -eq $true) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Fullscreen requested, setting Width/Height to screen.WorkingArea.')
                $Width = $Screen.WorkingArea.Width;
                $Height = $Screen.WorkingArea.Height;
            }
            Microsoft.PowerShell.Utility\Write-Verbose ('Have positioning parameters set')

            # Reset width/height for smart positioning if detected during monitor change
            if ($isMonitorChangeRequest -and ($Left -or $Right -or $Top -or $Bottom -or $Centered)) {
                $Width = -999999
                $Height = -999999
                Microsoft.PowerShell.Utility\Write-Verbose ('Reset Width/Height to allow smart positioning to control sizing')
            }

            # check if width and height were explicitly provided
            $widthProvided = ($Width -gt 0) -and ($Width -is [int]);
            $heightProvided = ($Height -gt 0) -and ($Height -is [int]);
            # use screen width if width not provided
            if ($widthProvided -eq $false) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Width not provided, using screen.WorkingArea.Width')
                $Width = $Screen.WorkingArea.Width;
                Microsoft.PowerShell.Utility\Write-Verbose ('Width not provided ' + "resetted to $Width")
            }
            # use screen height if height not provided
            if ($heightProvided -eq $false) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Height not provided, using screen.WorkingArea.Height')
                $Height = $Screen.WorkingArea.Height;
                Microsoft.PowerShell.Utility\Write-Verbose ('Height not provided ' + "resetted to $Height")
            }
            # apply layout positioning (left/right/top/bottom/centered)
            if ($Left -eq $true) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Left positioning requested.')
                $X = $Screen.WorkingArea.X;
                Microsoft.PowerShell.Utility\Write-Verbose ("Left positioning: " +
                    "X coordinate set to screen working area left edge: $X")
                # use half width if not explicitly provided
                if ($widthProvided -eq $false) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Width not provided ' + 'for Left, using half screen width.')
                    $Width = [Math]::Min($Screen.WorkingArea.Width / 2, $Width);
                    Microsoft.PowerShell.Utility\Write-Verbose ("Auto-calculated " +
                        "width for left positioning: $Width (half of " +
                        "$($Screen.WorkingArea.Width))")
                }
                Microsoft.PowerShell.Utility\Write-Verbose ("Left chosen, " +
                    "X = $X, Width = $Width")
            }
            else {
                # position on right side
                if ($Right -eq $true) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Right positioning requested.')
                    # use half width if not explicitly provided
                    if ($widthProvided -eq $false) {
                        Microsoft.PowerShell.Utility\Write-Verbose ('Width not ' + 'provided for Right, using half screen width.')
                        $Width = [Math]::Min($Screen.WorkingArea.Width / 2, $Width);
                        Microsoft.PowerShell.Utility\Write-Verbose ("Auto-calculated " +
                            "width for right positioning: $Width (half of " +
                            "$($Screen.WorkingArea.Width))")
                    }
                    $X = $Screen.WorkingArea.X + $Screen.WorkingArea.Width - $Width;
                    Microsoft.PowerShell.Utility\Write-Verbose ("Right positioning: " +
                        "X coordinate calculated as " +
                        "$($Screen.WorkingArea.X) + $($Screen.WorkingArea.Width) " +
                        "- $Width = $X")
                    Microsoft.PowerShell.Utility\Write-Verbose ("Right chosen, " +
                        "X = $X, Width = $Width")
                }
            }
            # position on top
            if ($Top -eq $true) {
                Microsoft.PowerShell.Utility\Write-Verbose ('Top positioning requested.')
                $Y = $Screen.WorkingArea.Y;
                Microsoft.PowerShell.Utility\Write-Verbose ("Top positioning: " +
                    "Y coordinate set to screen working area top edge: $Y")
                # use half height if not explicitly provided
                if ($heightProvided -eq $false) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Height not provided ' + 'for Top, using half screen height.')
                    $Height = [Math]::Min($Screen.WorkingArea.Height / 2, $Height);
                    Microsoft.PowerShell.Utility\Write-Verbose ("Auto-calculated " +
                        "height for top positioning: $Height (half of " +
                        "$($Screen.WorkingArea.Height))")
                }
                Microsoft.PowerShell.Utility\Write-Verbose ("Top chosen, " +
                    "Y = $Y, Height = $Height")
            }
            else {
                # position on bottom
                if ($Bottom -eq $true) {
                    Microsoft.PowerShell.Utility\Write-Verbose ('Bottom positioning requested.')
                    # use half height if not explicitly provided
                    if ($heightProvided -eq $false) {
                        Microsoft.PowerShell.Utility\Write-Verbose ('Height not ' + 'provided for Bottom, using half screen height.')
                        $Height = [Math]::Min($Screen.WorkingArea.Height / 2, $Height);
                        Microsoft.PowerShell.Utility\Write-Verbose ("Auto-calculated " +
                            "height for bottom positioning: $Height (half of " +
                            "$($Screen.WorkingArea.Height))")
                    }
                    $Y = $Screen.WorkingArea.Y + $Screen.WorkingArea.Height - $Height;
                    Microsoft.PowerShell.Utility\Write-Verbose ("Bottom positioning: " +
                        "Y coordinate calculated as " +
                        "$($Screen.WorkingArea.Y) + $($Screen.WorkingArea.Height) " +
                        "- $Height = $Y")
                    Microsoft.PowerShell.Utility\Write-Verbose ("Bottom chosen, " +
                        "Y = $Y, Height = $Height")
                }
            }
            # center window on screen
            if ($Centered -eq $true) {

                Microsoft.PowerShell.Utility\Write-Verbose ('Centered positioning requested.')

                # use 80% of screen dimensions if not explicitly provided
                if ($heightProvided -eq $false) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('Height not provided ' + 'for Centered, using 80% of screen height.')
                    $Height = [Math]::Round([Math]::Min($Screen.WorkingArea.Height * 0.8, $Height), 0);

                    Microsoft.PowerShell.Utility\Write-Verbose ("Auto-calculated " +
                        "height for centered positioning: $Height (80% of " +
                        "$($Screen.WorkingArea.Height))")
                }

                if ($widthProvided -eq $false) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('Width not provided ' + 'for Centered, using 80% of screen width.')

                    $Width = [Math]::Round([Math]::Min($Screen.WorkingArea.Width * 0.8, $Width), 0);

                    Microsoft.PowerShell.Utility\Write-Verbose ("Auto-calculated " +
                        "width for centered positioning: $Width (80% of " +
                        "$($Screen.WorkingArea.Width))")
                }

                # calculate center position
                $X = $Screen.WorkingArea.X + [Math]::Round(($screen.WorkingArea.Width - $Width) / 2, 0);
                $Y = $Screen.WorkingArea.Y + [Math]::Round(($screen.WorkingArea.Height - $Height) / 2, 0);

                Microsoft.PowerShell.Utility\Write-Verbose ("Centered position " +
                    "calculation: X = $($Screen.WorkingArea.X) + " +
                    "(($($screen.WorkingArea.Width) - $Width) / 2) = $X")
                Microsoft.PowerShell.Utility\Write-Verbose ("Centered position " +
                    "calculation: Y = $($Screen.WorkingArea.Y) + " +
                    "(($($screen.WorkingArea.Height) - $Height) / 2) = $Y")
                Microsoft.PowerShell.Utility\Write-Verbose ("Centered chosen, " +
                    "X = $X, Width = $Width, Y = $Y, Height = $Height")
            }

            # recalculate shouldProcessWindow after all positioning logic is complete
            # (monitor change detection may have updated havePositioningParams)
            $shouldProcessWindow = $havePositioningParams -or $haveFocusParams -or ($null -ne $KeysToSend -and ($KeysToSend.Count -gt 0))

            Microsoft.PowerShell.Utility\Write-Verbose ("Final shouldProcessWindow check: $shouldProcessWindow (positioning=$havePositioningParams, focus=$haveFocusParams, keys=$($null -ne $KeysToSend -and ($KeysToSend.Count -gt 0)))")

            # if OnlyOutputCoords is set, return the calculated coordinates without positioning
            if ($OnlyOutputCoords) {
                Microsoft.PowerShell.Utility\Write-Verbose ('OnlyOutputCoords specified - returning calculated coordinates without positioning window')

                $coordsOutput = @{
                    Left   = $X
                    Top    = $Y
                    Width  = $Width
                    Height = $Height
                }

                Microsoft.PowerShell.Utility\Write-Verbose ("Calculated coordinates: Left=$($coordsOutput.Left), Top=$($coordsOutput.Top), Width=$($coordsOutput.Width), Height=$($coordsOutput.Height)")

                return $coordsOutput
            }

            if (-not $shouldProcessWindow) {
                Microsoft.PowerShell.Utility\Write-Verbose ('No positioning, focus, or key parameters provided - exiting early')
                return;
            }

            # confirm with user if whatif support is enabled
            $whatIfMessage = if ($havePositioningParams) {
                "Set position/size to: X=$X Y=$Y W=$Width H=$Height"
            } elseif ($haveFocusParams) {
                "Apply focus/foreground changes"
            } elseif ($null -ne $KeysToSend -and ($KeysToSend.Count -gt 0)) {
                "Send keystrokes: $($KeysToSend -join ', ')"
            }
            else {
                "No additional information available"
            }

            if ($PSCmdlet.ShouldProcess(
                    "Window of process '$($Process.ProcessName)'",
                    $whatIfMessage)) {

                Microsoft.PowerShell.Utility\Write-Verbose ('ShouldProcess returned ' + 'true, proceeding with window operations.')

                if ($havePositioningParams) {
                    Microsoft.PowerShell.Utility\Write-Verbose ("Final window positioning: " +
                        "Process='$($Process.ProcessName))', Handle=$($window.Handle), " +
                        "Target coordinates: X=$X, Y=$Y, Width=$Width, Height=$Height")

                    Microsoft.PowerShell.Utility\Write-Verbose ("Target monitor: " +
                        "$($Screen.DeviceName) - Working area: " +
                        "$($Screen.WorkingArea.Width)x$($Screen.WorkingArea.Height) " +
                        "at ($($Screen.WorkingArea.X),$($Screen.WorkingArea.Y))")
                } else {
                    Microsoft.PowerShell.Utility\Write-Verbose ("Processing window for focus/foreground or keystroke operations only - no positioning")
                }

                # have a handle to the mainwindow of the browser?
                if ($null -ne $window) {

                    if ($havePositioningParams) {
                        Microsoft.PowerShell.Utility\Write-Verbose ('Restoring and ' +
                            'positioning window')

                        # restore window from maximized/minimized state first
                        Microsoft.PowerShell.Utility\Write-Verbose ('Restoring window from maximized/minimized state')
                        $null = $window.Restore()

                        # focus and position window
                        Microsoft.PowerShell.Utility\Write-Verbose ('Showing window ' + '(first call to ensure window is visible)')
                        $null = $window.Focus()
                        Microsoft.PowerShell.Utility\Write-Verbose ("[Set-WindowPosition] " +
                            "About to move window. Handle: $($window.Handle) " +
                            "Target: X=$X, Y=$Y, Width=$Width, Height=$Height")
                        Microsoft.PowerShell.Utility\Write-Verbose ('Executing first ' + 'Move operation to set window position and size')
                        $null = $window.Move($X, $Y, $Width, $Height)
                        Microsoft.PowerShell.Utility\Write-Verbose ('Executing second ' + 'Move operation for stability (some windows need this)')
                        $null = $window.Move($X, $Y, $Width, $Height)
                        Microsoft.PowerShell.Utility\Write-Verbose ('Window positioning ' + 'operations completed successfully')
                    } else {
                        Microsoft.PowerShell.Utility\Write-Verbose ('No positioning parameters - skipping window positioning operations')
                    }
                    # maximize window if fullscreen requested
                    if ($Fullscreen) {

                        Microsoft.PowerShell.Utility\Write-Verbose ('Fullscreen ' + 'requested, sending F11 keystroke.')
                        $KeysToSend = ($KeysToSend ? $KeysToSend : @()) + @('{F11}')
                    }
                    # needs to be set noborders manually?
                    if ($NoBorders -eq $true) {

                        Microsoft.PowerShell.Utility\Write-Verbose ('Setting NoBorders ' + '- removing window chrome and decorations')
                        $null = $window.RemoveBorder();
                        Microsoft.PowerShell.Utility\Write-Verbose ('Window border ' + 'removal completed')
                    }

                    if ($Maximize) {

                        if ($PSBoundParameters.Count -gt 1) {
                            Microsoft.PowerShell.Utility\Start-Sleep 1
                        }

                        Microsoft.PowerShell.Utility\Write-Verbose ('Maximize requested, maximizing window.')
                        $null = $window.Maximize()
                        Microsoft.PowerShell.Utility\Write-Verbose ('Window maximization completed')
                    }
                    elseif ($Minimize) {

                        Microsoft.PowerShell.Utility\Write-Verbose ('Minimize requested, minimizing window.')
                        $null = $window.Minimize()
                        Microsoft.PowerShell.Utility\Write-Verbose ('Window minimization completed')
                    }
                    elseif ($SetRestored) {

                        Microsoft.PowerShell.Utility\Write-Verbose ('SetRestored requested, ensuring window is in normal state.')
                        $null = $window.Restore()
                        Microsoft.PowerShell.Utility\Write-Verbose ('Window restored to normal state')
                    }
                    elseif ($havePositioningParams -and ($null -ne $originalWindowState)) {

                        # No explicit state requested, but we moved the window
                        # Restore original state, but never restore to minimized
                        # (if you call Set-WindowPosition, you want to see the window)
                        if ($originalWindowState.IsMaximized) {
                            Microsoft.PowerShell.Utility\Write-Verbose ('Restoring original maximized state after positioning')
                            $null = $window.Maximize()
                        }
                        elseif ($originalWindowState.IsMinimized) {
                            Microsoft.PowerShell.Utility\Write-Verbose ('Window was minimized, but restoring to normal state (not minimized) since Set-WindowPosition was called')
                            $null = $window.Restore()
                        }
                        else {
                            Microsoft.PowerShell.Utility\Write-Verbose ('Preserving original normal window state')
                            # Already in normal state from the Restore() call before Move()
                        }
                    }
                    # handle focus and foreground - if both requested, SetForeground handles both
                    if ($SetForeground -eq $true) {
                        Microsoft.PowerShell.Utility\Write-Verbose ('Setting window to ' +
                            'foreground (bringing to front and giving focus)')
                        $null = $window.SetForeground()
                        Microsoft.PowerShell.Utility\Write-Verbose ('Window foreground ' + 'operation completed')
                    }
                    elseif ($FocusWindow -eq $true) {
                        Microsoft.PowerShell.Utility\Write-Verbose ('Focusing window')
                        $null = $window.Focus()
                    }
                    # send keys if specified, after a delay to ensure window is ready
                    if ($null -ne $KeysToSend -and ($KeysToSend.Count -gt 0)) {

                        $KeysToSend = @($KeysToSend | Microsoft.PowerShell.Core\Where-Object { -not [string]::IsNullOrEmpty($_) })

                        if ($null -ne $KeysToSend -and ($KeysToSend.Count -gt 0)) {

                            Microsoft.PowerShell.Utility\Write-Verbose ('Sending keystrokes ' +
                                'to window after 500ms delay. Keys to send: ' +
                                "$($KeysToSend -join ', ')")

                            Microsoft.PowerShell.Utility\Start-Sleep -Milliseconds 500

                            # copy identical parameters between functions
                            $params = GenXdev\Copy-IdenticalParamValues `
                                -FunctionName 'GenXdev\Send-Key' `
                                -BoundParameters $myPSBoundParameters `
                                -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                                    -Scope Local -ErrorAction SilentlyContinue)

                            # set the window handle for the send-key function
                            $params.WindowHandle = $window.Handle
                            $params.KeysToSend = $KeysToSend
                            $null = $params.Remove('Process')
                            $null = $params.Remove('ProcessName')

                            # send keys to the window
                            Microsoft.PowerShell.Utility\Write-Verbose ("Calling Send-Key " +
                                "with window handle $($window.Handle) and parameters: " +
                                "$($params | Microsoft.PowerShell.Utility\Out-String)")

                            $null = GenXdev\Send-Key @params -SendKeyHoldKeyboardFocus
                            Microsoft.PowerShell.Utility\Write-Verbose ('Keystroke sending ' + 'operation completed')
                        }
                    }
                } else {

                    Microsoft.PowerShell.Utility\Write-Verbose ('No window object ' +
                        'available to position.')
                }

                # return window helper if passthru specified
                if ($PassThru -eq $true) {

                    Microsoft.PowerShell.Utility\Write-Verbose ('PassThru specified, returning window object.')
                    $window
                }
            } else {
                Microsoft.PowerShell.Utility\Write-Verbose ('ShouldProcess returned false, skipping window positioning.')
            }
        } else {
            Microsoft.PowerShell.Utility\Write-Verbose ('No process object available, skipping window positioning.')
        }
    }

    end {

        # only proceed if restore focus was requested
        if ($RestoreFocus) {

            $powerShellWindow = GenXdev\Get-PowershellMainWindow
            if (-not $powerShellWindow) {
                Microsoft.PowerShell.Utility\Write-Verbose 'Failed to retrieve PowerShell main window for focus restoration.'
                return
            }
            Microsoft.PowerShell.Utility\Write-Verbose ('RestoreFocus requested ' + 'and target window differs from PowerShell window')
            Microsoft.PowerShell.Utility\Write-Verbose ("Target window handle: " +
                "$($process.MainWindowHandle)), PowerShell handle: " +
                "$($powerShellWindow.handle)")

            Microsoft.PowerShell.Utility\Write-Verbose ('Restoring focus to ' + 'PowerShell window using Set-WindowPosition with ' +
                '-SetForeground')

            $null = $powerShellWindow.SetForeground();

            Microsoft.PowerShell.Utility\Write-Verbose ('PowerShell window ' + 'focus restoration completed')
        }
    }
}
<##############################################################################
Part of PowerShell module : GenXdev.Windows
Original cmdlet filename  : Set-WindowPositionForSecondary.ps1
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
Positions a window on the secondary monitor with specified layout options.

.DESCRIPTION
This function allows positioning windows on a configured secondary monitor using
Set-WindowPosition with various layout options including alignment, size, and
border settings. It handles monitor selection based on global configuration and
provides a convenient wrapper for secondary monitor window positioning.

.PARAMETER Process
The process or processes containing the windows to position.

.PARAMETER Monitor
The monitor to use (0=default, 1=secondary, -1=discard, -2=configured secondary).

.PARAMETER Width
The desired width of the window in pixels.

.PARAMETER Height
The desired height of the window in pixels.

.PARAMETER X
The desired X coordinate for window placement.

.PARAMETER Y
The desired Y coordinate for window placement.

.PARAMETER Left
Place the window on the left side of the screen.

.PARAMETER Right
Place the window on the right side of the screen.

.PARAMETER Top
Place the window at the top of the screen.

.PARAMETER Bottom
Place the window at the bottom of the screen.

.PARAMETER Centered
Center the window on the screen.

.PARAMETER Fullscreen
Maximize the window to fill the screen.

.PARAMETER NoBorders
Remove window borders and title bar.

.PARAMETER RestoreFocus
Return focus to the PowerShell window after positioning.

.PARAMETER FocusWindow
Focus the window after positioning.

.PARAMETER SetForeground
Set the window to foreground after positioning.

.PARAMETER Maximize
Maximize the window after positioning

.PARAMETER SetRestored
Restore the window to normal state after positioning

.PARAMETER KeysToSend
Keystrokes to send to the window after positioning.

.PARAMETER SendKeyEscape
Escape control characters and modifiers when sending keys

.PARAMETER SendKeyHoldKeyboardFocus
Hold keyboard focus on target window when sending keys

.PARAMETER SendKeyUseShiftEnter
Use Shift+Enter instead of Enter when sending keys

.PARAMETER SendKeyDelayMilliSeconds
Delay between different input strings in milliseconds when sending keys

.PARAMETER PassThru
Return the Process object after positioning.

.PARAMETER SideBySide
Place window side by side with PowerShell on the same monitor.

.PARAMETER SessionOnly
Use alternative settings stored in session for AI preferences.

.PARAMETER ClearSession
Clear alternative settings stored in session for AI preferences.

.PARAMETER SkipSession
Store settings only in persistent preferences without affecting session.

.EXAMPLE
Set-WindowPositionForSecondary -Process "notepad" -Width 800 -Height 600 `
    -Centered -NoBorders

.EXAMPLE
wps notepad -w 800 -h 600 -c -nb
#>
function Set-WindowPositionForSecondary {
    [CmdletBinding(SupportsShouldProcess = $true)]
    [Alias('wps')]
    [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute('PSAvoidGlobalVars', '')]
    param(
        [parameter(
            Mandatory = $false,
            Position = 0,
            HelpMessage = 'The process of the window to position',
            ValueFromPipeline,
            ValueFromPipelineByPropertyName,
            ValueFromRemainingArguments = $false
        )]
        [System.Diagnostics.Process[]] $Process,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'The monitor to use, 0=default, -1=discard, -2=configured'
        )]
        [Alias('m', 'mon')]
        [int] $Monitor = -2,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'The initial width of the window'
        )]
        [int] $Width = -1,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'The initial height of the window'
        )]
        [int] $Height = -1,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'The initial X position of the window'
        )]
        [int] $X = -999999,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'The initial Y position of the window'
        )]
        [int] $Y = -999999,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the left side of the screen'
        )]
        [switch] $Left,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the right side of the screen'
        )]
        [switch] $Right,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the top side of the screen'
        )]
        [switch] $Top,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Place window on the bottom side of the screen'
        )]
        [switch] $Bottom,
        [parameter(
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

        [Alias('nb')]
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Removes the borders of the window'
        )]
        [switch] $NoBorders,

        [parameter(
            Mandatory = $false,
            HelpMessage = 'Restore PowerShell window focus'
        )]
        [Alias('rf', 'bg')]
        [switch] $RestoreFocus,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Focus the window after positioning'
        )]
        [Alias('fw','focus')]
        [switch] $FocusWindow,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Set the window to foreground after positioning'
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
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Keystrokes to send to the window after positioning'
        )]
        [string[]] $KeysToSend,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Escape control characters and modifiers when sending keys'
        )]
        [Alias('Escape')]
        [switch] $SendKeyEscape,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Hold keyboard focus on target window when sending keys'
        )]
        [Alias('HoldKeyboardFocus')]
        [switch] $SendKeyHoldKeyboardFocus,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Use Shift+Enter instead of Enter when sending keys'
        )]
        [Alias('UseShiftEnter')]
        [switch] $SendKeyUseShiftEnter,
        [Parameter(
            Mandatory = $false,
            HelpMessage = 'Delay between different input strings in milliseconds when sending keys'
        )]
        [Alias('DelayMilliSeconds')]
        [int] $SendKeyDelayMilliSeconds,
        [parameter(
            Mandatory = $false,
            HelpMessage = 'Returns the process object after positioning'
        )]
        [Alias('pt')]
        [switch]$PassThru,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('Place window side by side with PowerShell on the same ' +
                'monitor')
        )]
        [Alias('sbs')]
        [switch]$SideBySide,

        [parameter(
            Mandatory = $false,
            HelpMessage = ('Use alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $SessionOnly,
        [parameter(
            Mandatory = $false,
            HelpMessage = ('Clear alternative settings stored in session for AI ' +
                'preferences')
        )]
        [switch] $ClearSession,
        [parameter(
            Mandatory = $false,
            HelpMessage = ('Store settings only in persistent preferences without ' +
                'affecting session')
        )]
        [Alias('FromPreferences')]
        [switch] $SkipSession
    )

    begin {

        # initialize window positioning for secondary monitor
        Microsoft.PowerShell.Utility\Write-Verbose (
            'Initializing window positioning for secondary monitor'
        )

        # determine monitor index if configured secondary monitor requested
        if ($Monitor -lt -1) {

            # get array of all available screens
            $allScreens = @([WpfScreenHelper.Screen]::AllScreens)

            # initialize default secondary monitor index
            [int] $defaultMonitor = 1

            # try to use globally configured secondary monitor if available
            if ([int]::TryParse($Global:DefaultSecondaryMonitor,
                    [ref] $defaultMonitor)) {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    "Using configured secondary monitor: $defaultMonitor"
                )

                # calculate monitor index with proper wrap-around handling
                $Monitor = $defaultMonitor % $allScreens.Length
            }
            else {

                Microsoft.PowerShell.Utility\Write-Verbose (
                    'Using default secondary monitor: 1'
                )

                # use default secondary monitor with wrap-around handling
                $Monitor = 1 % $allScreens.Length
            }

            Microsoft.PowerShell.Utility\Write-Verbose (
                "Selected monitor index: $Monitor"
            )
        }

        # ensure monitor parameter is included in bound parameters
        if (-not $PSBoundParameters.ContainsKey('Monitor')) {

            # add monitor parameter to bound parameters for forwarding
            $null = $PSBoundParameters.Add('Monitor', $Monitor)
        }
        else {

            # update monitor parameter in bound parameters
            $PSBoundParameters['Monitor'] = $Monitor
        }
    }

    process {

        # copy matching parameters to pass to Set-WindowPosition
        $invocationArguments = GenXdev\Copy-IdenticalParamValues `
            -BoundParameters $PSBoundParameters `
            -FunctionName 'GenXdev\Set-WindowPosition' `
            -DefaultValues (Microsoft.PowerShell.Utility\Get-Variable `
                -Scope Local -Name * -ErrorAction SilentlyContinue)

        # determine target for WhatIf processing
        $target = if ($Process) {
            "Process: $($Process.Name)"
        } else {
            'Window'
        }

        # define action description for WhatIf processing
        $action = "Position on monitor $Monitor"

        # perform shouldprocess check before proceeding
        if ($PSCmdlet.ShouldProcess($target, $action)) {

            Microsoft.PowerShell.Utility\Write-Verbose (
                'Forwarding parameters to Set-WindowPosition'
            )

            # forward all parameters to Set-WindowPosition function
            GenXdev\Set-WindowPosition @invocationArguments
        }
    }

    end {
    }
}

