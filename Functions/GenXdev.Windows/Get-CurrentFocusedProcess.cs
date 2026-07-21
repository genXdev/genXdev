// ################################################################################
// Part of PowerShell module : GenXdev.Windows
// Original cmdlet filename  : Get-CurrentFocusedProcess.cs
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



using System.Diagnostics;
using System.Management.Automation;
using System.Runtime.InteropServices;

namespace GenXdev.Windows
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Retrieves the process object of the window that currently has keyboard focus.
.DESCRIPTION
* This cmdlet uses Windows API calls through P/Invoke to identify and
  return the Process object associated with the currently focused window.
* It leverages the User32.dll functions GetForegroundWindow and
  GetWindowThreadProcessId to determine which window has focus and obtain
  its associated process ID.
.EXAMPLE
```powershell
$focusedProcess = Get-CurrentFocusedProcess
Write-Host ""Active window process: $($focusedProcess.ProcessName)""
```

Retrieves the process object for the window that currently has keyboard
focus.
")]
    [Cmdlet(VerbsCommon.Get, "CurrentFocusedProcess")]
    [OutputType(typeof(System.Diagnostics.Process))]
    public class GetCurrentFocusedProcessCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// P/Invoke declarations for Windows API functions
        /// </summary>
        private static class User32
        {
            [DllImport("user32.dll")]
            public static extern IntPtr GetForegroundWindow();

            [DllImport("user32.dll")]
            public static extern int GetWindowThreadProcessId(IntPtr hWnd, out int processId);
        }

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Get the handle to the currently active window
            WriteVerbose("Attempting to get foreground window handle");
            IntPtr foregroundWindow = User32.GetForegroundWindow();

            // Retrieve the process id associated with the window handle
            WriteVerbose("Getting process ID from window handle");
            int processId = 0;
            User32.GetWindowThreadProcessId(foregroundWindow, out processId);

            // Verify we got a valid process id
            if (processId != 0)
            {
                // Attempt to get the process object using the process id
                WriteVerbose($"Retrieving process object for ID: {processId}");
                try
                {
                    Process process = Process.GetProcessById(processId);

                    // Return the process if found
                    WriteVerbose($"Successfully found process: {process.ProcessName}");
                    WriteObject(process);
                    return;
                }
                catch (ArgumentException)
                {
                    // Process not found
                }
                catch (Exception ex)
                {
                    WriteWarning($"Error retrieving process: {ex.Message}");
                    return;
                }
            }

            WriteWarning("Could not retrieve process for the focused window");
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
        }
    }
}