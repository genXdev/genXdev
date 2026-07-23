<hr/>

<img src="powershell.jpg" alt="GenXdev" width="50%"/>

<hr/>

### NAME
    GenXdev Powershell Modules
### SYNOPSIS
    A comprehensive PowerShell productivity suite for power users and developers, integrating AI, browser automation, media management, database tools, file system utilities, and Windows system control into a unified command-line workflow.
[![GenXdev](https://img.shields.io/powershellgallery/v/GenXdev.svg?style=flat-square&label=GenXdev)](https://www.powershellgallery.com/packages/GenXdev/) [![License](https://img.shields.io/github/license/genXdev/genXdev?style=flat-square)](./LICENSE)

### INSTALLATION
```PowerShell
Install-Module GenXdev

cmds
```

### UPDATE

```PowerShell
Update-Module GenXdev
```

<hr/>

## APACHE 2.0 License

````text
Copyright (c) 2025 René Vaessen / GenXdev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

     http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

````

<hr/>

### Documentation

| BCP47 | Language | Location |
| :--- | :--- | :--- |
| en-US | English (United States) | [https://github.com/genXdev/genXdev/blob/main/Docs/en-US/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/en-US/README.md) |
| nl-NL | Dutch (Netherlands) | [https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/nl-NL/README.md) |
| zh-Hans-CN | Chinese (Simplified, China) | [https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/zh-Hans-CN/README.md) |
| ja-JP | Japanese (Japan) | [https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/ja-JP/README.md) |
| de-DE | German (Germany) | [https://github.com/genXdev/genXdev/blob/main/Docs/de-DE/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/de-DE/README.md) |
| fr-FR | French (France) | [https://github.com/genXdev/genXdev/blob/main/Docs/fr-FR/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/fr-FR/README.md) |
| es-ES | Spanish (Spain) | [https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/es-ES/README.md) |
| ko-KR | Korean (Korea) | [https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/ko-KR/README.md) |
| pt-BR | Portuguese (Brazil) | [https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/pt-BR/README.md) |
| ru-RU | Russian (Russia) | [https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/ru-RU/README.md) |
| ar-SA | Arabic (Saudi Arabia) | [https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/ar-SA/README.md) |
| hi-IN | Hindi (India) | [https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/hi-IN/README.md) |
| it-IT | Italian (Italy) | [https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/it-IT/README.md) |
| pl-PL | Polish (Poland) | [https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/pl-PL/README.md) |
| tr-TR | Turkish (Türkiye) | [https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/tr-TR/README.md) |
| vi-VN | Vietnamese (Vietnam) | [https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/vi-VN/README.md) |
| th-TH | Thai (Thailand) | [https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/th-TH/README.md) |
| id-ID | Indonesian (Indonesia) | [https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/README.md) |
| uk-UA | Ukrainian (Ukraine) | [https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/uk-UA/README.md) |
| sv-SE | Swedish (Sweden) | [https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/README.md](https://github.com/genXdev/genXdev/blob/main/Docs/sv-SE/README.md) |

<hr/>

## GenXdev.FileSystem

### FEATURES

    * Simple but agile utility for renaming text throughout a project directory,
          including file- and directory- names: Rename-InProject -> rip

    * Pretty good wrapper for robocopy, Microsoft's robuust file copy utility: Start-RoboCopy -> rc, xc
        * Folder synchronization
        * Support for extra long pathnames > 256 characters
        * Restartable mode backups
        * Support for copying and fixing security settings
        * Advanced file attribute features
        * Advanced symbolic link and junction support
        * Monitor mode (restart copying after change threshold)
        * Optimization features for LargeFiles, multithreaded copying and
             network compression
        * Recovery mode (copy from failing disks)

    * Find files with Find-Item -> l
        * Fast multi-threaded search: utilizes parallel and asynchronous
              IO processing with configurable maximum degree of parallelism
              (default based on CPU cores) for efficient file and directory scanning.
        * Advanced Pattern Matching: Supports wildcards (*, ?), recursive patterns
              like **, and complex path structures for precise file and directory queries.
              **/filename will only recurse until filename is matched. multiple of these
              patterns are allowed, as long as the are preceeded with a filename or
              directoryname to match.
              This pattern parser has the power of Resolve-Path but has recursion
              features, and does only support * and ? as wildcards,
              preventing bugs with paths with [ ] brackets in them, eliminating
              the need for -LiteralPath parameter, while maintaining integrity
              for paths sections without wildcards, unlike a wildcard match on the
              whole full path.
        * Enhanced Content Searching: Comprehensive Select-String integration
              with regular expression patterns within file contents using the
              -Content parameter.
            * Large File Optimization: Handles extremely large files with smart
                  overlapping buffers and minimal heap allocation
            * Multiple Match Options: Find all matches per line (-AllMatches) or
                  just the first match per file (-List)
            * Case Sensitivity Control: Case-sensitive matching (-CaseSensitive)
                  with culture-specific options (-Culture)
            * Context Capture: Show lines before and after matches (-Context) for
                  better understanding
            * Inverse Matching: Find files that don't contain the pattern (-NotMatch)
            * Output Formats: Raw string output (-Raw), quiet boolean response (-Quiet),
                  or full MatchInfo objects
            * Pattern Types: Regular expressions (default) or simple literal string
                  matching (-SimpleMatch)
            * Encoding Support: Specify file encoding (-Encoding) for accurate text
                  processing
        * Path Type Flexibility: Handles relative, absolute, UNC, rooted paths, and
              NTFS alternate data streams (ADS) with optional content search in streams.
        * Multi-Drive Support: Searches across all drives with -AllDrives or specific
              drives via -SearchDrives, including optical disks if specified.
        * Directory and File Filtering: Options to search directories only (-Directory),
              both files and directories (-FilesAndDirectories), or files with content matching.
        * Exclusion and Limits: Exclude patterns with -Exclude, set max recursion depth
              -MaxRecursionDepth), file size limits (-MaxFileSize, -MinFileSize), and modified
              date filters (-ModifiedAfter, -ModifiedBefore).
        * Output Customization: Supports PassThru for FileInfo/DirectoryInfo objects,
              relative paths, hyperlinks in attended mode, or plain paths in unattended mode
              (use -NoLinks in case of mishaps to enforce unattended mode).
        * Performance Optimizations: Skips non-text files by default for content search
              (override with -IncludeNonTextFileMatching), handles long paths (>260 chars),
              and follows symlinks/junctions.
        * Safety Features: Timeout support (-TimeoutSeconds), ignores inaccessible items,
              skips system attributes by default, and prevents infinite loops with visited node tracking.

    * Easily change directories with Set-FoundLocation -> lcd
        * Find directories by name/wildcard
        * Supports most of Find-Items parameters, like searching in file contents to match
              the directory to change location too
        * Has autocompletion, just type the first letters and press Tab or CTRL-SPACE

    * Delete complete directory contents with Remove-AllItems -> sdel
        * Optionally delete the root folder as well

    * Move files and directories with Move-ItemWithTracking

<hr/>

## GenXdev.AI

### FEATURES
* Large Language Model (LLM) API helpers
     * Perform AI operations through OpenAI-compatible chat
       completion endpoints with `Invoke-LLMQuery` -> `llm`
     * Expose PowerShell cmdlets as tool functions to LLM models
       with user-controlled execution
     * Interactive text chat sessions with `New-LLMTextChat` ->
       `llmchat`
     * AI-powered command suggestions with
       `Invoke-AIPowershellCommand` -> `hint`
     * Secure execution model with mandatory user confirmation for
       system-modifying operations

* Audio and Speech Processing
     * Transcribe audio/video files using `Whisper AI` model with
       `Start-AudioTranscription` -> `transcribefile`
     * Interactive audio chat sessions with `New-LLMAudioChat` ->
       `llmaudiochat`
     * Real-time audio transcription with `Start-AudioTranscription`
       -> `transcribe`
     * Generate subtitle files for media content using `Save-Transcriptions`
     * Record and process spoken audio with default input devices

* Text Processing and Enhancement
     * Add contextual emoticons with:
       `Add-EmoticonsToText` -> `emojif`
     * Translate text between languages with:
       `Get-TextTranslation` -> `translate`
     * AI-powered text transformation with:
      `Invoke-LLMTextTransformation` -> `spellcheck`
     * Extract string lists and evaluate statements with:
          * `Invoke-LLMStringListEvaluation` -> `getlist`
          * `Invoke-LLMBooleanEvaluation` -> `equalstrue`

### Additional Resources

- [DeepStack Face Recognition Functions](https://github.com/genXdev/genXdev/blob/main/README-GenXdev.AI.DeepStack.md)

<hr/>

## GenXdev.Coding

### FEATURES

* AI-Powered Code Refactoring
     * Create and manage refactoring tasks with `New-Refactor`
       and `Update-Refactor`
     * Use LLM-based selection to identify files needing refactoring
     * Continue refactoring sessions with `Start-NextRefactor`
     * Prioritize refactoring tasks for optimal workflow
     * Manage all refactors with `Update-Refactor`
     * Generate detailed refactoring reports with `Get-RefactorReport`

* Documentation Management
     * Track features, ideas, issues, and todos in README files
     * Add timestamped entries with priorities for issues, ideas, features, todoos and release notes
     * Merge release notes into module definition
     * View and manage documentation sections with dedicated cmdlets
     * Generate and maintain module documentation automatically with support for AI translations

## GenXdev.Queries

### FEATURES

    * use, 'PS> Ask "anything"' to query any of the popular LLM's,
          or all with 'PS> Ask "anything" All', but hands of the keyboard + mouse,
          while it is doing it's magic.
    * search "any topic" on any of the popular searchengines
          using the 'q' cmdlet
    * query multiple searchengines and content-providers at once
          with a single query using the 'qq' cmdlet
    * query text from a variety of api providers, all at once with
          a single query using the 'qqq' cmdlet
    * cool way of viewing and controlling youtube with 'qvideos' cmdlet

### NOTES

    In your PowerShell profile script,
    you can set a global variable named DefaultSecondaryMonitor.
    This allows you to setup your prefered webbrowser launch monitor.

    e.g.

       # Disable default placement of browser window
       Set-Variable -Name DefaultSecondaryMonitor -Value -1 -Scope Global

       # Place browser windows by default on 3th monitor (0 = Primary monitor, 1 = first, 2 = second,  etc)
       Set-Variable -Name DefaultSecondaryMonitor -Value 3 -Scope Global

<hr/>

## GenXdev.Webbrowser

### FEATURES

    * PlayWright browser control
    * launching of default browser, Microsoft Edge, Google Chrome or Firefox
    * launching of webbrowser with full control of window positioning
    * launching of webbrowser with a large set of options

### Additional Resources

- [WireGuard VPN Management Functions](https://github.com/genXdev/genXdev/blob/main/README-GenXdev.Windows.WireGuard.md)

<hr/>

## GenXdev.Windows

### FEATURES

    * Allow resizing/repositioning/closing of Windows
    * Get-Window will return a windows helper that allows you to manipulate the window
    * Read/write access to Windows special folder locations
