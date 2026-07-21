// ################################################################################
// Part of PowerShell module : GenXdev.Helpers
// Original cmdlet filename  : Remove-JSONComments.cs
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

namespace GenXdev.Helpers
{
    [System.ComponentModel.Description(@"
.SYNOPSIS
Removes comments from JSON content.
.DESCRIPTION
* Processes JSON content and removes both single-line and multi-line
  comments while preserving the JSON structure.
* Useful for cleaning up JSON files that contain documentation comments
  before parsing.
* Supports both single-line comments (//) and multi-line comments (/* */).
.EXAMPLE
```powershell
$jsonContent = @'
{
    // This is a comment
    ""name"": ""test"", /* inline comment */
    ""value"": 123
}
'@ -split ""`n""
Remove-JSONComments -Json $jsonContent
```

Removes comments from JSON content stored in a variable.
.EXAMPLE
```powershell
$jsonContent | Remove-JSONComments
```

Processes JSON content from the pipeline.
")]
    [Cmdlet(VerbsCommon.Remove, "JSONComments")]
    [OutputType(typeof(string))]
    public class RemoveJSONCommentsCommand : PSGenXdevCmdlet
    {
        /// <summary>
        /// The JSON content to process as a string array. Each element represents a line of JSON content.
        /// </summary>
        [Parameter(
            Mandatory = true,
            Position = 0,
            HelpMessage = "JSON content to process as string array"
        )]
        public string Json { get; set; }

        /// <summary>
        /// Begin processing - initialization logic
        /// </summary>
        protected override void BeginProcessing()
        {
            WriteVerbose("Starting JSON comment removal process");
        }

        /// <summary>
        /// Process record - main cmdlet logic
        /// </summary>
        protected override void ProcessRecord()
        {
            // Remove comments from json using the helper class
            WriteObject(Serialization.RemoveJSONComments(Json));
        }

        /// <summary>
        /// End processing - cleanup logic
        /// </summary>
        protected override void EndProcessing()
        {
            WriteVerbose("Completed JSON comment removal process");
        }
    }
}