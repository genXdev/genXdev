// ################################################################################
// Part of PowerShell module : GenXdev.Webbrowser.Playwright
// Original cmdlet filename  : Get-PlaywrightProfileDirectory.cs
// Original author           : René Vaessen / GenXdev
// Version                   : 3.26.2026
// ################################################################################
// Copyright (c) 2026 René Vaessen / GenXdev
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// ################################################################################



using System.Management.Automation;

namespace GenXdev.Webbrowser.Playwright
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Gets the Playwright browser profile directory for persistent sessions.
.DESCRIPTION
* Creates and manages browser profile directories for Playwright automated
  testing.
* Profiles are stored in LocalAppData under
  GenXdev.Powershell\Playwright.profiles.
* Each BrowserType value gets its own subdirectory, keeping real-browser
  profiles (ChromeNormal, EdgeNormal) separate from bundled Playwright
  profiles (ChromiumPlaywright, FirefoxPlaywright, WebKitPlaywright).
.EXAMPLE
```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromeNormal
```

Creates or returns path for the OS-installed Chrome browser profile.
.EXAMPLE
```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumNormal
```

Creates or returns path for the auto-detected Chromium browser profile.
.EXAMPLE
```powershell
Get-PlaywrightProfileDirectory -BrowserType ChromiumPlaywright
```

Creates or returns path for the bundled Playwright Chromium profile.
")]
    [Cmdlet(VerbsCommon.Get, "PlaywrightProfileDirectory")]
    [OutputType(typeof(string))]
    public class GetPlaywrightProfileDirectoryCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// Specifies the browser type to create/get a profile directory for
        /// </summary>
        [Parameter(
            Position = 0,
            HelpMessage = "The browser type: ChromeNormal, EdgeNormal, ChromiumNormal, ChromiumPlaywright, FirefoxPlaywright, or WebKitPlaywright")]
        [ValidateSet("ChromeNormal", "EdgeNormal", "ChromiumNormal", "ChromiumPlaywright", "FirefoxPlaywright", "WebKitPlaywright")]
        public string BrowserType { get; set; } = "ChromiumNormal";

        private string baseDir;

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            // Construct the base directory path for all browser profiles
            baseDir = Path.Combine(GetGenXdevAppDataPath(), "Playwright.profiles");

            WriteVerbose($"Base profile directory: {baseDir}");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Generate the specific browser profile directory path.
            // Each BrowserType value gets its own subdirectory.
            string browserDir = ExpandPath(
                Path.Combine(baseDir, BrowserType) + "\\",
                CreateDirectory: true);

            WriteVerbose($"Browser profile directory: {browserDir}");

            // Return the full profile directory path
            WriteObject(browserDir);
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
            // No cleanup needed
        }
    }
}