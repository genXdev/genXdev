Pester\Describe 'Move-FilesToDateFolder' {

    Pester\BeforeAll {
        $Script:testRoot = GenXdev\Expand-Path "$env:TEMP\GenXdev.FileSystem.Tests\Move-FilesToDateFolder\" -CreateDirectory
    }

    Pester\AfterAll {
        GenXdev\Remove-AllItems $Script:testRoot -DeleteFolder
    }

    Pester\BeforeEach {
        ($Script:source) = GenXdev\Expand-Path "$Script:testRoot\source\" -CreateDirectory
        $Script:dest = GenXdev\Expand-Path "$Script:testRoot\dest\" -CreateDirectory
        $Script:filePath = Microsoft.PowerShell.Management\Join-Path ($Script:source) 'file.txt'
        'copy test content' | Microsoft.PowerShell.Utility\Out-File -FilePath $Script:filePath -Force
    }

    Pester\AfterEach {
        @(($Script:source), $Script:dest) | Microsoft.PowerShell.Core\ForEach-Object {
            GenXdev\Remove-AllItems -Path $_
        }
    }

    Pester\It 'Moves file into the correct date folder when moving' {
        $filePath = Microsoft.PowerShell.Management\Join-Path ($Script:source) 'file.txt'
        $date = GenXdev\Get-MediaFileCreationDate -FilePath $filePath
        $dateFolder = Microsoft.PowerShell.Management\Join-Path $date.ToString('yyyy') $date.ToString('MM')

        GenXdev\Move-FilesToDateFolder -TargetFolder $Script:dest -Root ($Script:source) -Name '*.txt' -NoRecurse -Confirm:$false

        $sourceExists = Microsoft.PowerShell.Management\Test-Path -LiteralPath $filePath
        $sourceExists | Pester\Should -BeFalse

        $destinationPath = Microsoft.PowerShell.Management\Join-Path -Path (Microsoft.PowerShell.Management\Join-Path -Path $Script:dest -ChildPath $dateFolder) -ChildPath 'file.txt'
        $destExists = Microsoft.PowerShell.Management\Test-Path -LiteralPath $destinationPath
        $destExists | Pester\Should -BeTrue
    }

    Pester\It 'Does not move or copy files when WhatIf is specified' {
        $null = GenXdev\Move-FilesToDateFolder -TargetFolder $Script:dest -Root ($Script:source) -Name '*.txt' -WhatIf -NoRecurse -Confirm:$false -ErrorAction SilentlyContinue

        $sourceExists = Microsoft.PowerShell.Management\Test-Path -LiteralPath "$(($Script:source))\file.txt"
        $sourceExists | Pester\Should -BeTrue

        $destinationPath = Microsoft.PowerShell.Management\Join-Path -Path (Microsoft.PowerShell.Management\Join-Path -Path $Script:dest -ChildPath $dateFolder) -ChildPath 'file.txt'
        $destExists = Microsoft.PowerShell.Management\Test-Path -LiteralPath $destinationPath
        $destExists | Pester\Should -BeFalse
    }

    Pester\It 'Deletes the empty source directory when DeleteEmptyDirs is used' {
        $date = GenXdev\Get-MediaFileCreationDate -FilePath "$(($Script:source))\file.txt"
        $dateFolder = Microsoft.PowerShell.Management\Join-Path $date.ToString('yyyy') $date.ToString('MM')

        GenXdev\Move-FilesToDateFolder -TargetFolder $Script:dest -Root ($Script:source) -Name '*.txt' -DeleteEmptyDirs -NoRecurse -Confirm:$false

        $sourceDirExists = Microsoft.PowerShell.Management\Test-Path -LiteralPath ($Script:source)
        $sourceDirExists | Pester\Should -BeFalse

        $destinationPath = Microsoft.PowerShell.Management\Join-Path -Path (Microsoft.PowerShell.Management\Join-Path -Path $Script:dest -ChildPath $dateFolder) -ChildPath 'file.txt'
        $destExists = Microsoft.PowerShell.Management\Test-Path -LiteralPath $destinationPath
        $destExists | Pester\Should -BeTrue
    }
}
