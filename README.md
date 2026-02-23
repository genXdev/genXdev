<hr/>

<img src="powershell.jpg" alt="GenXdev" width="50%"/>

<hr/>

### NAME
    GenXdev Powershell Modules
### SYNOPSIS
    GenXdev PowerShell Utilities and helpers
[![GenXdev](https://img.shields.io/powershellgallery/v/GenXdev.svg?style=flat-square&label=GenXdev)](https://www.powershellgallery.com/packages/GenXdev/) [![License](https://img.shields.io/github/license/genXdev/GenXdev?style=flat-square)](./LICENSE)

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

# Modules

## Module Overview

| Module | Description | Repository |
| :--- | :--- | :--- |
| [GenXdev.AI](#genxdevai) | A Windows PowerShell module for local AI related operations | [📁 GenXdev.AI](https://github.com/genXdev/GenXdev.AI) |
| [GenXdev.Coding](#genxdevcoding) | A Windows PowerShell module that helps being more productive with coding tasks. | [📁 GenXdev.Coding](https://github.com/genXdev/GenXdev.Coding) |
| [GenXdev.Console](#genxdevconsole) | A Windows PowerShell module for enhancing the commandline experience | [📁 GenXdev.Console](https://github.com/genXdev/GenXdev.Console) |
| [GenXdev.Data](#genxdevdata) | A Windows PowerShell module for enhancing the commandline experience | [📁 GenXdev.Data](https://github.com/genXdev/GenXdev.Data) |
| [GenXdev.FileSystem](#genxdevfilesystem) | A Windows PowerShell module for basic and advanced file management tasks | [📁 GenXdev.FileSystem](https://github.com/genXdev/GenXdev.FileSystem) |
| [GenXdev.Helpers](#genxdevhelpers) | A Windows PowerShell module with helpers mostly used by other GenXdev modules | [📁 GenXdev.Helpers](https://github.com/genXdev/GenXdev.Helpers) |
| [GenXdev.Media](#genxdevmedia) | A Windows PowerShell module that helps with converting media files like pictures and video files | [📁 GenXdev.Media](https://github.com/genXdev/GenXdev.Media) |
| [GenXdev.Queries](#genxdevqueries) | A Windows PowerShell module for finding resources and information on the internet | [📁 GenXdev.Queries](https://github.com/genXdev/GenXdev.Queries) |
| [GenXdev.Webbrowser](#genxdevwebbrowser) | A Windows PowerShell module for webbrowser operations | [📁 GenXdev.Webbrowser](https://github.com/genXdev/GenXdev.Webbrowser) |
| [GenXdev.Windows](#genxdevwindows) | A Windows PowerShell module for windows operations | [📁 GenXdev.Windows](https://github.com/genXdev/GenXdev.Windows) |

<br/><hr/><br/>

## GenXdev.AI

**A Windows PowerShell module for local AI related operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-EmoticonsToText](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-emoticonstotext) | emojify | &nbsp; |
| [Add-GenXdevMCPServerToLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-genxdevmcpservertolmstudio) | &nbsp; | Adds the GenXdev MCP server to LM Studio using a deeplink configuration. |
| [Add-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-imagedirectories) | addimgdir | Adds directories to the configured image directories for GenXdev.AI operations. |
| [Approve-NewTextFileContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#approve-newtextfilecontent) | &nbsp; | Interactive file content comparison and approval using WinMerge. |
| [Compare-ImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#compare-imagefaces) | comparefaces | &nbsp; |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convert-dotnettypetollmtype) | &nbsp; | Converts .NET type names to LLM (Language Model) type names. |
| [ConvertComfyImageFormat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertcomfyimageformat) | &nbsp; | Converts image file format while preserving maximum quality. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-corporatespeak) | uncorporatize | &nbsp; |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-diplomaticspeak) | undiplomatize | &nbsp; |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-corporatespeak) | corporatize | &nbsp; |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-diplomaticspeak) | diplomatize | &nbsp; |
| [ConvertTo-LMStudioFunctionDefinition](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-lmstudiofunctiondefinition) | &nbsp; | &nbsp; |
| [CreateComfySDXLWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfysdxlworkflow) | &nbsp; | Creates comprehensive ComfyUI SDXL workflow configuration supporting all parameters |
| [CreateComfyUniversalWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfyuniversalworkflow) | &nbsp; | &nbsp; |
| [DownloadComfyResults](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#downloadcomfyresults) | &nbsp; | Downloads generated results from ComfyUI server with file information |
| [EnsureComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyui) | &nbsp; | Ensures ComfyUI is installed and running with optional window positioning. |
| [EnsureComfyUIModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyuimodel) | &nbsp; | Ensures specified ComfyUI models are available locally with automatic download |
| [EnsureDeepStack](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuredeepstack) | &nbsp; | &nbsp; |
| [EnsureGithubCLIInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuregithubcliinstalled) | &nbsp; | Ensures GitHub CLI is properly installed and configured on the system. |
| [EnsureHuggingFace](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurehuggingface) | &nbsp; | &nbsp; |
| [EnsureLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurelmstudio) | &nbsp; | &nbsp; |
| [EnsurePaintNet](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepaintnet) | &nbsp; | Ensures Paint.NET is properly installed and accessible on the system. |
| [EnsurePip](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepip) | &nbsp; | Ensures pip is installed and functional for the specified Python installation. |
| [EnsurePython](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepython) | &nbsp; | &nbsp; |
| [EnsureWinMergeInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurewinmergeinstalled) | &nbsp; | Ensures WinMerge is installed and available for file comparison operations. |
| [Export-ImageIndex](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#export-imageindex) | indeximages | &nbsp; |
| [Find-Image](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-image) | findimages, li | &nbsp; |
| [Find-IndexedImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-indexedimage) | findindexedimages, lii | &nbsp; |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#generatemasonrylayouthtml) | &nbsp; | Generates a responsive masonry layout HTML gallery from image data. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aidefaultllmsettings) | &nbsp; | &nbsp; |
| [Get-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiimagecollection) | getimgdirs | &nbsp; |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiknownfacesrootpath) | &nbsp; | Gets the configured directory for face image files used in GenXdev.AI operations. |
| [Get-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aillmsettings) | &nbsp; | &nbsp; |
| [Get-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aimetalanguage) | getimgmetalang | Gets the configured default language for image metadata operations. |
| [Get-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-comfyuimodelpath) | &nbsp; | Gets the correct ComfyUI models directory path for the current installation |
| [Get-CpuCore](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-cpucore) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-Fallacy](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-fallacy) | dispicetext | &nbsp; |
| [Get-HasCapableGpu](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-hascapablegpu) | &nbsp; | Determines if a CUDA-capable GPU with sufficient memory is present. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedfaces) | &nbsp; | &nbsp; |
| [Get-ImageDetectedObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedobjects) | &nbsp; | Detects and classifies objects in an uploaded image using DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedscenes) | &nbsp; | &nbsp; |
| [Get-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexpath) | &nbsp; | Returns the path to the image database, initializing or rebuilding it if needed. |
| [Get-ImageIndexStats](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexstats) | getimagedbstats, gids | &nbsp; |
| [Get-LMStudioLoadedModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudioloadedmodellist) | &nbsp; | Retrieves the list of currently loaded models from LM Studio. |
| [Get-LMStudioModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiomodellist) | &nbsp; | Retrieves a list of installed LM Studio models. |
| [Get-LMStudioPaths](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiopaths) | &nbsp; | Retrieves file paths for LM Studio executables. |
| [Get-LMStudioTextEmbedding](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiotextembedding) | &nbsp; | Gets text embeddings from LM Studio model. |
| [Get-LMStudioWindow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiowindow) | lmstudiowindow, setlmstudiowindow | Gets a window helper for the LM Studio application. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-numberofcpucores) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-RegisteredFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-registeredfaces) | &nbsp; | &nbsp; |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-scriptexecutionerrorfixprompt) | getfixprompt | &nbsp; |
| [Get-SimularMovieTitles](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-simularmovietitles) | &nbsp; | Finds similar movie titles based on common properties. |
| [Get-TextTranslation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-texttranslation) | translate | &nbsp; |
| [Get-VectorSimilarity](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-vectorsimilarity) | &nbsp; | Calculates the cosine similarity between two vectors, returning a value between 0 and 1. |
| [Initialize-LMStudioModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#initialize-lmstudiomodel) | initlmstudio | &nbsp; |
| [Install-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#install-lmstudioapplication) | &nbsp; | &nbsp; |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-aipowershellcommand) | hint | &nbsp; |
| [Invoke-ComfyUIImageGeneration](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-comfyuiimagegeneration) | generateimage | &nbsp; |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-commandfromtoolcall) | &nbsp; | &nbsp; |
| [Invoke-HuggingFaceCli](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-huggingfacecli) | &nbsp; | &nbsp; |
| [Invoke-ImageEnhancement](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageenhancement) | enhanceimage | &nbsp; |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagefacesupdate) | imagepeopledetection | &nbsp; |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagekeywordupdate) | imagekeywordgeneration | &nbsp; |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagemetadataupdate) | imagepropdetection | &nbsp; |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageobjectsupdate) | imageobjectdetection | &nbsp; |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagescenesupdate) | imagescenedetection | &nbsp; |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmbooleanevaluation) | equalstrue | &nbsp; |
| [Invoke-LLMQuery](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmquery) | llm, qllm | &nbsp; |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmstringlistevaluation) | getlist, getstring | &nbsp; |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmtexttransformation) | spellcheck | &nbsp; |
| [Invoke-QueryImageContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-queryimagecontent) | &nbsp; | &nbsp; |
| [Invoke-WinMerge](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-winmerge) | &nbsp; | Launches WinMerge to compare two files side by side. |
| [New-GenXdevMCPToken](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-genxdevmcptoken) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmaudiochat) | llmaudiochat | &nbsp; |
| [New-LLMTextChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmtextchat) | llmchat | &nbsp; |
| [QueueComfyWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#queuecomfyworkflow) | &nbsp; | &nbsp; |
| [Register-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-allfaces) | UpdateFaces | &nbsp; |
| [Register-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-face) | &nbsp; | &nbsp; |
| [Remove-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagedirectories) | removeimgdir | &nbsp; |
| [Remove-ImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagemetadata) | removeimagedata | &nbsp; |
| [ResizeComfyInputImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#resizecomfyinputimage) | &nbsp; | &nbsp; |
| [Save-FoundImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimagefaces) | saveimagefaces | &nbsp; |
| [Save-FoundImageObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimageobjects) | saveimageObjects | &nbsp; |
| [Save-Transcriptions](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-transcriptions) | &nbsp; | &nbsp; |
| [Set-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiimagecollection) | &nbsp; | &nbsp; |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiknownfacesrootpath) | &nbsp; | Sets the directory for face image files used in GenXdev.AI operations. |
| [Set-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aillmsettings) | &nbsp; | &nbsp; |
| [Set-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aimetalanguage) | &nbsp; | Sets the default language and optionally the image directories for GenXdev.AI image metadata operations. |
| [Set-ComfyUIBackgroundImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuibackgroundimage) | &nbsp; | Sets or clears the background image for ComfyUI's canvas interface |
| [Set-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuimodelpath) | &nbsp; | &nbsp; |
| [Set-GenXdevAICommandNotFoundAction](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-genxdevaicommandnotfoundaction) | &nbsp; | &nbsp; |
| [Set-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-imageindexpath) | &nbsp; | Sets the default database file path for image operations in GenXdev.AI. |
| [Set-WindowsWallpaperEx](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-windowswallpaperex) | nextwallpaper | &nbsp; |
| [SetComfyUIProcessPriority](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#setcomfyuiprocesspriority) | &nbsp; | &nbsp; |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-foundimagesinbrowser) | showfoundimages | &nbsp; |
| [Show-GenXdevScriptErrorFixInIde](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-genxdevscripterrorfixinide) | letsfixthis | &nbsp; |
| [Start-AudioTranscription](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-audiotranscription) | transcribe, transcribefile | &nbsp; |
| [Start-GenXdevMCPServer](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-genxdevmcpserver) | &nbsp; | &nbsp; |
| [Start-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-lmstudioapplication) | &nbsp; | &nbsp; |
| [Stop-ComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#stop-comfyui) | &nbsp; | Terminates all running ComfyUI processes and releases associated resources. |
| [Test-ComfyUIQueueEmpty](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-comfyuiqueueempty) | &nbsp; | Checks if the ComfyUI processing queue is empty |
| [Test-DeepLinkImageFile](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-deeplinkimagefile) | &nbsp; | Tests if the specified file path is a valid image file with a supported format. |
| [Test-LMStudioInstallation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioinstallation) | &nbsp; | Tests if LMStudio is installed and accessible on the system. |
| [Test-LMStudioProcess](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioprocess) | &nbsp; | Tests if LM Studio process is running and configures its window state. |
| [Unregister-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-allfaces) | &nbsp; | Removes all registered faces from the DeepStack face recognition system. |
| [Unregister-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-face) | &nbsp; | Deletes a registered face by its identifier from DeepStack. |
| [Update-AllImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#update-allimagemetadata) | updateallimages | &nbsp; |
| [UploadComfyImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#uploadcomfyimage) | &nbsp; | &nbsp; |
| [WaitForComfyCompletion](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#waitforcomfycompletion) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.AI/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.AI.ComfyUI

**A Windows PowerShell module for local AI related operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-EmoticonsToText](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-emoticonstotext) | emojify | &nbsp; |
| [Add-GenXdevMCPServerToLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-genxdevmcpservertolmstudio) | &nbsp; | Adds the GenXdev MCP server to LM Studio using a deeplink configuration. |
| [Add-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-imagedirectories) | addimgdir | Adds directories to the configured image directories for GenXdev.AI operations. |
| [Approve-NewTextFileContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#approve-newtextfilecontent) | &nbsp; | Interactive file content comparison and approval using WinMerge. |
| [Compare-ImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#compare-imagefaces) | comparefaces | &nbsp; |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convert-dotnettypetollmtype) | &nbsp; | Converts .NET type names to LLM (Language Model) type names. |
| [ConvertComfyImageFormat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertcomfyimageformat) | &nbsp; | Converts image file format while preserving maximum quality. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-corporatespeak) | uncorporatize | &nbsp; |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-diplomaticspeak) | undiplomatize | &nbsp; |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-corporatespeak) | corporatize | &nbsp; |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-diplomaticspeak) | diplomatize | &nbsp; |
| [ConvertTo-LMStudioFunctionDefinition](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-lmstudiofunctiondefinition) | &nbsp; | &nbsp; |
| [CreateComfySDXLWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfysdxlworkflow) | &nbsp; | Creates comprehensive ComfyUI SDXL workflow configuration supporting all parameters |
| [CreateComfyUniversalWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfyuniversalworkflow) | &nbsp; | &nbsp; |
| [DownloadComfyResults](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#downloadcomfyresults) | &nbsp; | Downloads generated results from ComfyUI server with file information |
| [EnsureComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyui) | &nbsp; | Ensures ComfyUI is installed and running with optional window positioning. |
| [EnsureComfyUIModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyuimodel) | &nbsp; | Ensures specified ComfyUI models are available locally with automatic download |
| [EnsureDeepStack](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuredeepstack) | &nbsp; | &nbsp; |
| [EnsureGithubCLIInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuregithubcliinstalled) | &nbsp; | Ensures GitHub CLI is properly installed and configured on the system. |
| [EnsureHuggingFace](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurehuggingface) | &nbsp; | &nbsp; |
| [EnsureLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurelmstudio) | &nbsp; | &nbsp; |
| [EnsurePaintNet](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepaintnet) | &nbsp; | Ensures Paint.NET is properly installed and accessible on the system. |
| [EnsurePip](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepip) | &nbsp; | Ensures pip is installed and functional for the specified Python installation. |
| [EnsurePython](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepython) | &nbsp; | &nbsp; |
| [EnsureWinMergeInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurewinmergeinstalled) | &nbsp; | Ensures WinMerge is installed and available for file comparison operations. |
| [Export-ImageIndex](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#export-imageindex) | indeximages | &nbsp; |
| [Find-Image](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-image) | findimages, li | &nbsp; |
| [Find-IndexedImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-indexedimage) | findindexedimages, lii | &nbsp; |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#generatemasonrylayouthtml) | &nbsp; | Generates a responsive masonry layout HTML gallery from image data. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aidefaultllmsettings) | &nbsp; | &nbsp; |
| [Get-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiimagecollection) | getimgdirs | &nbsp; |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiknownfacesrootpath) | &nbsp; | Gets the configured directory for face image files used in GenXdev.AI operations. |
| [Get-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aillmsettings) | &nbsp; | &nbsp; |
| [Get-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aimetalanguage) | getimgmetalang | Gets the configured default language for image metadata operations. |
| [Get-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-comfyuimodelpath) | &nbsp; | Gets the correct ComfyUI models directory path for the current installation |
| [Get-CpuCore](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-cpucore) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-Fallacy](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-fallacy) | dispicetext | &nbsp; |
| [Get-HasCapableGpu](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-hascapablegpu) | &nbsp; | Determines if a CUDA-capable GPU with sufficient memory is present. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedfaces) | &nbsp; | &nbsp; |
| [Get-ImageDetectedObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedobjects) | &nbsp; | Detects and classifies objects in an uploaded image using DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedscenes) | &nbsp; | &nbsp; |
| [Get-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexpath) | &nbsp; | Returns the path to the image database, initializing or rebuilding it if needed. |
| [Get-ImageIndexStats](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexstats) | getimagedbstats, gids | &nbsp; |
| [Get-LMStudioLoadedModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudioloadedmodellist) | &nbsp; | Retrieves the list of currently loaded models from LM Studio. |
| [Get-LMStudioModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiomodellist) | &nbsp; | Retrieves a list of installed LM Studio models. |
| [Get-LMStudioPaths](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiopaths) | &nbsp; | Retrieves file paths for LM Studio executables. |
| [Get-LMStudioTextEmbedding](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiotextembedding) | &nbsp; | Gets text embeddings from LM Studio model. |
| [Get-LMStudioWindow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiowindow) | lmstudiowindow, setlmstudiowindow | Gets a window helper for the LM Studio application. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-numberofcpucores) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-RegisteredFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-registeredfaces) | &nbsp; | &nbsp; |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-scriptexecutionerrorfixprompt) | getfixprompt | &nbsp; |
| [Get-SimularMovieTitles](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-simularmovietitles) | &nbsp; | Finds similar movie titles based on common properties. |
| [Get-TextTranslation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-texttranslation) | translate | &nbsp; |
| [Get-VectorSimilarity](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-vectorsimilarity) | &nbsp; | Calculates the cosine similarity between two vectors, returning a value between 0 and 1. |
| [Initialize-LMStudioModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#initialize-lmstudiomodel) | initlmstudio | &nbsp; |
| [Install-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#install-lmstudioapplication) | &nbsp; | &nbsp; |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-aipowershellcommand) | hint | &nbsp; |
| [Invoke-ComfyUIImageGeneration](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-comfyuiimagegeneration) | generateimage | &nbsp; |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-commandfromtoolcall) | &nbsp; | &nbsp; |
| [Invoke-HuggingFaceCli](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-huggingfacecli) | &nbsp; | &nbsp; |
| [Invoke-ImageEnhancement](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageenhancement) | enhanceimage | &nbsp; |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagefacesupdate) | imagepeopledetection | &nbsp; |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagekeywordupdate) | imagekeywordgeneration | &nbsp; |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagemetadataupdate) | imagepropdetection | &nbsp; |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageobjectsupdate) | imageobjectdetection | &nbsp; |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagescenesupdate) | imagescenedetection | &nbsp; |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmbooleanevaluation) | equalstrue | &nbsp; |
| [Invoke-LLMQuery](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmquery) | llm, qllm | &nbsp; |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmstringlistevaluation) | getlist, getstring | &nbsp; |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmtexttransformation) | spellcheck | &nbsp; |
| [Invoke-QueryImageContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-queryimagecontent) | &nbsp; | &nbsp; |
| [Invoke-WinMerge](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-winmerge) | &nbsp; | Launches WinMerge to compare two files side by side. |
| [New-GenXdevMCPToken](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-genxdevmcptoken) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmaudiochat) | llmaudiochat | &nbsp; |
| [New-LLMTextChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmtextchat) | llmchat | &nbsp; |
| [QueueComfyWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#queuecomfyworkflow) | &nbsp; | &nbsp; |
| [Register-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-allfaces) | UpdateFaces | &nbsp; |
| [Register-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-face) | &nbsp; | &nbsp; |
| [Remove-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagedirectories) | removeimgdir | &nbsp; |
| [Remove-ImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagemetadata) | removeimagedata | &nbsp; |
| [ResizeComfyInputImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#resizecomfyinputimage) | &nbsp; | &nbsp; |
| [Save-FoundImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimagefaces) | saveimagefaces | &nbsp; |
| [Save-FoundImageObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimageobjects) | saveimageObjects | &nbsp; |
| [Save-Transcriptions](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-transcriptions) | &nbsp; | &nbsp; |
| [Set-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiimagecollection) | &nbsp; | &nbsp; |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiknownfacesrootpath) | &nbsp; | Sets the directory for face image files used in GenXdev.AI operations. |
| [Set-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aillmsettings) | &nbsp; | &nbsp; |
| [Set-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aimetalanguage) | &nbsp; | Sets the default language and optionally the image directories for GenXdev.AI image metadata operations. |
| [Set-ComfyUIBackgroundImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuibackgroundimage) | &nbsp; | Sets or clears the background image for ComfyUI's canvas interface |
| [Set-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuimodelpath) | &nbsp; | &nbsp; |
| [Set-GenXdevAICommandNotFoundAction](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-genxdevaicommandnotfoundaction) | &nbsp; | &nbsp; |
| [Set-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-imageindexpath) | &nbsp; | Sets the default database file path for image operations in GenXdev.AI. |
| [Set-WindowsWallpaperEx](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-windowswallpaperex) | nextwallpaper | &nbsp; |
| [SetComfyUIProcessPriority](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#setcomfyuiprocesspriority) | &nbsp; | &nbsp; |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-foundimagesinbrowser) | showfoundimages | &nbsp; |
| [Show-GenXdevScriptErrorFixInIde](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-genxdevscripterrorfixinide) | letsfixthis | &nbsp; |
| [Start-AudioTranscription](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-audiotranscription) | transcribe, transcribefile | &nbsp; |
| [Start-GenXdevMCPServer](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-genxdevmcpserver) | &nbsp; | &nbsp; |
| [Start-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-lmstudioapplication) | &nbsp; | &nbsp; |
| [Stop-ComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#stop-comfyui) | &nbsp; | Terminates all running ComfyUI processes and releases associated resources. |
| [Test-ComfyUIQueueEmpty](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-comfyuiqueueempty) | &nbsp; | Checks if the ComfyUI processing queue is empty |
| [Test-DeepLinkImageFile](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-deeplinkimagefile) | &nbsp; | Tests if the specified file path is a valid image file with a supported format. |
| [Test-LMStudioInstallation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioinstallation) | &nbsp; | Tests if LMStudio is installed and accessible on the system. |
| [Test-LMStudioProcess](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioprocess) | &nbsp; | Tests if LM Studio process is running and configures its window state. |
| [Unregister-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-allfaces) | &nbsp; | Removes all registered faces from the DeepStack face recognition system. |
| [Unregister-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-face) | &nbsp; | Deletes a registered face by its identifier from DeepStack. |
| [Update-AllImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#update-allimagemetadata) | updateallimages | &nbsp; |
| [UploadComfyImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#uploadcomfyimage) | &nbsp; | &nbsp; |
| [WaitForComfyCompletion](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#waitforcomfycompletion) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.AI/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.AI.Data

**A Windows PowerShell module for local AI related operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-EmoticonsToText](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-emoticonstotext) | emojify | &nbsp; |
| [Add-GenXdevMCPServerToLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-genxdevmcpservertolmstudio) | &nbsp; | Adds the GenXdev MCP server to LM Studio using a deeplink configuration. |
| [Add-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-imagedirectories) | addimgdir | Adds directories to the configured image directories for GenXdev.AI operations. |
| [Approve-NewTextFileContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#approve-newtextfilecontent) | &nbsp; | Interactive file content comparison and approval using WinMerge. |
| [Compare-ImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#compare-imagefaces) | comparefaces | &nbsp; |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convert-dotnettypetollmtype) | &nbsp; | Converts .NET type names to LLM (Language Model) type names. |
| [ConvertComfyImageFormat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertcomfyimageformat) | &nbsp; | Converts image file format while preserving maximum quality. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-corporatespeak) | uncorporatize | &nbsp; |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-diplomaticspeak) | undiplomatize | &nbsp; |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-corporatespeak) | corporatize | &nbsp; |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-diplomaticspeak) | diplomatize | &nbsp; |
| [ConvertTo-LMStudioFunctionDefinition](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-lmstudiofunctiondefinition) | &nbsp; | &nbsp; |
| [CreateComfySDXLWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfysdxlworkflow) | &nbsp; | Creates comprehensive ComfyUI SDXL workflow configuration supporting all parameters |
| [CreateComfyUniversalWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfyuniversalworkflow) | &nbsp; | &nbsp; |
| [DownloadComfyResults](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#downloadcomfyresults) | &nbsp; | Downloads generated results from ComfyUI server with file information |
| [EnsureComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyui) | &nbsp; | Ensures ComfyUI is installed and running with optional window positioning. |
| [EnsureComfyUIModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyuimodel) | &nbsp; | Ensures specified ComfyUI models are available locally with automatic download |
| [EnsureDeepStack](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuredeepstack) | &nbsp; | &nbsp; |
| [EnsureGithubCLIInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuregithubcliinstalled) | &nbsp; | Ensures GitHub CLI is properly installed and configured on the system. |
| [EnsureHuggingFace](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurehuggingface) | &nbsp; | &nbsp; |
| [EnsureLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurelmstudio) | &nbsp; | &nbsp; |
| [EnsurePaintNet](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepaintnet) | &nbsp; | Ensures Paint.NET is properly installed and accessible on the system. |
| [EnsurePip](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepip) | &nbsp; | Ensures pip is installed and functional for the specified Python installation. |
| [EnsurePython](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepython) | &nbsp; | &nbsp; |
| [EnsureWinMergeInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurewinmergeinstalled) | &nbsp; | Ensures WinMerge is installed and available for file comparison operations. |
| [Export-ImageIndex](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#export-imageindex) | indeximages | &nbsp; |
| [Find-Image](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-image) | findimages, li | &nbsp; |
| [Find-IndexedImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-indexedimage) | findindexedimages, lii | &nbsp; |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#generatemasonrylayouthtml) | &nbsp; | Generates a responsive masonry layout HTML gallery from image data. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aidefaultllmsettings) | &nbsp; | &nbsp; |
| [Get-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiimagecollection) | getimgdirs | &nbsp; |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiknownfacesrootpath) | &nbsp; | Gets the configured directory for face image files used in GenXdev.AI operations. |
| [Get-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aillmsettings) | &nbsp; | &nbsp; |
| [Get-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aimetalanguage) | getimgmetalang | Gets the configured default language for image metadata operations. |
| [Get-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-comfyuimodelpath) | &nbsp; | Gets the correct ComfyUI models directory path for the current installation |
| [Get-CpuCore](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-cpucore) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-Fallacy](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-fallacy) | dispicetext | &nbsp; |
| [Get-HasCapableGpu](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-hascapablegpu) | &nbsp; | Determines if a CUDA-capable GPU with sufficient memory is present. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedfaces) | &nbsp; | &nbsp; |
| [Get-ImageDetectedObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedobjects) | &nbsp; | Detects and classifies objects in an uploaded image using DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedscenes) | &nbsp; | &nbsp; |
| [Get-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexpath) | &nbsp; | Returns the path to the image database, initializing or rebuilding it if needed. |
| [Get-ImageIndexStats](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexstats) | getimagedbstats, gids | &nbsp; |
| [Get-LMStudioLoadedModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudioloadedmodellist) | &nbsp; | Retrieves the list of currently loaded models from LM Studio. |
| [Get-LMStudioModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiomodellist) | &nbsp; | Retrieves a list of installed LM Studio models. |
| [Get-LMStudioPaths](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiopaths) | &nbsp; | Retrieves file paths for LM Studio executables. |
| [Get-LMStudioTextEmbedding](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiotextembedding) | &nbsp; | Gets text embeddings from LM Studio model. |
| [Get-LMStudioWindow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiowindow) | lmstudiowindow, setlmstudiowindow | Gets a window helper for the LM Studio application. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-numberofcpucores) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-RegisteredFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-registeredfaces) | &nbsp; | &nbsp; |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-scriptexecutionerrorfixprompt) | getfixprompt | &nbsp; |
| [Get-SimularMovieTitles](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-simularmovietitles) | &nbsp; | Finds similar movie titles based on common properties. |
| [Get-TextTranslation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-texttranslation) | translate | &nbsp; |
| [Get-VectorSimilarity](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-vectorsimilarity) | &nbsp; | Calculates the cosine similarity between two vectors, returning a value between 0 and 1. |
| [Initialize-LMStudioModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#initialize-lmstudiomodel) | initlmstudio | &nbsp; |
| [Install-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#install-lmstudioapplication) | &nbsp; | &nbsp; |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-aipowershellcommand) | hint | &nbsp; |
| [Invoke-ComfyUIImageGeneration](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-comfyuiimagegeneration) | generateimage | &nbsp; |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-commandfromtoolcall) | &nbsp; | &nbsp; |
| [Invoke-HuggingFaceCli](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-huggingfacecli) | &nbsp; | &nbsp; |
| [Invoke-ImageEnhancement](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageenhancement) | enhanceimage | &nbsp; |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagefacesupdate) | imagepeopledetection | &nbsp; |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagekeywordupdate) | imagekeywordgeneration | &nbsp; |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagemetadataupdate) | imagepropdetection | &nbsp; |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageobjectsupdate) | imageobjectdetection | &nbsp; |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagescenesupdate) | imagescenedetection | &nbsp; |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmbooleanevaluation) | equalstrue | &nbsp; |
| [Invoke-LLMQuery](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmquery) | llm, qllm | &nbsp; |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmstringlistevaluation) | getlist, getstring | &nbsp; |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmtexttransformation) | spellcheck | &nbsp; |
| [Invoke-QueryImageContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-queryimagecontent) | &nbsp; | &nbsp; |
| [Invoke-WinMerge](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-winmerge) | &nbsp; | Launches WinMerge to compare two files side by side. |
| [New-GenXdevMCPToken](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-genxdevmcptoken) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmaudiochat) | llmaudiochat | &nbsp; |
| [New-LLMTextChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmtextchat) | llmchat | &nbsp; |
| [QueueComfyWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#queuecomfyworkflow) | &nbsp; | &nbsp; |
| [Register-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-allfaces) | UpdateFaces | &nbsp; |
| [Register-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-face) | &nbsp; | &nbsp; |
| [Remove-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagedirectories) | removeimgdir | &nbsp; |
| [Remove-ImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagemetadata) | removeimagedata | &nbsp; |
| [ResizeComfyInputImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#resizecomfyinputimage) | &nbsp; | &nbsp; |
| [Save-FoundImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimagefaces) | saveimagefaces | &nbsp; |
| [Save-FoundImageObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimageobjects) | saveimageObjects | &nbsp; |
| [Save-Transcriptions](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-transcriptions) | &nbsp; | &nbsp; |
| [Set-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiimagecollection) | &nbsp; | &nbsp; |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiknownfacesrootpath) | &nbsp; | Sets the directory for face image files used in GenXdev.AI operations. |
| [Set-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aillmsettings) | &nbsp; | &nbsp; |
| [Set-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aimetalanguage) | &nbsp; | Sets the default language and optionally the image directories for GenXdev.AI image metadata operations. |
| [Set-ComfyUIBackgroundImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuibackgroundimage) | &nbsp; | Sets or clears the background image for ComfyUI's canvas interface |
| [Set-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuimodelpath) | &nbsp; | &nbsp; |
| [Set-GenXdevAICommandNotFoundAction](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-genxdevaicommandnotfoundaction) | &nbsp; | &nbsp; |
| [Set-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-imageindexpath) | &nbsp; | Sets the default database file path for image operations in GenXdev.AI. |
| [Set-WindowsWallpaperEx](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-windowswallpaperex) | nextwallpaper | &nbsp; |
| [SetComfyUIProcessPriority](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#setcomfyuiprocesspriority) | &nbsp; | &nbsp; |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-foundimagesinbrowser) | showfoundimages | &nbsp; |
| [Show-GenXdevScriptErrorFixInIde](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-genxdevscripterrorfixinide) | letsfixthis | &nbsp; |
| [Start-AudioTranscription](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-audiotranscription) | transcribe, transcribefile | &nbsp; |
| [Start-GenXdevMCPServer](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-genxdevmcpserver) | &nbsp; | &nbsp; |
| [Start-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-lmstudioapplication) | &nbsp; | &nbsp; |
| [Stop-ComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#stop-comfyui) | &nbsp; | Terminates all running ComfyUI processes and releases associated resources. |
| [Test-ComfyUIQueueEmpty](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-comfyuiqueueempty) | &nbsp; | Checks if the ComfyUI processing queue is empty |
| [Test-DeepLinkImageFile](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-deeplinkimagefile) | &nbsp; | Tests if the specified file path is a valid image file with a supported format. |
| [Test-LMStudioInstallation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioinstallation) | &nbsp; | Tests if LMStudio is installed and accessible on the system. |
| [Test-LMStudioProcess](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioprocess) | &nbsp; | Tests if LM Studio process is running and configures its window state. |
| [Unregister-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-allfaces) | &nbsp; | Removes all registered faces from the DeepStack face recognition system. |
| [Unregister-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-face) | &nbsp; | Deletes a registered face by its identifier from DeepStack. |
| [Update-AllImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#update-allimagemetadata) | updateallimages | &nbsp; |
| [UploadComfyImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#uploadcomfyimage) | &nbsp; | &nbsp; |
| [WaitForComfyCompletion](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#waitforcomfycompletion) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.AI/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.AI.DeepStack

**A Windows PowerShell module for local AI related operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-EmoticonsToText](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-emoticonstotext) | emojify | &nbsp; |
| [Add-GenXdevMCPServerToLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-genxdevmcpservertolmstudio) | &nbsp; | Adds the GenXdev MCP server to LM Studio using a deeplink configuration. |
| [Add-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-imagedirectories) | addimgdir | Adds directories to the configured image directories for GenXdev.AI operations. |
| [Approve-NewTextFileContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#approve-newtextfilecontent) | &nbsp; | Interactive file content comparison and approval using WinMerge. |
| [Compare-ImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#compare-imagefaces) | comparefaces | &nbsp; |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convert-dotnettypetollmtype) | &nbsp; | Converts .NET type names to LLM (Language Model) type names. |
| [ConvertComfyImageFormat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertcomfyimageformat) | &nbsp; | Converts image file format while preserving maximum quality. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-corporatespeak) | uncorporatize | &nbsp; |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-diplomaticspeak) | undiplomatize | &nbsp; |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-corporatespeak) | corporatize | &nbsp; |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-diplomaticspeak) | diplomatize | &nbsp; |
| [ConvertTo-LMStudioFunctionDefinition](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-lmstudiofunctiondefinition) | &nbsp; | &nbsp; |
| [CreateComfySDXLWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfysdxlworkflow) | &nbsp; | Creates comprehensive ComfyUI SDXL workflow configuration supporting all parameters |
| [CreateComfyUniversalWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfyuniversalworkflow) | &nbsp; | &nbsp; |
| [DownloadComfyResults](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#downloadcomfyresults) | &nbsp; | Downloads generated results from ComfyUI server with file information |
| [EnsureComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyui) | &nbsp; | Ensures ComfyUI is installed and running with optional window positioning. |
| [EnsureComfyUIModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyuimodel) | &nbsp; | Ensures specified ComfyUI models are available locally with automatic download |
| [EnsureDeepStack](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuredeepstack) | &nbsp; | &nbsp; |
| [EnsureGithubCLIInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuregithubcliinstalled) | &nbsp; | Ensures GitHub CLI is properly installed and configured on the system. |
| [EnsureHuggingFace](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurehuggingface) | &nbsp; | &nbsp; |
| [EnsureLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurelmstudio) | &nbsp; | &nbsp; |
| [EnsurePaintNet](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepaintnet) | &nbsp; | Ensures Paint.NET is properly installed and accessible on the system. |
| [EnsurePip](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepip) | &nbsp; | Ensures pip is installed and functional for the specified Python installation. |
| [EnsurePython](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepython) | &nbsp; | &nbsp; |
| [EnsureWinMergeInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurewinmergeinstalled) | &nbsp; | Ensures WinMerge is installed and available for file comparison operations. |
| [Export-ImageIndex](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#export-imageindex) | indeximages | &nbsp; |
| [Find-Image](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-image) | findimages, li | &nbsp; |
| [Find-IndexedImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-indexedimage) | findindexedimages, lii | &nbsp; |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#generatemasonrylayouthtml) | &nbsp; | Generates a responsive masonry layout HTML gallery from image data. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aidefaultllmsettings) | &nbsp; | &nbsp; |
| [Get-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiimagecollection) | getimgdirs | &nbsp; |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiknownfacesrootpath) | &nbsp; | Gets the configured directory for face image files used in GenXdev.AI operations. |
| [Get-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aillmsettings) | &nbsp; | &nbsp; |
| [Get-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aimetalanguage) | getimgmetalang | Gets the configured default language for image metadata operations. |
| [Get-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-comfyuimodelpath) | &nbsp; | Gets the correct ComfyUI models directory path for the current installation |
| [Get-CpuCore](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-cpucore) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-Fallacy](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-fallacy) | dispicetext | &nbsp; |
| [Get-HasCapableGpu](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-hascapablegpu) | &nbsp; | Determines if a CUDA-capable GPU with sufficient memory is present. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedfaces) | &nbsp; | &nbsp; |
| [Get-ImageDetectedObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedobjects) | &nbsp; | Detects and classifies objects in an uploaded image using DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedscenes) | &nbsp; | &nbsp; |
| [Get-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexpath) | &nbsp; | Returns the path to the image database, initializing or rebuilding it if needed. |
| [Get-ImageIndexStats](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexstats) | getimagedbstats, gids | &nbsp; |
| [Get-LMStudioLoadedModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudioloadedmodellist) | &nbsp; | Retrieves the list of currently loaded models from LM Studio. |
| [Get-LMStudioModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiomodellist) | &nbsp; | Retrieves a list of installed LM Studio models. |
| [Get-LMStudioPaths](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiopaths) | &nbsp; | Retrieves file paths for LM Studio executables. |
| [Get-LMStudioTextEmbedding](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiotextembedding) | &nbsp; | Gets text embeddings from LM Studio model. |
| [Get-LMStudioWindow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiowindow) | lmstudiowindow, setlmstudiowindow | Gets a window helper for the LM Studio application. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-numberofcpucores) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-RegisteredFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-registeredfaces) | &nbsp; | &nbsp; |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-scriptexecutionerrorfixprompt) | getfixprompt | &nbsp; |
| [Get-SimularMovieTitles](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-simularmovietitles) | &nbsp; | Finds similar movie titles based on common properties. |
| [Get-TextTranslation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-texttranslation) | translate | &nbsp; |
| [Get-VectorSimilarity](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-vectorsimilarity) | &nbsp; | Calculates the cosine similarity between two vectors, returning a value between 0 and 1. |
| [Initialize-LMStudioModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#initialize-lmstudiomodel) | initlmstudio | &nbsp; |
| [Install-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#install-lmstudioapplication) | &nbsp; | &nbsp; |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-aipowershellcommand) | hint | &nbsp; |
| [Invoke-ComfyUIImageGeneration](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-comfyuiimagegeneration) | generateimage | &nbsp; |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-commandfromtoolcall) | &nbsp; | &nbsp; |
| [Invoke-HuggingFaceCli](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-huggingfacecli) | &nbsp; | &nbsp; |
| [Invoke-ImageEnhancement](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageenhancement) | enhanceimage | &nbsp; |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagefacesupdate) | imagepeopledetection | &nbsp; |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagekeywordupdate) | imagekeywordgeneration | &nbsp; |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagemetadataupdate) | imagepropdetection | &nbsp; |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageobjectsupdate) | imageobjectdetection | &nbsp; |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagescenesupdate) | imagescenedetection | &nbsp; |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmbooleanevaluation) | equalstrue | &nbsp; |
| [Invoke-LLMQuery](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmquery) | llm, qllm | &nbsp; |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmstringlistevaluation) | getlist, getstring | &nbsp; |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmtexttransformation) | spellcheck | &nbsp; |
| [Invoke-QueryImageContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-queryimagecontent) | &nbsp; | &nbsp; |
| [Invoke-WinMerge](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-winmerge) | &nbsp; | Launches WinMerge to compare two files side by side. |
| [New-GenXdevMCPToken](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-genxdevmcptoken) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmaudiochat) | llmaudiochat | &nbsp; |
| [New-LLMTextChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmtextchat) | llmchat | &nbsp; |
| [QueueComfyWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#queuecomfyworkflow) | &nbsp; | &nbsp; |
| [Register-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-allfaces) | UpdateFaces | &nbsp; |
| [Register-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-face) | &nbsp; | &nbsp; |
| [Remove-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagedirectories) | removeimgdir | &nbsp; |
| [Remove-ImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagemetadata) | removeimagedata | &nbsp; |
| [ResizeComfyInputImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#resizecomfyinputimage) | &nbsp; | &nbsp; |
| [Save-FoundImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimagefaces) | saveimagefaces | &nbsp; |
| [Save-FoundImageObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimageobjects) | saveimageObjects | &nbsp; |
| [Save-Transcriptions](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-transcriptions) | &nbsp; | &nbsp; |
| [Set-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiimagecollection) | &nbsp; | &nbsp; |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiknownfacesrootpath) | &nbsp; | Sets the directory for face image files used in GenXdev.AI operations. |
| [Set-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aillmsettings) | &nbsp; | &nbsp; |
| [Set-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aimetalanguage) | &nbsp; | Sets the default language and optionally the image directories for GenXdev.AI image metadata operations. |
| [Set-ComfyUIBackgroundImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuibackgroundimage) | &nbsp; | Sets or clears the background image for ComfyUI's canvas interface |
| [Set-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuimodelpath) | &nbsp; | &nbsp; |
| [Set-GenXdevAICommandNotFoundAction](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-genxdevaicommandnotfoundaction) | &nbsp; | &nbsp; |
| [Set-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-imageindexpath) | &nbsp; | Sets the default database file path for image operations in GenXdev.AI. |
| [Set-WindowsWallpaperEx](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-windowswallpaperex) | nextwallpaper | &nbsp; |
| [SetComfyUIProcessPriority](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#setcomfyuiprocesspriority) | &nbsp; | &nbsp; |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-foundimagesinbrowser) | showfoundimages | &nbsp; |
| [Show-GenXdevScriptErrorFixInIde](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-genxdevscripterrorfixinide) | letsfixthis | &nbsp; |
| [Start-AudioTranscription](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-audiotranscription) | transcribe, transcribefile | &nbsp; |
| [Start-GenXdevMCPServer](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-genxdevmcpserver) | &nbsp; | &nbsp; |
| [Start-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-lmstudioapplication) | &nbsp; | &nbsp; |
| [Stop-ComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#stop-comfyui) | &nbsp; | Terminates all running ComfyUI processes and releases associated resources. |
| [Test-ComfyUIQueueEmpty](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-comfyuiqueueempty) | &nbsp; | Checks if the ComfyUI processing queue is empty |
| [Test-DeepLinkImageFile](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-deeplinkimagefile) | &nbsp; | Tests if the specified file path is a valid image file with a supported format. |
| [Test-LMStudioInstallation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioinstallation) | &nbsp; | Tests if LMStudio is installed and accessible on the system. |
| [Test-LMStudioProcess](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioprocess) | &nbsp; | Tests if LM Studio process is running and configures its window state. |
| [Unregister-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-allfaces) | &nbsp; | Removes all registered faces from the DeepStack face recognition system. |
| [Unregister-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-face) | &nbsp; | Deletes a registered face by its identifier from DeepStack. |
| [Update-AllImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#update-allimagemetadata) | updateallimages | &nbsp; |
| [UploadComfyImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#uploadcomfyimage) | &nbsp; | &nbsp; |
| [WaitForComfyCompletion](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#waitforcomfycompletion) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.AI/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.AI.LMStudio

**A Windows PowerShell module for local AI related operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-EmoticonsToText](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-emoticonstotext) | emojify | &nbsp; |
| [Add-GenXdevMCPServerToLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-genxdevmcpservertolmstudio) | &nbsp; | Adds the GenXdev MCP server to LM Studio using a deeplink configuration. |
| [Add-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-imagedirectories) | addimgdir | Adds directories to the configured image directories for GenXdev.AI operations. |
| [Approve-NewTextFileContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#approve-newtextfilecontent) | &nbsp; | Interactive file content comparison and approval using WinMerge. |
| [Compare-ImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#compare-imagefaces) | comparefaces | &nbsp; |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convert-dotnettypetollmtype) | &nbsp; | Converts .NET type names to LLM (Language Model) type names. |
| [ConvertComfyImageFormat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertcomfyimageformat) | &nbsp; | Converts image file format while preserving maximum quality. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-corporatespeak) | uncorporatize | &nbsp; |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-diplomaticspeak) | undiplomatize | &nbsp; |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-corporatespeak) | corporatize | &nbsp; |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-diplomaticspeak) | diplomatize | &nbsp; |
| [ConvertTo-LMStudioFunctionDefinition](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-lmstudiofunctiondefinition) | &nbsp; | &nbsp; |
| [CreateComfySDXLWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfysdxlworkflow) | &nbsp; | Creates comprehensive ComfyUI SDXL workflow configuration supporting all parameters |
| [CreateComfyUniversalWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfyuniversalworkflow) | &nbsp; | &nbsp; |
| [DownloadComfyResults](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#downloadcomfyresults) | &nbsp; | Downloads generated results from ComfyUI server with file information |
| [EnsureComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyui) | &nbsp; | Ensures ComfyUI is installed and running with optional window positioning. |
| [EnsureComfyUIModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyuimodel) | &nbsp; | Ensures specified ComfyUI models are available locally with automatic download |
| [EnsureDeepStack](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuredeepstack) | &nbsp; | &nbsp; |
| [EnsureGithubCLIInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuregithubcliinstalled) | &nbsp; | Ensures GitHub CLI is properly installed and configured on the system. |
| [EnsureHuggingFace](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurehuggingface) | &nbsp; | &nbsp; |
| [EnsureLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurelmstudio) | &nbsp; | &nbsp; |
| [EnsurePaintNet](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepaintnet) | &nbsp; | Ensures Paint.NET is properly installed and accessible on the system. |
| [EnsurePip](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepip) | &nbsp; | Ensures pip is installed and functional for the specified Python installation. |
| [EnsurePython](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepython) | &nbsp; | &nbsp; |
| [EnsureWinMergeInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurewinmergeinstalled) | &nbsp; | Ensures WinMerge is installed and available for file comparison operations. |
| [Export-ImageIndex](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#export-imageindex) | indeximages | &nbsp; |
| [Find-Image](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-image) | findimages, li | &nbsp; |
| [Find-IndexedImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-indexedimage) | findindexedimages, lii | &nbsp; |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#generatemasonrylayouthtml) | &nbsp; | Generates a responsive masonry layout HTML gallery from image data. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aidefaultllmsettings) | &nbsp; | &nbsp; |
| [Get-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiimagecollection) | getimgdirs | &nbsp; |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiknownfacesrootpath) | &nbsp; | Gets the configured directory for face image files used in GenXdev.AI operations. |
| [Get-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aillmsettings) | &nbsp; | &nbsp; |
| [Get-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aimetalanguage) | getimgmetalang | Gets the configured default language for image metadata operations. |
| [Get-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-comfyuimodelpath) | &nbsp; | Gets the correct ComfyUI models directory path for the current installation |
| [Get-CpuCore](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-cpucore) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-Fallacy](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-fallacy) | dispicetext | &nbsp; |
| [Get-HasCapableGpu](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-hascapablegpu) | &nbsp; | Determines if a CUDA-capable GPU with sufficient memory is present. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedfaces) | &nbsp; | &nbsp; |
| [Get-ImageDetectedObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedobjects) | &nbsp; | Detects and classifies objects in an uploaded image using DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedscenes) | &nbsp; | &nbsp; |
| [Get-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexpath) | &nbsp; | Returns the path to the image database, initializing or rebuilding it if needed. |
| [Get-ImageIndexStats](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexstats) | getimagedbstats, gids | &nbsp; |
| [Get-LMStudioLoadedModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudioloadedmodellist) | &nbsp; | Retrieves the list of currently loaded models from LM Studio. |
| [Get-LMStudioModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiomodellist) | &nbsp; | Retrieves a list of installed LM Studio models. |
| [Get-LMStudioPaths](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiopaths) | &nbsp; | Retrieves file paths for LM Studio executables. |
| [Get-LMStudioTextEmbedding](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiotextembedding) | &nbsp; | Gets text embeddings from LM Studio model. |
| [Get-LMStudioWindow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiowindow) | lmstudiowindow, setlmstudiowindow | Gets a window helper for the LM Studio application. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-numberofcpucores) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-RegisteredFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-registeredfaces) | &nbsp; | &nbsp; |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-scriptexecutionerrorfixprompt) | getfixprompt | &nbsp; |
| [Get-SimularMovieTitles](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-simularmovietitles) | &nbsp; | Finds similar movie titles based on common properties. |
| [Get-TextTranslation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-texttranslation) | translate | &nbsp; |
| [Get-VectorSimilarity](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-vectorsimilarity) | &nbsp; | Calculates the cosine similarity between two vectors, returning a value between 0 and 1. |
| [Initialize-LMStudioModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#initialize-lmstudiomodel) | initlmstudio | &nbsp; |
| [Install-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#install-lmstudioapplication) | &nbsp; | &nbsp; |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-aipowershellcommand) | hint | &nbsp; |
| [Invoke-ComfyUIImageGeneration](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-comfyuiimagegeneration) | generateimage | &nbsp; |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-commandfromtoolcall) | &nbsp; | &nbsp; |
| [Invoke-HuggingFaceCli](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-huggingfacecli) | &nbsp; | &nbsp; |
| [Invoke-ImageEnhancement](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageenhancement) | enhanceimage | &nbsp; |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagefacesupdate) | imagepeopledetection | &nbsp; |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagekeywordupdate) | imagekeywordgeneration | &nbsp; |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagemetadataupdate) | imagepropdetection | &nbsp; |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageobjectsupdate) | imageobjectdetection | &nbsp; |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagescenesupdate) | imagescenedetection | &nbsp; |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmbooleanevaluation) | equalstrue | &nbsp; |
| [Invoke-LLMQuery](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmquery) | llm, qllm | &nbsp; |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmstringlistevaluation) | getlist, getstring | &nbsp; |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmtexttransformation) | spellcheck | &nbsp; |
| [Invoke-QueryImageContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-queryimagecontent) | &nbsp; | &nbsp; |
| [Invoke-WinMerge](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-winmerge) | &nbsp; | Launches WinMerge to compare two files side by side. |
| [New-GenXdevMCPToken](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-genxdevmcptoken) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmaudiochat) | llmaudiochat | &nbsp; |
| [New-LLMTextChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmtextchat) | llmchat | &nbsp; |
| [QueueComfyWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#queuecomfyworkflow) | &nbsp; | &nbsp; |
| [Register-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-allfaces) | UpdateFaces | &nbsp; |
| [Register-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-face) | &nbsp; | &nbsp; |
| [Remove-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagedirectories) | removeimgdir | &nbsp; |
| [Remove-ImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagemetadata) | removeimagedata | &nbsp; |
| [ResizeComfyInputImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#resizecomfyinputimage) | &nbsp; | &nbsp; |
| [Save-FoundImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimagefaces) | saveimagefaces | &nbsp; |
| [Save-FoundImageObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimageobjects) | saveimageObjects | &nbsp; |
| [Save-Transcriptions](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-transcriptions) | &nbsp; | &nbsp; |
| [Set-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiimagecollection) | &nbsp; | &nbsp; |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiknownfacesrootpath) | &nbsp; | Sets the directory for face image files used in GenXdev.AI operations. |
| [Set-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aillmsettings) | &nbsp; | &nbsp; |
| [Set-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aimetalanguage) | &nbsp; | Sets the default language and optionally the image directories for GenXdev.AI image metadata operations. |
| [Set-ComfyUIBackgroundImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuibackgroundimage) | &nbsp; | Sets or clears the background image for ComfyUI's canvas interface |
| [Set-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuimodelpath) | &nbsp; | &nbsp; |
| [Set-GenXdevAICommandNotFoundAction](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-genxdevaicommandnotfoundaction) | &nbsp; | &nbsp; |
| [Set-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-imageindexpath) | &nbsp; | Sets the default database file path for image operations in GenXdev.AI. |
| [Set-WindowsWallpaperEx](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-windowswallpaperex) | nextwallpaper | &nbsp; |
| [SetComfyUIProcessPriority](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#setcomfyuiprocesspriority) | &nbsp; | &nbsp; |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-foundimagesinbrowser) | showfoundimages | &nbsp; |
| [Show-GenXdevScriptErrorFixInIde](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-genxdevscripterrorfixinide) | letsfixthis | &nbsp; |
| [Start-AudioTranscription](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-audiotranscription) | transcribe, transcribefile | &nbsp; |
| [Start-GenXdevMCPServer](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-genxdevmcpserver) | &nbsp; | &nbsp; |
| [Start-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-lmstudioapplication) | &nbsp; | &nbsp; |
| [Stop-ComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#stop-comfyui) | &nbsp; | Terminates all running ComfyUI processes and releases associated resources. |
| [Test-ComfyUIQueueEmpty](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-comfyuiqueueempty) | &nbsp; | Checks if the ComfyUI processing queue is empty |
| [Test-DeepLinkImageFile](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-deeplinkimagefile) | &nbsp; | Tests if the specified file path is a valid image file with a supported format. |
| [Test-LMStudioInstallation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioinstallation) | &nbsp; | Tests if LMStudio is installed and accessible on the system. |
| [Test-LMStudioProcess](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioprocess) | &nbsp; | Tests if LM Studio process is running and configures its window state. |
| [Unregister-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-allfaces) | &nbsp; | Removes all registered faces from the DeepStack face recognition system. |
| [Unregister-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-face) | &nbsp; | Deletes a registered face by its identifier from DeepStack. |
| [Update-AllImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#update-allimagemetadata) | updateallimages | &nbsp; |
| [UploadComfyImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#uploadcomfyimage) | &nbsp; | &nbsp; |
| [WaitForComfyCompletion](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#waitforcomfycompletion) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.AI/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.AI.Queries

**A Windows PowerShell module for local AI related operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-EmoticonsToText](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-emoticonstotext) | emojify | &nbsp; |
| [Add-GenXdevMCPServerToLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-genxdevmcpservertolmstudio) | &nbsp; | Adds the GenXdev MCP server to LM Studio using a deeplink configuration. |
| [Add-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#add-imagedirectories) | addimgdir | Adds directories to the configured image directories for GenXdev.AI operations. |
| [Approve-NewTextFileContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#approve-newtextfilecontent) | &nbsp; | Interactive file content comparison and approval using WinMerge. |
| [Compare-ImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#compare-imagefaces) | comparefaces | &nbsp; |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convert-dotnettypetollmtype) | &nbsp; | Converts .NET type names to LLM (Language Model) type names. |
| [ConvertComfyImageFormat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertcomfyimageformat) | &nbsp; | Converts image file format while preserving maximum quality. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-corporatespeak) | uncorporatize | &nbsp; |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertfrom-diplomaticspeak) | undiplomatize | &nbsp; |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-corporatespeak) | corporatize | &nbsp; |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-diplomaticspeak) | diplomatize | &nbsp; |
| [ConvertTo-LMStudioFunctionDefinition](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#convertto-lmstudiofunctiondefinition) | &nbsp; | &nbsp; |
| [CreateComfySDXLWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfysdxlworkflow) | &nbsp; | Creates comprehensive ComfyUI SDXL workflow configuration supporting all parameters |
| [CreateComfyUniversalWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#createcomfyuniversalworkflow) | &nbsp; | &nbsp; |
| [DownloadComfyResults](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#downloadcomfyresults) | &nbsp; | Downloads generated results from ComfyUI server with file information |
| [EnsureComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyui) | &nbsp; | Ensures ComfyUI is installed and running with optional window positioning. |
| [EnsureComfyUIModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurecomfyuimodel) | &nbsp; | Ensures specified ComfyUI models are available locally with automatic download |
| [EnsureDeepStack](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuredeepstack) | &nbsp; | &nbsp; |
| [EnsureGithubCLIInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensuregithubcliinstalled) | &nbsp; | Ensures GitHub CLI is properly installed and configured on the system. |
| [EnsureHuggingFace](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurehuggingface) | &nbsp; | &nbsp; |
| [EnsureLMStudio](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurelmstudio) | &nbsp; | &nbsp; |
| [EnsurePaintNet](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepaintnet) | &nbsp; | Ensures Paint.NET is properly installed and accessible on the system. |
| [EnsurePip](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepip) | &nbsp; | Ensures pip is installed and functional for the specified Python installation. |
| [EnsurePython](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurepython) | &nbsp; | &nbsp; |
| [EnsureWinMergeInstalled](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#ensurewinmergeinstalled) | &nbsp; | Ensures WinMerge is installed and available for file comparison operations. |
| [Export-ImageIndex](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#export-imageindex) | indeximages | &nbsp; |
| [Find-Image](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-image) | findimages, li | &nbsp; |
| [Find-IndexedImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#find-indexedimage) | findindexedimages, lii | &nbsp; |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#generatemasonrylayouthtml) | &nbsp; | Generates a responsive masonry layout HTML gallery from image data. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aidefaultllmsettings) | &nbsp; | &nbsp; |
| [Get-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiimagecollection) | getimgdirs | &nbsp; |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aiknownfacesrootpath) | &nbsp; | Gets the configured directory for face image files used in GenXdev.AI operations. |
| [Get-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aillmsettings) | &nbsp; | &nbsp; |
| [Get-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-aimetalanguage) | getimgmetalang | Gets the configured default language for image metadata operations. |
| [Get-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-comfyuimodelpath) | &nbsp; | Gets the correct ComfyUI models directory path for the current installation |
| [Get-CpuCore](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-cpucore) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-Fallacy](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-fallacy) | dispicetext | &nbsp; |
| [Get-HasCapableGpu](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-hascapablegpu) | &nbsp; | Determines if a CUDA-capable GPU with sufficient memory is present. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedfaces) | &nbsp; | &nbsp; |
| [Get-ImageDetectedObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedobjects) | &nbsp; | Detects and classifies objects in an uploaded image using DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imagedetectedscenes) | &nbsp; | &nbsp; |
| [Get-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexpath) | &nbsp; | Returns the path to the image database, initializing or rebuilding it if needed. |
| [Get-ImageIndexStats](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-imageindexstats) | getimagedbstats, gids | &nbsp; |
| [Get-LMStudioLoadedModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudioloadedmodellist) | &nbsp; | Retrieves the list of currently loaded models from LM Studio. |
| [Get-LMStudioModelList](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiomodellist) | &nbsp; | Retrieves a list of installed LM Studio models. |
| [Get-LMStudioPaths](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiopaths) | &nbsp; | Retrieves file paths for LM Studio executables. |
| [Get-LMStudioTextEmbedding](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiotextembedding) | &nbsp; | Gets text embeddings from LM Studio model. |
| [Get-LMStudioWindow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-lmstudiowindow) | lmstudiowindow, setlmstudiowindow | Gets a window helper for the LM Studio application. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-numberofcpucores) | &nbsp; | Calculates and returns the total number of logical CPU cores in the system. |
| [Get-RegisteredFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-registeredfaces) | &nbsp; | &nbsp; |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-scriptexecutionerrorfixprompt) | getfixprompt | &nbsp; |
| [Get-SimularMovieTitles](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-simularmovietitles) | &nbsp; | Finds similar movie titles based on common properties. |
| [Get-TextTranslation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-texttranslation) | translate | &nbsp; |
| [Get-VectorSimilarity](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#get-vectorsimilarity) | &nbsp; | Calculates the cosine similarity between two vectors, returning a value between 0 and 1. |
| [Initialize-LMStudioModel](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#initialize-lmstudiomodel) | initlmstudio | &nbsp; |
| [Install-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#install-lmstudioapplication) | &nbsp; | &nbsp; |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-aipowershellcommand) | hint | &nbsp; |
| [Invoke-ComfyUIImageGeneration](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-comfyuiimagegeneration) | generateimage | &nbsp; |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-commandfromtoolcall) | &nbsp; | &nbsp; |
| [Invoke-HuggingFaceCli](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-huggingfacecli) | &nbsp; | &nbsp; |
| [Invoke-ImageEnhancement](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageenhancement) | enhanceimage | &nbsp; |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagefacesupdate) | imagepeopledetection | &nbsp; |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagekeywordupdate) | imagekeywordgeneration | &nbsp; |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagemetadataupdate) | imagepropdetection | &nbsp; |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imageobjectsupdate) | imageobjectdetection | &nbsp; |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-imagescenesupdate) | imagescenedetection | &nbsp; |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmbooleanevaluation) | equalstrue | &nbsp; |
| [Invoke-LLMQuery](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmquery) | llm, qllm | &nbsp; |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmstringlistevaluation) | getlist, getstring | &nbsp; |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-llmtexttransformation) | spellcheck | &nbsp; |
| [Invoke-QueryImageContent](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-queryimagecontent) | &nbsp; | &nbsp; |
| [Invoke-WinMerge](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#invoke-winmerge) | &nbsp; | Launches WinMerge to compare two files side by side. |
| [New-GenXdevMCPToken](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-genxdevmcptoken) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmaudiochat) | llmaudiochat | &nbsp; |
| [New-LLMTextChat](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#new-llmtextchat) | llmchat | &nbsp; |
| [QueueComfyWorkflow](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#queuecomfyworkflow) | &nbsp; | &nbsp; |
| [Register-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-allfaces) | UpdateFaces | &nbsp; |
| [Register-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#register-face) | &nbsp; | &nbsp; |
| [Remove-ImageDirectories](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagedirectories) | removeimgdir | &nbsp; |
| [Remove-ImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#remove-imagemetadata) | removeimagedata | &nbsp; |
| [ResizeComfyInputImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#resizecomfyinputimage) | &nbsp; | &nbsp; |
| [Save-FoundImageFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimagefaces) | saveimagefaces | &nbsp; |
| [Save-FoundImageObjects](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-foundimageobjects) | saveimageObjects | &nbsp; |
| [Save-Transcriptions](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#save-transcriptions) | &nbsp; | &nbsp; |
| [Set-AIImageCollection](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiimagecollection) | &nbsp; | &nbsp; |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aiknownfacesrootpath) | &nbsp; | Sets the directory for face image files used in GenXdev.AI operations. |
| [Set-AILLMSettings](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aillmsettings) | &nbsp; | &nbsp; |
| [Set-AIMetaLanguage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-aimetalanguage) | &nbsp; | Sets the default language and optionally the image directories for GenXdev.AI image metadata operations. |
| [Set-ComfyUIBackgroundImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuibackgroundimage) | &nbsp; | Sets or clears the background image for ComfyUI's canvas interface |
| [Set-ComfyUIModelPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-comfyuimodelpath) | &nbsp; | &nbsp; |
| [Set-GenXdevAICommandNotFoundAction](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-genxdevaicommandnotfoundaction) | &nbsp; | &nbsp; |
| [Set-ImageIndexPath](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-imageindexpath) | &nbsp; | Sets the default database file path for image operations in GenXdev.AI. |
| [Set-WindowsWallpaperEx](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#set-windowswallpaperex) | nextwallpaper | &nbsp; |
| [SetComfyUIProcessPriority](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#setcomfyuiprocesspriority) | &nbsp; | &nbsp; |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-foundimagesinbrowser) | showfoundimages | &nbsp; |
| [Show-GenXdevScriptErrorFixInIde](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#show-genxdevscripterrorfixinide) | letsfixthis | &nbsp; |
| [Start-AudioTranscription](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-audiotranscription) | transcribe, transcribefile | &nbsp; |
| [Start-GenXdevMCPServer](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-genxdevmcpserver) | &nbsp; | &nbsp; |
| [Start-LMStudioApplication](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#start-lmstudioapplication) | &nbsp; | &nbsp; |
| [Stop-ComfyUI](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#stop-comfyui) | &nbsp; | Terminates all running ComfyUI processes and releases associated resources. |
| [Test-ComfyUIQueueEmpty](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-comfyuiqueueempty) | &nbsp; | Checks if the ComfyUI processing queue is empty |
| [Test-DeepLinkImageFile](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-deeplinkimagefile) | &nbsp; | Tests if the specified file path is a valid image file with a supported format. |
| [Test-LMStudioInstallation](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioinstallation) | &nbsp; | Tests if LMStudio is installed and accessible on the system. |
| [Test-LMStudioProcess](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#test-lmstudioprocess) | &nbsp; | Tests if LM Studio process is running and configures its window state. |
| [Unregister-AllFaces](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-allfaces) | &nbsp; | Removes all registered faces from the DeepStack face recognition system. |
| [Unregister-Face](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#unregister-face) | &nbsp; | Deletes a registered face by its identifier from DeepStack. |
| [Update-AllImageMetaData](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#update-allimagemetadata) | updateallimages | &nbsp; |
| [UploadComfyImage](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#uploadcomfyimage) | &nbsp; | &nbsp; |
| [WaitForComfyCompletion](https://github.com/genXdev/GenXdev.AI/tree/main?tab=readme-ov-file#waitforcomfycompletion) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.AI/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Coding

**A Windows PowerShell module that helps being more productive with coding tasks.**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-ArrayTemplate](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-arraytemplate) | FormatArray | &nbsp; |
| [Add-FeatureLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-featurelinetoreadme) | feature | Adds a feature line to the README file with a timestamp. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-idealinetoreadme) | idea | Adds an idea item to the README.md file. |
| [Add-IssueLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-issuelinetoreadme) | issue | Adds an issue item to the README.md file. |
| [Add-LineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-linetoreadme) | &nbsp; | &nbsp; |
| [Add-MissingGenXdevUnitTests](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-missinggenxdevunittests) | &nbsp; | &nbsp; |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-releasenotelinetoreadme) | releasenote | Adds a ReleaseNote line to the README file with a timestamp. |
| [Add-TodoLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-todolinetoreadme) | todo | Adds a todo item to the README.md file. |
| [Assert-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevcmdlet) | improvecmdlet | Improves GenXdev cmdlet documentation and implementation through AI assistance. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevcmdlettests) | improvecmdlettests | Asserts and improves unit-tests of a specified GenXdev cmdlet. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevdependencyusage) | checkgenxdevdependencies | &nbsp; |
| [Assert-GenXdevTest](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevtest) | rungenxdevtests | &nbsp; |
| [Assert-ModuleDefinition](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-moduledefinition) | &nbsp; | &nbsp; |
| [Assert-RefactorFile](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-refactorfile) | &nbsp; | &nbsp; |
| [Clear-GenXdevModules](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#clear-genxdevmodules) | cleangenxdev | Cleans build artifacts from GenXdev PowerShell modules. |
| [Complete-GenXDevREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#complete-genxdevreadme) | &nbsp; | &nbsp; |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensurecopilotkeyboardshortcut) | &nbsp; | Configures the GitHub Copilot Chat keyboard shortcuts in Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensuredefaultgenxdevrefactors) | &nbsp; | &nbsp; |
| [EnsureVSCodeInstallation](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensurevscodeinstallation) | &nbsp; | Installs and configures Visual Studio Code with recommended extensions. |
| [Features](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#features) | &nbsp; | Displays features from a README.md file. |
| [Get-GenXdevCmdletUsageAnalysis](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevcmdletusageanalysis) | &nbsp; | &nbsp; |
| [Get-GenXDevModule](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevmodule) | &nbsp; | Retrieves all GenXDev modules from a specified path. |
| [Get-GenXDevModuleinfo](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevmoduleinfo) | &nbsp; | &nbsp; |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevnewmodulesinorderofdependency) | &nbsp; | Retrieves GenXDev modules in dependency order. |
| [Get-GitChangedFiles](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-gitchangedfiles) | gitchanged | Get the list of changed files in a Git repository. |
| [Get-ModuleHelpMarkdown](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-modulehelpmarkdown) | &nbsp; | &nbsp; |
| [Get-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-refactor) | refactors | &nbsp; |
| [Get-RefactorReport](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-refactorreport) | refactorreport | Generates a detailed report of refactoring operations and their status. |
| [Ideas](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ideas) | &nbsp; | &nbsp; |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#invoke-genxdevpsformatter) | &nbsp; | &nbsp; |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#invoke-genxdevscriptanalyzer) | &nbsp; | &nbsp; |
| [Issues](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#issues) | &nbsp; | &nbsp; |
| [New-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-genxdevcmdlet) | newcmd | Creates a new GenXdev PowerShell cmdlet with proper structure and validation. |
| [New-GenXdevModule](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-genxdevmodule) | &nbsp; | &nbsp; |
| [New-GitCommit](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-gitcommit) | commit | Creates and pushes a new git commit with all changes. |
| [New-PullRequestForGenXdevModuleChanges](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-pullrequestforgenxdevmodulechanges) | prgenxdevmodule | Creates a pull request for changes made to a GenXdev module. |
| [New-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-refactor) | newrefactor | &nbsp; |
| [Open-GenXdevCmdletsContainingClipboardTextInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#open-genxdevcmdletscontainingclipboardtextinide) | vscodesearch | Opens files in IDE that contain clipboard text |
| [Open-SourceFileInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#open-sourcefileinide) | editcode | &nbsp; |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#permanentlydeletegitfolders) | &nbsp; | Permanently deletes specified folders from all branches in a Git repository. |
| [ReleaseNotes](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#releasenotes) | &nbsp; | &nbsp; |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#remove-doubleemptylines) | &nbsp; | &nbsp; |
| [Remove-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#remove-refactor) | &nbsp; | Removes refactor sets from GenXdev preferences system. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#search-genxdevcmdlet) | searchcmdlet | Searches for a GenXdev cmdlet and optionally opens it in an IDE for editing. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#show-genxdevcmdletinide) | cmdlet, editcmdlet | Opens the specified GenXdev cmdlet in Visual Studio Code. |
| [SplitUpPsm1File](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#splituppsm1file) | &nbsp; | &nbsp; |
| [Start-NextRefactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#start-nextrefactor) | nextrefactor | &nbsp; |
| [Test-RefactorLLMSelection](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#test-refactorllmselection) | &nbsp; | Evaluates source files for refactoring eligibility using LLM analysis. |
| [Todoos](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#todoos) | &nbsp; | &nbsp; |
| [Update-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#update-refactor) | updaterefactor | &nbsp; |
| [VSCode](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#vscode) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Coding/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Coding.Git

**A Windows PowerShell module that helps being more productive with coding tasks.**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-ArrayTemplate](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-arraytemplate) | FormatArray | &nbsp; |
| [Add-FeatureLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-featurelinetoreadme) | feature | Adds a feature line to the README file with a timestamp. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-idealinetoreadme) | idea | Adds an idea item to the README.md file. |
| [Add-IssueLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-issuelinetoreadme) | issue | Adds an issue item to the README.md file. |
| [Add-LineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-linetoreadme) | &nbsp; | &nbsp; |
| [Add-MissingGenXdevUnitTests](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-missinggenxdevunittests) | &nbsp; | &nbsp; |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-releasenotelinetoreadme) | releasenote | Adds a ReleaseNote line to the README file with a timestamp. |
| [Add-TodoLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-todolinetoreadme) | todo | Adds a todo item to the README.md file. |
| [Assert-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevcmdlet) | improvecmdlet | Improves GenXdev cmdlet documentation and implementation through AI assistance. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevcmdlettests) | improvecmdlettests | Asserts and improves unit-tests of a specified GenXdev cmdlet. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevdependencyusage) | checkgenxdevdependencies | &nbsp; |
| [Assert-GenXdevTest](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevtest) | rungenxdevtests | &nbsp; |
| [Assert-ModuleDefinition](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-moduledefinition) | &nbsp; | &nbsp; |
| [Assert-RefactorFile](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-refactorfile) | &nbsp; | &nbsp; |
| [Clear-GenXdevModules](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#clear-genxdevmodules) | cleangenxdev | Cleans build artifacts from GenXdev PowerShell modules. |
| [Complete-GenXDevREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#complete-genxdevreadme) | &nbsp; | &nbsp; |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensurecopilotkeyboardshortcut) | &nbsp; | Configures the GitHub Copilot Chat keyboard shortcuts in Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensuredefaultgenxdevrefactors) | &nbsp; | &nbsp; |
| [EnsureVSCodeInstallation](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensurevscodeinstallation) | &nbsp; | Installs and configures Visual Studio Code with recommended extensions. |
| [Features](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#features) | &nbsp; | Displays features from a README.md file. |
| [Get-GenXdevCmdletUsageAnalysis](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevcmdletusageanalysis) | &nbsp; | &nbsp; |
| [Get-GenXDevModule](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevmodule) | &nbsp; | Retrieves all GenXDev modules from a specified path. |
| [Get-GenXDevModuleinfo](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevmoduleinfo) | &nbsp; | &nbsp; |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevnewmodulesinorderofdependency) | &nbsp; | Retrieves GenXDev modules in dependency order. |
| [Get-GitChangedFiles](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-gitchangedfiles) | gitchanged | Get the list of changed files in a Git repository. |
| [Get-ModuleHelpMarkdown](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-modulehelpmarkdown) | &nbsp; | &nbsp; |
| [Get-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-refactor) | refactors | &nbsp; |
| [Get-RefactorReport](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-refactorreport) | refactorreport | Generates a detailed report of refactoring operations and their status. |
| [Ideas](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ideas) | &nbsp; | &nbsp; |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#invoke-genxdevpsformatter) | &nbsp; | &nbsp; |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#invoke-genxdevscriptanalyzer) | &nbsp; | &nbsp; |
| [Issues](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#issues) | &nbsp; | &nbsp; |
| [New-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-genxdevcmdlet) | newcmd | Creates a new GenXdev PowerShell cmdlet with proper structure and validation. |
| [New-GenXdevModule](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-genxdevmodule) | &nbsp; | &nbsp; |
| [New-GitCommit](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-gitcommit) | commit | Creates and pushes a new git commit with all changes. |
| [New-PullRequestForGenXdevModuleChanges](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-pullrequestforgenxdevmodulechanges) | prgenxdevmodule | Creates a pull request for changes made to a GenXdev module. |
| [New-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-refactor) | newrefactor | &nbsp; |
| [Open-GenXdevCmdletsContainingClipboardTextInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#open-genxdevcmdletscontainingclipboardtextinide) | vscodesearch | Opens files in IDE that contain clipboard text |
| [Open-SourceFileInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#open-sourcefileinide) | editcode | &nbsp; |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#permanentlydeletegitfolders) | &nbsp; | Permanently deletes specified folders from all branches in a Git repository. |
| [ReleaseNotes](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#releasenotes) | &nbsp; | &nbsp; |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#remove-doubleemptylines) | &nbsp; | &nbsp; |
| [Remove-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#remove-refactor) | &nbsp; | Removes refactor sets from GenXdev preferences system. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#search-genxdevcmdlet) | searchcmdlet | Searches for a GenXdev cmdlet and optionally opens it in an IDE for editing. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#show-genxdevcmdletinide) | cmdlet, editcmdlet | Opens the specified GenXdev cmdlet in Visual Studio Code. |
| [SplitUpPsm1File](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#splituppsm1file) | &nbsp; | &nbsp; |
| [Start-NextRefactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#start-nextrefactor) | nextrefactor | &nbsp; |
| [Test-RefactorLLMSelection](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#test-refactorllmselection) | &nbsp; | Evaluates source files for refactoring eligibility using LLM analysis. |
| [Todoos](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#todoos) | &nbsp; | &nbsp; |
| [Update-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#update-refactor) | updaterefactor | &nbsp; |
| [VSCode](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#vscode) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Coding/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Coding.PowerShell.Modules

**A Windows PowerShell module that helps being more productive with coding tasks.**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-ArrayTemplate](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-arraytemplate) | FormatArray | &nbsp; |
| [Add-FeatureLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-featurelinetoreadme) | feature | Adds a feature line to the README file with a timestamp. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-idealinetoreadme) | idea | Adds an idea item to the README.md file. |
| [Add-IssueLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-issuelinetoreadme) | issue | Adds an issue item to the README.md file. |
| [Add-LineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-linetoreadme) | &nbsp; | &nbsp; |
| [Add-MissingGenXdevUnitTests](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-missinggenxdevunittests) | &nbsp; | &nbsp; |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-releasenotelinetoreadme) | releasenote | Adds a ReleaseNote line to the README file with a timestamp. |
| [Add-TodoLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-todolinetoreadme) | todo | Adds a todo item to the README.md file. |
| [Assert-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevcmdlet) | improvecmdlet | Improves GenXdev cmdlet documentation and implementation through AI assistance. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevcmdlettests) | improvecmdlettests | Asserts and improves unit-tests of a specified GenXdev cmdlet. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevdependencyusage) | checkgenxdevdependencies | &nbsp; |
| [Assert-GenXdevTest](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevtest) | rungenxdevtests | &nbsp; |
| [Assert-ModuleDefinition](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-moduledefinition) | &nbsp; | &nbsp; |
| [Assert-RefactorFile](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-refactorfile) | &nbsp; | &nbsp; |
| [Clear-GenXdevModules](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#clear-genxdevmodules) | cleangenxdev | Cleans build artifacts from GenXdev PowerShell modules. |
| [Complete-GenXDevREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#complete-genxdevreadme) | &nbsp; | &nbsp; |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensurecopilotkeyboardshortcut) | &nbsp; | Configures the GitHub Copilot Chat keyboard shortcuts in Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensuredefaultgenxdevrefactors) | &nbsp; | &nbsp; |
| [EnsureVSCodeInstallation](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensurevscodeinstallation) | &nbsp; | Installs and configures Visual Studio Code with recommended extensions. |
| [Features](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#features) | &nbsp; | Displays features from a README.md file. |
| [Get-GenXdevCmdletUsageAnalysis](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevcmdletusageanalysis) | &nbsp; | &nbsp; |
| [Get-GenXDevModule](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevmodule) | &nbsp; | Retrieves all GenXDev modules from a specified path. |
| [Get-GenXDevModuleinfo](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevmoduleinfo) | &nbsp; | &nbsp; |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevnewmodulesinorderofdependency) | &nbsp; | Retrieves GenXDev modules in dependency order. |
| [Get-GitChangedFiles](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-gitchangedfiles) | gitchanged | Get the list of changed files in a Git repository. |
| [Get-ModuleHelpMarkdown](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-modulehelpmarkdown) | &nbsp; | &nbsp; |
| [Get-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-refactor) | refactors | &nbsp; |
| [Get-RefactorReport](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-refactorreport) | refactorreport | Generates a detailed report of refactoring operations and their status. |
| [Ideas](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ideas) | &nbsp; | &nbsp; |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#invoke-genxdevpsformatter) | &nbsp; | &nbsp; |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#invoke-genxdevscriptanalyzer) | &nbsp; | &nbsp; |
| [Issues](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#issues) | &nbsp; | &nbsp; |
| [New-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-genxdevcmdlet) | newcmd | Creates a new GenXdev PowerShell cmdlet with proper structure and validation. |
| [New-GenXdevModule](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-genxdevmodule) | &nbsp; | &nbsp; |
| [New-GitCommit](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-gitcommit) | commit | Creates and pushes a new git commit with all changes. |
| [New-PullRequestForGenXdevModuleChanges](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-pullrequestforgenxdevmodulechanges) | prgenxdevmodule | Creates a pull request for changes made to a GenXdev module. |
| [New-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-refactor) | newrefactor | &nbsp; |
| [Open-GenXdevCmdletsContainingClipboardTextInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#open-genxdevcmdletscontainingclipboardtextinide) | vscodesearch | Opens files in IDE that contain clipboard text |
| [Open-SourceFileInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#open-sourcefileinide) | editcode | &nbsp; |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#permanentlydeletegitfolders) | &nbsp; | Permanently deletes specified folders from all branches in a Git repository. |
| [ReleaseNotes](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#releasenotes) | &nbsp; | &nbsp; |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#remove-doubleemptylines) | &nbsp; | &nbsp; |
| [Remove-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#remove-refactor) | &nbsp; | Removes refactor sets from GenXdev preferences system. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#search-genxdevcmdlet) | searchcmdlet | Searches for a GenXdev cmdlet and optionally opens it in an IDE for editing. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#show-genxdevcmdletinide) | cmdlet, editcmdlet | Opens the specified GenXdev cmdlet in Visual Studio Code. |
| [SplitUpPsm1File](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#splituppsm1file) | &nbsp; | &nbsp; |
| [Start-NextRefactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#start-nextrefactor) | nextrefactor | &nbsp; |
| [Test-RefactorLLMSelection](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#test-refactorllmselection) | &nbsp; | Evaluates source files for refactoring eligibility using LLM analysis. |
| [Todoos](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#todoos) | &nbsp; | &nbsp; |
| [Update-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#update-refactor) | updaterefactor | &nbsp; |
| [VSCode](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#vscode) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Coding/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Coding.Templating

**A Windows PowerShell module that helps being more productive with coding tasks.**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-ArrayTemplate](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-arraytemplate) | FormatArray | &nbsp; |
| [Add-FeatureLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-featurelinetoreadme) | feature | Adds a feature line to the README file with a timestamp. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-idealinetoreadme) | idea | Adds an idea item to the README.md file. |
| [Add-IssueLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-issuelinetoreadme) | issue | Adds an issue item to the README.md file. |
| [Add-LineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-linetoreadme) | &nbsp; | &nbsp; |
| [Add-MissingGenXdevUnitTests](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-missinggenxdevunittests) | &nbsp; | &nbsp; |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-releasenotelinetoreadme) | releasenote | Adds a ReleaseNote line to the README file with a timestamp. |
| [Add-TodoLineToREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#add-todolinetoreadme) | todo | Adds a todo item to the README.md file. |
| [Assert-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevcmdlet) | improvecmdlet | Improves GenXdev cmdlet documentation and implementation through AI assistance. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevcmdlettests) | improvecmdlettests | Asserts and improves unit-tests of a specified GenXdev cmdlet. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevdependencyusage) | checkgenxdevdependencies | &nbsp; |
| [Assert-GenXdevTest](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-genxdevtest) | rungenxdevtests | &nbsp; |
| [Assert-ModuleDefinition](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-moduledefinition) | &nbsp; | &nbsp; |
| [Assert-RefactorFile](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#assert-refactorfile) | &nbsp; | &nbsp; |
| [Clear-GenXdevModules](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#clear-genxdevmodules) | cleangenxdev | Cleans build artifacts from GenXdev PowerShell modules. |
| [Complete-GenXDevREADME](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#complete-genxdevreadme) | &nbsp; | &nbsp; |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensurecopilotkeyboardshortcut) | &nbsp; | Configures the GitHub Copilot Chat keyboard shortcuts in Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensuredefaultgenxdevrefactors) | &nbsp; | &nbsp; |
| [EnsureVSCodeInstallation](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ensurevscodeinstallation) | &nbsp; | Installs and configures Visual Studio Code with recommended extensions. |
| [Features](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#features) | &nbsp; | Displays features from a README.md file. |
| [Get-GenXdevCmdletUsageAnalysis](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevcmdletusageanalysis) | &nbsp; | &nbsp; |
| [Get-GenXDevModule](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevmodule) | &nbsp; | Retrieves all GenXDev modules from a specified path. |
| [Get-GenXDevModuleinfo](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevmoduleinfo) | &nbsp; | &nbsp; |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-genxdevnewmodulesinorderofdependency) | &nbsp; | Retrieves GenXDev modules in dependency order. |
| [Get-GitChangedFiles](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-gitchangedfiles) | gitchanged | Get the list of changed files in a Git repository. |
| [Get-ModuleHelpMarkdown](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-modulehelpmarkdown) | &nbsp; | &nbsp; |
| [Get-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-refactor) | refactors | &nbsp; |
| [Get-RefactorReport](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#get-refactorreport) | refactorreport | Generates a detailed report of refactoring operations and their status. |
| [Ideas](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#ideas) | &nbsp; | &nbsp; |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#invoke-genxdevpsformatter) | &nbsp; | &nbsp; |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#invoke-genxdevscriptanalyzer) | &nbsp; | &nbsp; |
| [Issues](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#issues) | &nbsp; | &nbsp; |
| [New-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-genxdevcmdlet) | newcmd | Creates a new GenXdev PowerShell cmdlet with proper structure and validation. |
| [New-GenXdevModule](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-genxdevmodule) | &nbsp; | &nbsp; |
| [New-GitCommit](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-gitcommit) | commit | Creates and pushes a new git commit with all changes. |
| [New-PullRequestForGenXdevModuleChanges](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-pullrequestforgenxdevmodulechanges) | prgenxdevmodule | Creates a pull request for changes made to a GenXdev module. |
| [New-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#new-refactor) | newrefactor | &nbsp; |
| [Open-GenXdevCmdletsContainingClipboardTextInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#open-genxdevcmdletscontainingclipboardtextinide) | vscodesearch | Opens files in IDE that contain clipboard text |
| [Open-SourceFileInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#open-sourcefileinide) | editcode | &nbsp; |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#permanentlydeletegitfolders) | &nbsp; | Permanently deletes specified folders from all branches in a Git repository. |
| [ReleaseNotes](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#releasenotes) | &nbsp; | &nbsp; |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#remove-doubleemptylines) | &nbsp; | &nbsp; |
| [Remove-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#remove-refactor) | &nbsp; | Removes refactor sets from GenXdev preferences system. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#search-genxdevcmdlet) | searchcmdlet | Searches for a GenXdev cmdlet and optionally opens it in an IDE for editing. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#show-genxdevcmdletinide) | cmdlet, editcmdlet | Opens the specified GenXdev cmdlet in Visual Studio Code. |
| [SplitUpPsm1File](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#splituppsm1file) | &nbsp; | &nbsp; |
| [Start-NextRefactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#start-nextrefactor) | nextrefactor | &nbsp; |
| [Test-RefactorLLMSelection](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#test-refactorllmselection) | &nbsp; | Evaluates source files for refactoring eligibility using LLM analysis. |
| [Todoos](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#todoos) | &nbsp; | &nbsp; |
| [Update-Refactor](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#update-refactor) | updaterefactor | &nbsp; |
| [VSCode](https://github.com/genXdev/GenXdev.Coding/tree/main?tab=readme-ov-file#vscode) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Coding/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Console

**A Windows PowerShell module for enhancing the commandline experience**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-SpotifyNewPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#add-spotifynewplaylist) | newplaylist | Creates a new Spotify playlist with customizable settings. |
| [Add-SpotifyTracksToLiked](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#add-spotifytrackstoliked) | like | Adds tracks to the user's Spotify liked songs library. |
| [Add-SpotifyTracksToPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#add-spotifytrackstoplaylist) | addtoplaylist | Adds tracks to a Spotify playlist. |
| [Connect-SpotifyApiToken](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#connect-spotifyapitoken) | &nbsp; | Authenticates with Spotify API using OAuth flow to obtain an access token. |
| [Enable-Screensaver](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#enable-screensaver) | &nbsp; | &nbsp; |
| [Get-IsSpeaking](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-isspeaking) | iss | Returns true if the text-to-speech engine is speaking. |
| [Get-SpotifyActiveDevice](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyactivedevice) | &nbsp; | Returns all currently active Spotify devices for the current user. |
| [Get-SpotifyApiToken](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyapitoken) | &nbsp; | Retrieves or generates a valid Spotify API authentication token. |
| [Get-SpotifyCurrentlyPlaying](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifycurrentlyplaying) | gcp | Returns information about the currently playing track on Spotify. |
| [Get-SpotifyDevice](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifydevice) | &nbsp; | Returns all currently available Spotify devices for current user. |
| [Get-SpotifyLikedTrack](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifylikedtrack) | liked | Retrieves all tracks saved in the user's Spotify Library. |
| [Get-SpotifyLyrics](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifylyrics) | lyrics | Retrieves lyrics for Spotify tracks from Musixmatch.com |
| [Get-SpotifyPlaylistIdsByName](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyplaylistidsbyname) | &nbsp; | Retrieves Spotify playlist IDs by their names. |
| [Get-SpotifyPlaylistTrack](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyplaylisttrack) | getplaylist | Returns all tracks from a Spotify playlist. |
| [Get-SpotifyTrackAudioFeatures](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifytrackaudiofeatures) | audiofeatures | Retrieves audio feature information for one or more Spotify tracks. |
| [Get-SpotifyTrackById](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifytrackbyid) | gettrack | Retrieves detailed track information from Spotify using a track ID. |
| [Get-SpotifyUserPlaylists](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyuserplaylists) | gupl | Returns a collection of Spotify playlists owned by the current user. |
| [Move-SpotifyLikedTracksToPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#move-spotifylikedtrackstoplaylist) | moveliked | Moves all liked tracks from your Spotify library to specified playlist(s) |
| [New-MicrosoftShellTab](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#new-microsoftshelltab) | x | &nbsp; |
| [Now](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#now) | &nbsp; | Returns the current system date and time as a DateTime object. |
| [Open-MediaFile](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#open-mediafile) | findmedia, media, vlcmedia | &nbsp; |
| [Open-VlcMediaPlayer](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#open-vlcmediaplayer) | vlc | &nbsp; |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#open-vlcmediaplayerlyrics) | vlclyrics | &nbsp; |
| [Remove-SpotifyTracksFromLiked](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#remove-spotifytracksfromliked) | dislike | Removes tracks from the user's Spotify Library (Liked Songs). |
| [Remove-SpotifyTracksFromPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#remove-spotifytracksfromplaylist) | removefromplaylist | Removes tracks from a Spotify playlist. |
| [SayDate](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#saydate) | &nbsp; | &nbsp; |
| [SayTime](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#saytime) | &nbsp; | Announces the current time using text-to-speech. |
| [Search-Spotify](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#search-spotify) | fm, sm | Performs a Spotify search and returns matching items. |
| [Search-SpotifyAndEnqueue](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#search-spotifyandenqueue) | fmq, smq | Searches Spotify and adds the first matching item to the playback queue. |
| [Search-SpotifyAndPlay](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#search-spotifyandplay) | fmp, smp | Performs a Spotify search and plays the first found item. |
| [Set-MonitorPowerOff](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-monitorpoweroff) | poweroff | Turns off power to all connected monitors. |
| [Set-MonitorPowerOn](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-monitorpoweron) | monitoroff, wakemonitor | Turns the monitor power on. |
| [Set-SpotifyActiveDevice](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyactivedevice) | &nbsp; | Sets the active Spotify playback device. |
| [Set-SpotifyApiToken](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyapitoken) | &nbsp; | Caches a Spotify API token for later use in the local configuration. |
| [Set-SpotifyNext](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifynext) | next, skip | Skips to next track on Spotify. |
| [Set-SpotifyPause](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifypause) | pausemusic, togglepausemusic | Pauses Spotify playback |
| [Set-SpotifyPlaylistDetails](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyplaylistdetails) | spld | Sets the main properties of a Spotify playlist. |
| [Set-SpotifyPlaylistOrder](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyplaylistorder) | &nbsp; | Reorders tracks within a Spotify playlist by moving a range of items to a new position. |
| [Set-SpotifyPrevious](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyprevious) | prev, previous | Skips to the previous track in Spotify playback. |
| [Set-SpotifyRepeatContext](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyrepeatcontext) | repeat | Enables playlist repeat mode for Spotify playback. |
| [Set-SpotifyRepeatOff](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyrepeatoff) | norepeat, repeatoff | Disables Spotify repeat mode for the currently active device. |
| [Set-SpotifyRepeatSong](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyrepeatsong) | repeatsong | Enables song repeat mode in Spotify. |
| [Set-SpotifyShuffleOff](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyshuffleoff) | &nbsp; | Disables Spotify song-shuffle mode on the active device. |
| [Set-SpotifyShuffleOn](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyshuffleon) | shuffle, shuffleon | Enables Spotify song-shuffle mode. |
| [Set-SpotifyStart](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifystart) | play, startmusic | Starts Spotify playback on the currently active device. |
| [Set-SpotifyStop](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifystop) | stop | Stops Spotify playback on the active device. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-vlcplayerfocused) | fvlc, showvlc, vlcf | Sets focus to the VLC media player window. |
| [Start-SnakeGame](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-snakegame) | snake | &nbsp; |
| [Start-TextToSpeech](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-texttospeech) | say | Converts text to speech using the Windows Speech API. |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-vlcmediaplayernextinplaylist) | vlcnext | Advances VLC Media Player to the next item in the current playlist. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-vlcmediaplayerpreviousinplaylist) | vlcback, vlcprev | Moves to the previous item in the VLC Media Player playlist. |
| [Stop-TextToSpeech](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#stop-texttospeech) | sst | Immediately stops any ongoing text-to-speech output. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#switch-vlcmediaplayermute) | vlcmute, vlcunmute | Toggles the mute state of the VLC Media Player. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#switch-vlcmediaplayerpaused) | vlcpause, vlcplay | Toggles the pause/play state of the VLC Media Player. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#switch-vlcmediaplayerrepeat) | vlcrepeat | Toggles the repeat mode in VLC Media Player. |
| [UtcNow](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#utcnow) | &nbsp; | Gets the current UTC (Coordinated Universal Time) date and time. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Console/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Console.Spotify

**A Windows PowerShell module for enhancing the commandline experience**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-SpotifyNewPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#add-spotifynewplaylist) | newplaylist | Creates a new Spotify playlist with customizable settings. |
| [Add-SpotifyTracksToLiked](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#add-spotifytrackstoliked) | like | Adds tracks to the user's Spotify liked songs library. |
| [Add-SpotifyTracksToPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#add-spotifytrackstoplaylist) | addtoplaylist | Adds tracks to a Spotify playlist. |
| [Connect-SpotifyApiToken](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#connect-spotifyapitoken) | &nbsp; | Authenticates with Spotify API using OAuth flow to obtain an access token. |
| [Enable-Screensaver](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#enable-screensaver) | &nbsp; | &nbsp; |
| [Get-IsSpeaking](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-isspeaking) | iss | Returns true if the text-to-speech engine is speaking. |
| [Get-SpotifyActiveDevice](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyactivedevice) | &nbsp; | Returns all currently active Spotify devices for the current user. |
| [Get-SpotifyApiToken](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyapitoken) | &nbsp; | Retrieves or generates a valid Spotify API authentication token. |
| [Get-SpotifyCurrentlyPlaying](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifycurrentlyplaying) | gcp | Returns information about the currently playing track on Spotify. |
| [Get-SpotifyDevice](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifydevice) | &nbsp; | Returns all currently available Spotify devices for current user. |
| [Get-SpotifyLikedTrack](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifylikedtrack) | liked | Retrieves all tracks saved in the user's Spotify Library. |
| [Get-SpotifyLyrics](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifylyrics) | lyrics | Retrieves lyrics for Spotify tracks from Musixmatch.com |
| [Get-SpotifyPlaylistIdsByName](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyplaylistidsbyname) | &nbsp; | Retrieves Spotify playlist IDs by their names. |
| [Get-SpotifyPlaylistTrack](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyplaylisttrack) | getplaylist | Returns all tracks from a Spotify playlist. |
| [Get-SpotifyTrackAudioFeatures](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifytrackaudiofeatures) | audiofeatures | Retrieves audio feature information for one or more Spotify tracks. |
| [Get-SpotifyTrackById](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifytrackbyid) | gettrack | Retrieves detailed track information from Spotify using a track ID. |
| [Get-SpotifyUserPlaylists](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyuserplaylists) | gupl | Returns a collection of Spotify playlists owned by the current user. |
| [Move-SpotifyLikedTracksToPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#move-spotifylikedtrackstoplaylist) | moveliked | Moves all liked tracks from your Spotify library to specified playlist(s) |
| [New-MicrosoftShellTab](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#new-microsoftshelltab) | x | &nbsp; |
| [Now](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#now) | &nbsp; | Returns the current system date and time as a DateTime object. |
| [Open-MediaFile](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#open-mediafile) | findmedia, media, vlcmedia | &nbsp; |
| [Open-VlcMediaPlayer](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#open-vlcmediaplayer) | vlc | &nbsp; |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#open-vlcmediaplayerlyrics) | vlclyrics | &nbsp; |
| [Remove-SpotifyTracksFromLiked](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#remove-spotifytracksfromliked) | dislike | Removes tracks from the user's Spotify Library (Liked Songs). |
| [Remove-SpotifyTracksFromPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#remove-spotifytracksfromplaylist) | removefromplaylist | Removes tracks from a Spotify playlist. |
| [SayDate](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#saydate) | &nbsp; | &nbsp; |
| [SayTime](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#saytime) | &nbsp; | Announces the current time using text-to-speech. |
| [Search-Spotify](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#search-spotify) | fm, sm | Performs a Spotify search and returns matching items. |
| [Search-SpotifyAndEnqueue](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#search-spotifyandenqueue) | fmq, smq | Searches Spotify and adds the first matching item to the playback queue. |
| [Search-SpotifyAndPlay](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#search-spotifyandplay) | fmp, smp | Performs a Spotify search and plays the first found item. |
| [Set-MonitorPowerOff](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-monitorpoweroff) | poweroff | Turns off power to all connected monitors. |
| [Set-MonitorPowerOn](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-monitorpoweron) | monitoroff, wakemonitor | Turns the monitor power on. |
| [Set-SpotifyActiveDevice](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyactivedevice) | &nbsp; | Sets the active Spotify playback device. |
| [Set-SpotifyApiToken](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyapitoken) | &nbsp; | Caches a Spotify API token for later use in the local configuration. |
| [Set-SpotifyNext](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifynext) | next, skip | Skips to next track on Spotify. |
| [Set-SpotifyPause](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifypause) | pausemusic, togglepausemusic | Pauses Spotify playback |
| [Set-SpotifyPlaylistDetails](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyplaylistdetails) | spld | Sets the main properties of a Spotify playlist. |
| [Set-SpotifyPlaylistOrder](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyplaylistorder) | &nbsp; | Reorders tracks within a Spotify playlist by moving a range of items to a new position. |
| [Set-SpotifyPrevious](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyprevious) | prev, previous | Skips to the previous track in Spotify playback. |
| [Set-SpotifyRepeatContext](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyrepeatcontext) | repeat | Enables playlist repeat mode for Spotify playback. |
| [Set-SpotifyRepeatOff](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyrepeatoff) | norepeat, repeatoff | Disables Spotify repeat mode for the currently active device. |
| [Set-SpotifyRepeatSong](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyrepeatsong) | repeatsong | Enables song repeat mode in Spotify. |
| [Set-SpotifyShuffleOff](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyshuffleoff) | &nbsp; | Disables Spotify song-shuffle mode on the active device. |
| [Set-SpotifyShuffleOn](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyshuffleon) | shuffle, shuffleon | Enables Spotify song-shuffle mode. |
| [Set-SpotifyStart](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifystart) | play, startmusic | Starts Spotify playback on the currently active device. |
| [Set-SpotifyStop](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifystop) | stop | Stops Spotify playback on the active device. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-vlcplayerfocused) | fvlc, showvlc, vlcf | Sets focus to the VLC media player window. |
| [Start-SnakeGame](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-snakegame) | snake | &nbsp; |
| [Start-TextToSpeech](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-texttospeech) | say | Converts text to speech using the Windows Speech API. |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-vlcmediaplayernextinplaylist) | vlcnext | Advances VLC Media Player to the next item in the current playlist. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-vlcmediaplayerpreviousinplaylist) | vlcback, vlcprev | Moves to the previous item in the VLC Media Player playlist. |
| [Stop-TextToSpeech](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#stop-texttospeech) | sst | Immediately stops any ongoing text-to-speech output. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#switch-vlcmediaplayermute) | vlcmute, vlcunmute | Toggles the mute state of the VLC Media Player. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#switch-vlcmediaplayerpaused) | vlcpause, vlcplay | Toggles the pause/play state of the VLC Media Player. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#switch-vlcmediaplayerrepeat) | vlcrepeat | Toggles the repeat mode in VLC Media Player. |
| [UtcNow](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#utcnow) | &nbsp; | Gets the current UTC (Coordinated Universal Time) date and time. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Console/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Console.Vlc

**A Windows PowerShell module for enhancing the commandline experience**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-SpotifyNewPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#add-spotifynewplaylist) | newplaylist | Creates a new Spotify playlist with customizable settings. |
| [Add-SpotifyTracksToLiked](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#add-spotifytrackstoliked) | like | Adds tracks to the user's Spotify liked songs library. |
| [Add-SpotifyTracksToPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#add-spotifytrackstoplaylist) | addtoplaylist | Adds tracks to a Spotify playlist. |
| [Connect-SpotifyApiToken](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#connect-spotifyapitoken) | &nbsp; | Authenticates with Spotify API using OAuth flow to obtain an access token. |
| [Enable-Screensaver](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#enable-screensaver) | &nbsp; | &nbsp; |
| [Get-IsSpeaking](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-isspeaking) | iss | Returns true if the text-to-speech engine is speaking. |
| [Get-SpotifyActiveDevice](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyactivedevice) | &nbsp; | Returns all currently active Spotify devices for the current user. |
| [Get-SpotifyApiToken](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyapitoken) | &nbsp; | Retrieves or generates a valid Spotify API authentication token. |
| [Get-SpotifyCurrentlyPlaying](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifycurrentlyplaying) | gcp | Returns information about the currently playing track on Spotify. |
| [Get-SpotifyDevice](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifydevice) | &nbsp; | Returns all currently available Spotify devices for current user. |
| [Get-SpotifyLikedTrack](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifylikedtrack) | liked | Retrieves all tracks saved in the user's Spotify Library. |
| [Get-SpotifyLyrics](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifylyrics) | lyrics | Retrieves lyrics for Spotify tracks from Musixmatch.com |
| [Get-SpotifyPlaylistIdsByName](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyplaylistidsbyname) | &nbsp; | Retrieves Spotify playlist IDs by their names. |
| [Get-SpotifyPlaylistTrack](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyplaylisttrack) | getplaylist | Returns all tracks from a Spotify playlist. |
| [Get-SpotifyTrackAudioFeatures](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifytrackaudiofeatures) | audiofeatures | Retrieves audio feature information for one or more Spotify tracks. |
| [Get-SpotifyTrackById](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifytrackbyid) | gettrack | Retrieves detailed track information from Spotify using a track ID. |
| [Get-SpotifyUserPlaylists](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#get-spotifyuserplaylists) | gupl | Returns a collection of Spotify playlists owned by the current user. |
| [Move-SpotifyLikedTracksToPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#move-spotifylikedtrackstoplaylist) | moveliked | Moves all liked tracks from your Spotify library to specified playlist(s) |
| [New-MicrosoftShellTab](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#new-microsoftshelltab) | x | &nbsp; |
| [Now](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#now) | &nbsp; | Returns the current system date and time as a DateTime object. |
| [Open-MediaFile](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#open-mediafile) | findmedia, media, vlcmedia | &nbsp; |
| [Open-VlcMediaPlayer](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#open-vlcmediaplayer) | vlc | &nbsp; |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#open-vlcmediaplayerlyrics) | vlclyrics | &nbsp; |
| [Remove-SpotifyTracksFromLiked](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#remove-spotifytracksfromliked) | dislike | Removes tracks from the user's Spotify Library (Liked Songs). |
| [Remove-SpotifyTracksFromPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#remove-spotifytracksfromplaylist) | removefromplaylist | Removes tracks from a Spotify playlist. |
| [SayDate](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#saydate) | &nbsp; | &nbsp; |
| [SayTime](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#saytime) | &nbsp; | Announces the current time using text-to-speech. |
| [Search-Spotify](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#search-spotify) | fm, sm | Performs a Spotify search and returns matching items. |
| [Search-SpotifyAndEnqueue](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#search-spotifyandenqueue) | fmq, smq | Searches Spotify and adds the first matching item to the playback queue. |
| [Search-SpotifyAndPlay](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#search-spotifyandplay) | fmp, smp | Performs a Spotify search and plays the first found item. |
| [Set-MonitorPowerOff](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-monitorpoweroff) | poweroff | Turns off power to all connected monitors. |
| [Set-MonitorPowerOn](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-monitorpoweron) | monitoroff, wakemonitor | Turns the monitor power on. |
| [Set-SpotifyActiveDevice](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyactivedevice) | &nbsp; | Sets the active Spotify playback device. |
| [Set-SpotifyApiToken](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyapitoken) | &nbsp; | Caches a Spotify API token for later use in the local configuration. |
| [Set-SpotifyNext](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifynext) | next, skip | Skips to next track on Spotify. |
| [Set-SpotifyPause](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifypause) | pausemusic, togglepausemusic | Pauses Spotify playback |
| [Set-SpotifyPlaylistDetails](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyplaylistdetails) | spld | Sets the main properties of a Spotify playlist. |
| [Set-SpotifyPlaylistOrder](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyplaylistorder) | &nbsp; | Reorders tracks within a Spotify playlist by moving a range of items to a new position. |
| [Set-SpotifyPrevious](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyprevious) | prev, previous | Skips to the previous track in Spotify playback. |
| [Set-SpotifyRepeatContext](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyrepeatcontext) | repeat | Enables playlist repeat mode for Spotify playback. |
| [Set-SpotifyRepeatOff](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyrepeatoff) | norepeat, repeatoff | Disables Spotify repeat mode for the currently active device. |
| [Set-SpotifyRepeatSong](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyrepeatsong) | repeatsong | Enables song repeat mode in Spotify. |
| [Set-SpotifyShuffleOff](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyshuffleoff) | &nbsp; | Disables Spotify song-shuffle mode on the active device. |
| [Set-SpotifyShuffleOn](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifyshuffleon) | shuffle, shuffleon | Enables Spotify song-shuffle mode. |
| [Set-SpotifyStart](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifystart) | play, startmusic | Starts Spotify playback on the currently active device. |
| [Set-SpotifyStop](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-spotifystop) | stop | Stops Spotify playback on the active device. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#set-vlcplayerfocused) | fvlc, showvlc, vlcf | Sets focus to the VLC media player window. |
| [Start-SnakeGame](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-snakegame) | snake | &nbsp; |
| [Start-TextToSpeech](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-texttospeech) | say | Converts text to speech using the Windows Speech API. |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-vlcmediaplayernextinplaylist) | vlcnext | Advances VLC Media Player to the next item in the current playlist. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#start-vlcmediaplayerpreviousinplaylist) | vlcback, vlcprev | Moves to the previous item in the VLC Media Player playlist. |
| [Stop-TextToSpeech](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#stop-texttospeech) | sst | Immediately stops any ongoing text-to-speech output. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#switch-vlcmediaplayermute) | vlcmute, vlcunmute | Toggles the mute state of the VLC Media Player. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#switch-vlcmediaplayerpaused) | vlcpause, vlcplay | Toggles the pause/play state of the VLC Media Player. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#switch-vlcmediaplayerrepeat) | vlcrepeat | Toggles the repeat mode in VLC Media Player. |
| [UtcNow](https://github.com/genXdev/GenXdev.Console/tree/main?tab=readme-ov-file#utcnow) | &nbsp; | Gets the current UTC (Coordinated Universal Time) date and time. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Console/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Data

**A Windows PowerShell module for enhancing the commandline experience**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [EnsureSQLiteStudioInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuresqlitestudioinstalled) | &nbsp; | &nbsp; |
| [EnsureSSMSInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuressmsinstalled) | &nbsp; | &nbsp; |
| [Get-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreference) | getPreference | Retrieves a preference value from the GenXdev preferences store. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencenames) | getPreferenceNames | Gets all preference names from session storage and database stores. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencesdatabasepath) | &nbsp; | Gets the configured database path for preference data files used in GenXdev.Data operations. |
| [Get-KeyValueStoreNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorenames) | getstorenames | Retrieves the names of available key-value stores. |
| [Get-KeyValueStorePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorepath) | &nbsp; | Gets the file path for a key-value store. |
| [Get-SQLiteSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteschema) | &nbsp; | Retrieves the complete schema information from a SQLite database. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQLite database table. |
| [Get-SQLiteTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetabledata) | &nbsp; | Retrieves data from a SQLite database table with optional record limiting. |
| [Get-SQLiteTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetables) | &nbsp; | Retrieves a list of table names from a SQLite database. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetableschema) | &nbsp; | Retrieves the schema information for a specified SQLite table. |
| [Get-SQLiteTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetransaction) | &nbsp; | &nbsp; |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewcolumndata) | &nbsp; | Retrieves column data from a SQLite view with optional record limiting. |
| [Get-SQLiteViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewdata) | &nbsp; | Retrieves data from a SQLite database view with optional record limiting. |
| [Get-SQLiteViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviews) | &nbsp; | Retrieves a list of views from a SQLite database. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQLite view. |
| [Get-SQLServerSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverschema) | &nbsp; | Retrieves the complete schema information from a SQL Server database. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQL database table. |
| [Get-SQLServerTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertabledata) | &nbsp; | Retrieves data from a SQL database table with optional record limiting. |
| [Get-SQLServerTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertables) | &nbsp; | Retrieves a list of table names from a SQL Server database. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertableschema) | &nbsp; | Retrieves the schema information for a specified SQL Server table. |
| [Get-SQLServerTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertransaction) | getsqltx, newsqltx | Creates and returns a SQL Server transaction object for batch operations. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewcolumndata) | &nbsp; | Retrieves column data from a SQL view with optional record limiting. |
| [Get-SQLServerViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewdata) | &nbsp; | Retrieves data from a SQL database view with optional record limiting. |
| [Get-SQLServerViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviews) | &nbsp; | Retrieves a list of views from a SQL Server database. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQL Server view. |
| [Get-StoreKeys](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-storekeys) | getkeys | Retrieves all key names for a given key-value store. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-valuebykeyfromstore) | getvalue | Retrieves a value from a JSON-based key-value store. |
| [Initialize-KeyValueStores](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#initialize-keyvaluestores) | &nbsp; | Initializes KeyValueStore directory structure for local and OneDrive storage. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitequery) | &nbsp; | &nbsp; |
| [Invoke-SQLiteStudio](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitestudio) | &nbsp; | Executes SQLite database queries with support for parameters and transactions. |
| [Invoke-SqlServerQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlserverquery) | &nbsp; | &nbsp; |
| [Invoke-SSMS](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-ssms) | sqlservermanagementstudio, ssms | Launches SQL Server Management Studio (SSMS) after ensuring it is installed. |
| [New-SQLiteDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlitedatabase) | &nbsp; | &nbsp; |
| [New-SQLServerDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlserverdatabase) | nsqldb | Creates a new SQL Server database. |
| [Remove-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-genxdevpreference) | removePreference | Removes a preference value from the GenXdev preferences store. |
| [Remove-KeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyfromstore) | removekey | Removes a key from a key-value store. |
| [Remove-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyvaluestore) | &nbsp; | Removes a key-value store. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevdefaultpreference) | setPreferenceDefault | Sets a default preference value in the GenXdev preferences store. |
| [Set-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreference) | setPreference | Sets a preference value in the GenXdev preferences store. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreferencesdatabasepath) | &nbsp; | Sets the database path for preferences used in GenXdev.Data operations. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-valuebykeyinstore) | setvalue | Manages key-value pairs in a JSON file-based store. |
| [Sync-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#sync-keyvaluestore) | &nbsp; | Synchronizes local and OneDrive key-value store JSON files. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Data/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Data.KeyValueStore

**A Windows PowerShell module for enhancing the commandline experience**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [EnsureSQLiteStudioInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuresqlitestudioinstalled) | &nbsp; | &nbsp; |
| [EnsureSSMSInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuressmsinstalled) | &nbsp; | &nbsp; |
| [Get-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreference) | getPreference | Retrieves a preference value from the GenXdev preferences store. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencenames) | getPreferenceNames | Gets all preference names from session storage and database stores. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencesdatabasepath) | &nbsp; | Gets the configured database path for preference data files used in GenXdev.Data operations. |
| [Get-KeyValueStoreNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorenames) | getstorenames | Retrieves the names of available key-value stores. |
| [Get-KeyValueStorePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorepath) | &nbsp; | Gets the file path for a key-value store. |
| [Get-SQLiteSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteschema) | &nbsp; | Retrieves the complete schema information from a SQLite database. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQLite database table. |
| [Get-SQLiteTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetabledata) | &nbsp; | Retrieves data from a SQLite database table with optional record limiting. |
| [Get-SQLiteTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetables) | &nbsp; | Retrieves a list of table names from a SQLite database. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetableschema) | &nbsp; | Retrieves the schema information for a specified SQLite table. |
| [Get-SQLiteTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetransaction) | &nbsp; | &nbsp; |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewcolumndata) | &nbsp; | Retrieves column data from a SQLite view with optional record limiting. |
| [Get-SQLiteViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewdata) | &nbsp; | Retrieves data from a SQLite database view with optional record limiting. |
| [Get-SQLiteViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviews) | &nbsp; | Retrieves a list of views from a SQLite database. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQLite view. |
| [Get-SQLServerSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverschema) | &nbsp; | Retrieves the complete schema information from a SQL Server database. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQL database table. |
| [Get-SQLServerTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertabledata) | &nbsp; | Retrieves data from a SQL database table with optional record limiting. |
| [Get-SQLServerTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertables) | &nbsp; | Retrieves a list of table names from a SQL Server database. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertableschema) | &nbsp; | Retrieves the schema information for a specified SQL Server table. |
| [Get-SQLServerTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertransaction) | getsqltx, newsqltx | Creates and returns a SQL Server transaction object for batch operations. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewcolumndata) | &nbsp; | Retrieves column data from a SQL view with optional record limiting. |
| [Get-SQLServerViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewdata) | &nbsp; | Retrieves data from a SQL database view with optional record limiting. |
| [Get-SQLServerViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviews) | &nbsp; | Retrieves a list of views from a SQL Server database. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQL Server view. |
| [Get-StoreKeys](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-storekeys) | getkeys | Retrieves all key names for a given key-value store. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-valuebykeyfromstore) | getvalue | Retrieves a value from a JSON-based key-value store. |
| [Initialize-KeyValueStores](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#initialize-keyvaluestores) | &nbsp; | Initializes KeyValueStore directory structure for local and OneDrive storage. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitequery) | &nbsp; | &nbsp; |
| [Invoke-SQLiteStudio](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitestudio) | &nbsp; | Executes SQLite database queries with support for parameters and transactions. |
| [Invoke-SqlServerQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlserverquery) | &nbsp; | &nbsp; |
| [Invoke-SSMS](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-ssms) | sqlservermanagementstudio, ssms | Launches SQL Server Management Studio (SSMS) after ensuring it is installed. |
| [New-SQLiteDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlitedatabase) | &nbsp; | &nbsp; |
| [New-SQLServerDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlserverdatabase) | nsqldb | Creates a new SQL Server database. |
| [Remove-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-genxdevpreference) | removePreference | Removes a preference value from the GenXdev preferences store. |
| [Remove-KeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyfromstore) | removekey | Removes a key from a key-value store. |
| [Remove-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyvaluestore) | &nbsp; | Removes a key-value store. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevdefaultpreference) | setPreferenceDefault | Sets a default preference value in the GenXdev preferences store. |
| [Set-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreference) | setPreference | Sets a preference value in the GenXdev preferences store. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreferencesdatabasepath) | &nbsp; | Sets the database path for preferences used in GenXdev.Data operations. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-valuebykeyinstore) | setvalue | Manages key-value pairs in a JSON file-based store. |
| [Sync-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#sync-keyvaluestore) | &nbsp; | Synchronizes local and OneDrive key-value store JSON files. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Data/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Data.Preferences

**A Windows PowerShell module for enhancing the commandline experience**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [EnsureSQLiteStudioInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuresqlitestudioinstalled) | &nbsp; | &nbsp; |
| [EnsureSSMSInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuressmsinstalled) | &nbsp; | &nbsp; |
| [Get-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreference) | getPreference | Retrieves a preference value from the GenXdev preferences store. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencenames) | getPreferenceNames | Gets all preference names from session storage and database stores. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencesdatabasepath) | &nbsp; | Gets the configured database path for preference data files used in GenXdev.Data operations. |
| [Get-KeyValueStoreNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorenames) | getstorenames | Retrieves the names of available key-value stores. |
| [Get-KeyValueStorePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorepath) | &nbsp; | Gets the file path for a key-value store. |
| [Get-SQLiteSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteschema) | &nbsp; | Retrieves the complete schema information from a SQLite database. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQLite database table. |
| [Get-SQLiteTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetabledata) | &nbsp; | Retrieves data from a SQLite database table with optional record limiting. |
| [Get-SQLiteTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetables) | &nbsp; | Retrieves a list of table names from a SQLite database. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetableschema) | &nbsp; | Retrieves the schema information for a specified SQLite table. |
| [Get-SQLiteTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetransaction) | &nbsp; | &nbsp; |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewcolumndata) | &nbsp; | Retrieves column data from a SQLite view with optional record limiting. |
| [Get-SQLiteViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewdata) | &nbsp; | Retrieves data from a SQLite database view with optional record limiting. |
| [Get-SQLiteViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviews) | &nbsp; | Retrieves a list of views from a SQLite database. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQLite view. |
| [Get-SQLServerSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverschema) | &nbsp; | Retrieves the complete schema information from a SQL Server database. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQL database table. |
| [Get-SQLServerTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertabledata) | &nbsp; | Retrieves data from a SQL database table with optional record limiting. |
| [Get-SQLServerTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertables) | &nbsp; | Retrieves a list of table names from a SQL Server database. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertableschema) | &nbsp; | Retrieves the schema information for a specified SQL Server table. |
| [Get-SQLServerTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertransaction) | getsqltx, newsqltx | Creates and returns a SQL Server transaction object for batch operations. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewcolumndata) | &nbsp; | Retrieves column data from a SQL view with optional record limiting. |
| [Get-SQLServerViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewdata) | &nbsp; | Retrieves data from a SQL database view with optional record limiting. |
| [Get-SQLServerViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviews) | &nbsp; | Retrieves a list of views from a SQL Server database. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQL Server view. |
| [Get-StoreKeys](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-storekeys) | getkeys | Retrieves all key names for a given key-value store. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-valuebykeyfromstore) | getvalue | Retrieves a value from a JSON-based key-value store. |
| [Initialize-KeyValueStores](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#initialize-keyvaluestores) | &nbsp; | Initializes KeyValueStore directory structure for local and OneDrive storage. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitequery) | &nbsp; | &nbsp; |
| [Invoke-SQLiteStudio](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitestudio) | &nbsp; | Executes SQLite database queries with support for parameters and transactions. |
| [Invoke-SqlServerQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlserverquery) | &nbsp; | &nbsp; |
| [Invoke-SSMS](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-ssms) | sqlservermanagementstudio, ssms | Launches SQL Server Management Studio (SSMS) after ensuring it is installed. |
| [New-SQLiteDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlitedatabase) | &nbsp; | &nbsp; |
| [New-SQLServerDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlserverdatabase) | nsqldb | Creates a new SQL Server database. |
| [Remove-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-genxdevpreference) | removePreference | Removes a preference value from the GenXdev preferences store. |
| [Remove-KeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyfromstore) | removekey | Removes a key from a key-value store. |
| [Remove-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyvaluestore) | &nbsp; | Removes a key-value store. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevdefaultpreference) | setPreferenceDefault | Sets a default preference value in the GenXdev preferences store. |
| [Set-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreference) | setPreference | Sets a preference value in the GenXdev preferences store. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreferencesdatabasepath) | &nbsp; | Sets the database path for preferences used in GenXdev.Data operations. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-valuebykeyinstore) | setvalue | Manages key-value pairs in a JSON file-based store. |
| [Sync-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#sync-keyvaluestore) | &nbsp; | Synchronizes local and OneDrive key-value store JSON files. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Data/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Data.SQLite

**A Windows PowerShell module for enhancing the commandline experience**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [EnsureSQLiteStudioInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuresqlitestudioinstalled) | &nbsp; | &nbsp; |
| [EnsureSSMSInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuressmsinstalled) | &nbsp; | &nbsp; |
| [Get-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreference) | getPreference | Retrieves a preference value from the GenXdev preferences store. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencenames) | getPreferenceNames | Gets all preference names from session storage and database stores. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencesdatabasepath) | &nbsp; | Gets the configured database path for preference data files used in GenXdev.Data operations. |
| [Get-KeyValueStoreNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorenames) | getstorenames | Retrieves the names of available key-value stores. |
| [Get-KeyValueStorePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorepath) | &nbsp; | Gets the file path for a key-value store. |
| [Get-SQLiteSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteschema) | &nbsp; | Retrieves the complete schema information from a SQLite database. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQLite database table. |
| [Get-SQLiteTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetabledata) | &nbsp; | Retrieves data from a SQLite database table with optional record limiting. |
| [Get-SQLiteTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetables) | &nbsp; | Retrieves a list of table names from a SQLite database. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetableschema) | &nbsp; | Retrieves the schema information for a specified SQLite table. |
| [Get-SQLiteTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetransaction) | &nbsp; | &nbsp; |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewcolumndata) | &nbsp; | Retrieves column data from a SQLite view with optional record limiting. |
| [Get-SQLiteViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewdata) | &nbsp; | Retrieves data from a SQLite database view with optional record limiting. |
| [Get-SQLiteViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviews) | &nbsp; | Retrieves a list of views from a SQLite database. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQLite view. |
| [Get-SQLServerSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverschema) | &nbsp; | Retrieves the complete schema information from a SQL Server database. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQL database table. |
| [Get-SQLServerTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertabledata) | &nbsp; | Retrieves data from a SQL database table with optional record limiting. |
| [Get-SQLServerTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertables) | &nbsp; | Retrieves a list of table names from a SQL Server database. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertableschema) | &nbsp; | Retrieves the schema information for a specified SQL Server table. |
| [Get-SQLServerTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertransaction) | getsqltx, newsqltx | Creates and returns a SQL Server transaction object for batch operations. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewcolumndata) | &nbsp; | Retrieves column data from a SQL view with optional record limiting. |
| [Get-SQLServerViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewdata) | &nbsp; | Retrieves data from a SQL database view with optional record limiting. |
| [Get-SQLServerViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviews) | &nbsp; | Retrieves a list of views from a SQL Server database. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQL Server view. |
| [Get-StoreKeys](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-storekeys) | getkeys | Retrieves all key names for a given key-value store. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-valuebykeyfromstore) | getvalue | Retrieves a value from a JSON-based key-value store. |
| [Initialize-KeyValueStores](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#initialize-keyvaluestores) | &nbsp; | Initializes KeyValueStore directory structure for local and OneDrive storage. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitequery) | &nbsp; | &nbsp; |
| [Invoke-SQLiteStudio](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitestudio) | &nbsp; | Executes SQLite database queries with support for parameters and transactions. |
| [Invoke-SqlServerQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlserverquery) | &nbsp; | &nbsp; |
| [Invoke-SSMS](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-ssms) | sqlservermanagementstudio, ssms | Launches SQL Server Management Studio (SSMS) after ensuring it is installed. |
| [New-SQLiteDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlitedatabase) | &nbsp; | &nbsp; |
| [New-SQLServerDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlserverdatabase) | nsqldb | Creates a new SQL Server database. |
| [Remove-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-genxdevpreference) | removePreference | Removes a preference value from the GenXdev preferences store. |
| [Remove-KeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyfromstore) | removekey | Removes a key from a key-value store. |
| [Remove-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyvaluestore) | &nbsp; | Removes a key-value store. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevdefaultpreference) | setPreferenceDefault | Sets a default preference value in the GenXdev preferences store. |
| [Set-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreference) | setPreference | Sets a preference value in the GenXdev preferences store. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreferencesdatabasepath) | &nbsp; | Sets the database path for preferences used in GenXdev.Data operations. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-valuebykeyinstore) | setvalue | Manages key-value pairs in a JSON file-based store. |
| [Sync-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#sync-keyvaluestore) | &nbsp; | Synchronizes local and OneDrive key-value store JSON files. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Data/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Data.SqlServer

**A Windows PowerShell module for enhancing the commandline experience**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [EnsureSQLiteStudioInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuresqlitestudioinstalled) | &nbsp; | &nbsp; |
| [EnsureSSMSInstalled](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#ensuressmsinstalled) | &nbsp; | &nbsp; |
| [Get-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreference) | getPreference | Retrieves a preference value from the GenXdev preferences store. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencenames) | getPreferenceNames | Gets all preference names from session storage and database stores. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-genxdevpreferencesdatabasepath) | &nbsp; | Gets the configured database path for preference data files used in GenXdev.Data operations. |
| [Get-KeyValueStoreNames](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorenames) | getstorenames | Retrieves the names of available key-value stores. |
| [Get-KeyValueStorePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-keyvaluestorepath) | &nbsp; | Gets the file path for a key-value store. |
| [Get-SQLiteSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteschema) | &nbsp; | Retrieves the complete schema information from a SQLite database. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQLite database table. |
| [Get-SQLiteTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetabledata) | &nbsp; | Retrieves data from a SQLite database table with optional record limiting. |
| [Get-SQLiteTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetables) | &nbsp; | Retrieves a list of table names from a SQLite database. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetableschema) | &nbsp; | Retrieves the schema information for a specified SQLite table. |
| [Get-SQLiteTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlitetransaction) | &nbsp; | &nbsp; |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewcolumndata) | &nbsp; | Retrieves column data from a SQLite view with optional record limiting. |
| [Get-SQLiteViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewdata) | &nbsp; | Retrieves data from a SQLite database view with optional record limiting. |
| [Get-SQLiteViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviews) | &nbsp; | Retrieves a list of views from a SQLite database. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqliteviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQLite view. |
| [Get-SQLServerSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverschema) | &nbsp; | Retrieves the complete schema information from a SQL Server database. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertablecolumndata) | &nbsp; | Retrieves data from a specific column in a SQL database table. |
| [Get-SQLServerTableData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertabledata) | &nbsp; | Retrieves data from a SQL database table with optional record limiting. |
| [Get-SQLServerTables](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertables) | &nbsp; | Retrieves a list of table names from a SQL Server database. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertableschema) | &nbsp; | Retrieves the schema information for a specified SQL Server table. |
| [Get-SQLServerTransaction](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlservertransaction) | getsqltx, newsqltx | Creates and returns a SQL Server transaction object for batch operations. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewcolumndata) | &nbsp; | Retrieves column data from a SQL view with optional record limiting. |
| [Get-SQLServerViewData](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewdata) | &nbsp; | Retrieves data from a SQL database view with optional record limiting. |
| [Get-SQLServerViews](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviews) | &nbsp; | Retrieves a list of views from a SQL Server database. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-sqlserverviewschema) | &nbsp; | Retrieves the SQL schema definition for a SQL Server view. |
| [Get-StoreKeys](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-storekeys) | getkeys | Retrieves all key names for a given key-value store. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#get-valuebykeyfromstore) | getvalue | Retrieves a value from a JSON-based key-value store. |
| [Initialize-KeyValueStores](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#initialize-keyvaluestores) | &nbsp; | Initializes KeyValueStore directory structure for local and OneDrive storage. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitequery) | &nbsp; | &nbsp; |
| [Invoke-SQLiteStudio](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlitestudio) | &nbsp; | Executes SQLite database queries with support for parameters and transactions. |
| [Invoke-SqlServerQuery](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-sqlserverquery) | &nbsp; | &nbsp; |
| [Invoke-SSMS](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#invoke-ssms) | sqlservermanagementstudio, ssms | Launches SQL Server Management Studio (SSMS) after ensuring it is installed. |
| [New-SQLiteDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlitedatabase) | &nbsp; | &nbsp; |
| [New-SQLServerDatabase](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#new-sqlserverdatabase) | nsqldb | Creates a new SQL Server database. |
| [Remove-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-genxdevpreference) | removePreference | Removes a preference value from the GenXdev preferences store. |
| [Remove-KeyFromStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyfromstore) | removekey | Removes a key from a key-value store. |
| [Remove-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#remove-keyvaluestore) | &nbsp; | Removes a key-value store. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevdefaultpreference) | setPreferenceDefault | Sets a default preference value in the GenXdev preferences store. |
| [Set-GenXdevPreference](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreference) | setPreference | Sets a preference value in the GenXdev preferences store. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-genxdevpreferencesdatabasepath) | &nbsp; | Sets the database path for preferences used in GenXdev.Data operations. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#set-valuebykeyinstore) | setvalue | Manages key-value pairs in a JSON file-based store. |
| [Sync-KeyValueStore](https://github.com/genXdev/GenXdev.Data/tree/main?tab=readme-ov-file#sync-keyvaluestore) | &nbsp; | Synchronizes local and OneDrive key-value store JSON files. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Data/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.FileSystem

**A Windows PowerShell module for basic and advanced file management tasks**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Confirm-InstallationConsent](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#confirm-installationconsent) | &nbsp; | &nbsp; |
| [Copy-IdenticalParamValues](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#copy-identicalparamvalues) | &nbsp; | Copies parameter values from bound parameters to a new hashtable based on another function's possible parameters. |
| [EnsurePester](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#ensurepester) | &nbsp; | &nbsp; |
| [Expand-Path](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#expand-path) | ep | Expands any given file reference to a full pathname. |
| [Find-DuplicateFiles](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#find-duplicatefiles) | fdf | Find duplicate files across multiple directories based on configurable criteria. |
| [Find-Item](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#find-item) | l | Fast multi-threaded file and directory search with optional textcontent pattern matching capabilities. |
| [Invoke-Fasti](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#invoke-fasti) | fasti | &nbsp; |
| [Move-ItemWithTracking](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#move-itemwithtracking) | &nbsp; | Moves files and directories while preserving filesystem links and references. |
| [Move-ToRecycleBin](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#move-torecyclebin) | &nbsp; | Moves files and directories to the Windows Recycle Bin safely. |
| [ReadJsonWithRetry](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#readjsonwithretry) | &nbsp; | Reads JSON file with retry logic and automatic lock cleanup. |
| [Remove-AllItems](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#remove-allitems) | sdel | &nbsp; |
| [Remove-ItemWithFallback](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#remove-itemwithfallback) | rmf | &nbsp; |
| [Remove-OnReboot](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#remove-onreboot) | &nbsp; | Marks files or directories for deletion during the next system boot. |
| [Rename-InProject](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#rename-inproject) | rip | &nbsp; |
| [ResolveInputObjectFileNames](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#resolveinputobjectfilenames) | &nbsp; | &nbsp; |
| [Set-FoundLocation](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#set-foundlocation) | lcd | Finds the first matching file or folder and sets the location to it. |
| [Set-LocationParent](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#set-locationparent) | .. | Changes the current location to the parent directory and lists its contents. |
| [Set-LocationParent2](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#set-locationparent2) | ... | Navigates up two directory levels in the file system hierarchy. |
| [Set-LocationParent3](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#set-locationparent3) | .... | Navigates up three directory levels in the file system hierarchy. |
| [Set-LocationParent4](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#set-locationparent4) | ..... | Navigates up four directory levels in the filesystem hierarchy. |
| [Set-LocationParent5](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#set-locationparent5) | ...... | Navigates up five directory levels in the file system hierarchy. |
| [Start-RoboCopy](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#start-robocopy) | rc, xc | &nbsp; |
| [WriteFileOutput](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#writefileoutput) | &nbsp; | &nbsp; |
| [WriteJsonAtomic](https://github.com/genXdev/GenXdev.FileSystem/tree/main?tab=readme-ov-file#writejsonatomic) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.FileSystem/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Helpers

**A Windows PowerShell module with helpers mostly used by other GenXdev modules**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [alignScript](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#alignscript) | &nbsp; | Returns a string (with altered indentation) of a provided scriptblock string |
| [Convert-PhysicsUnit](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#convert-physicsunit) | &nbsp; | Converts a value from one physics unit to another within the same category. |
| [ConvertTo-HashTable](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#convertto-hashtable) | &nbsp; | Converts a PSCustomObject to a HashTable recursively. |
| [EnsureGenXdev](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#ensuregenxdev) | &nbsp; | &nbsp; |
| [EnsureNuGetAssembly](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#ensurenugetassembly) | &nbsp; | Downloads and loads .NET assemblies from NuGet packages based on package key or ID. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-apparentsizeatarmlength) | &nbsp; | Calculates the apparent size of an object at arm's length. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-ateyelengthsizeinmm) | &nbsp; | Calculates the apparent size in mm of an object at arm's length, based on its actual size and distance. |
| [Get-AudioDeviceNames](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-audiodevicenames) | &nbsp; | Retrieves the names of available audio devices for microphone or desktop audio capture. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-buoyantforcebydisplacedvolumeanddensity) | &nbsp; | Calculates buoyant force. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-centripetalaccelerationbyvelocityandradius) | &nbsp; | Calculates centripetal acceleration. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-defaultweblanguage) | &nbsp; | Gets the default web language key based on the system's current language settings. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-dopplerfrequencyshiftbysourcespeedandobserverspeed) | &nbsp; | Calculates Doppler shifted frequency. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-dragforcebyvelocitydensityareaandcoefficient) | &nbsp; | Calculates drag force. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-escapevelocitybymassandradius) | &nbsp; | Calculates escape velocity. |
| [Get-FreeFallDistance](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-freefalldistance) | &nbsp; | Calculates the distance fallen during free fall for a given time duration. |
| [Get-FreeFallHeight](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-freefallheight) | &nbsp; | Calculates the height fallen during free fall for a given time duration. |
| [Get-FreeFallTime](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-freefalltime) | &nbsp; | Calculates the time required for an object to fall a given height during free fall. |
| [Get-GenXDevCmdlet](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-genxdevcmdlet) | gcmds | Retrieves and lists all GenXdev cmdlets and their details. |
| [Get-ImageGeolocation](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-imagegeolocation) | &nbsp; | Extracts geolocation data from an image file. |
| [Get-ImageMetadata](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-imagemetadata) | &nbsp; | &nbsp; |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-impactvelocitybyheightandgravity) | &nbsp; | Calculates impact velocity from height. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-kineticenergybymassandvelocity) | &nbsp; | Calculates kinetic energy. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-lighttraveltimebydistance) | &nbsp; | Calculates time for light to travel a distance. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-magnificationbyobjectdistanceandimagedistance) | &nbsp; | Calculates magnification for a lens. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-momentumbymassandvelocity) | &nbsp; | Calculates linear momentum. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-orbitalvelocitybyradiusandmass) | &nbsp; | Calculates orbital velocity. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-potentialenergybymassheightandgravity) | &nbsp; | Calculates gravitational potential energy. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-projectilerangebyinitialspeedandangle) | &nbsp; | Calculates the range of a projectile. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-refractionanglebyincidentangleandindices) | &nbsp; | Calculates refraction angle using Snell's law. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-resonantfrequencybylengthandspeed) | &nbsp; | Calculates resonant frequency for a closed pipe. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-soundtraveldistancebytime) | &nbsp; | Calculates the distance sound travels in a given time. |
| [Get-SpeechToText](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-speechtotext) | &nbsp; | Converts audio files to text using OpenAI's Whisper speech recognition model. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-terminalvelocitybymassgravitydensityandarea) | &nbsp; | Calculates terminal velocity. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-timeofflightbyinitialvelocityandangle) | &nbsp; | Calculates the time of flight for a projectile. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-wavespeedbyfrequencyandwavelength) | &nbsp; | Calculates wave speed. |
| [Get-WebLanguageDictionary](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-weblanguagedictionary) | &nbsp; | Returns a reversed dictionary for all languages supported by Google Search |
| [Import-GenXdevModules](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#import-genxdevmodules) | reloadgenxdev | Imports all GenXdev PowerShell modules into the global scope. |
| [Initialize-SearchPaths](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#initialize-searchpaths) | &nbsp; | Initializes and configures system search paths for package management. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#invoke-oneachgenxdevmodule) | foreach-genxdev-module-do | Executes a script block on each GenXdev module in the workspace. |
| [Out-Serial](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#out-serial) | &nbsp; | Sends a string to a serial port |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#receive-realtimespeechtotext) | &nbsp; | Converts real-time audio input to text using Whisper AI model. |
| [Remove-JSONComments](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#remove-jsoncomments) | &nbsp; | Removes comments from JSON content. |
| [resetdefaultmonitor](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#resetdefaultmonitor) | &nbsp; | &nbsp; |
| [SecondScreen](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#secondscreen) | &nbsp; | Sets default second-monitor configuration. |
| [Show-GenXDevCmdlet](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#show-genxdevcmdlet) | cmds | Displays GenXdev PowerShell modules with their cmdlets and aliases. |
| [Show-Verb](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#show-verb) | showverbs | Shows a short alphabetical list of all PowerShell verbs. |
| [SideBySide](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#sidebyside) | &nbsp; | Sets default side-by-side configuration. |
| [Test-UnattendedMode](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#test-unattendedmode) | &nbsp; | Detects if PowerShell is running in unattended/automated mode |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Helpers/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Helpers.Physics

**A Windows PowerShell module with helpers mostly used by other GenXdev modules**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [alignScript](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#alignscript) | &nbsp; | Returns a string (with altered indentation) of a provided scriptblock string |
| [Convert-PhysicsUnit](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#convert-physicsunit) | &nbsp; | Converts a value from one physics unit to another within the same category. |
| [ConvertTo-HashTable](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#convertto-hashtable) | &nbsp; | Converts a PSCustomObject to a HashTable recursively. |
| [EnsureGenXdev](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#ensuregenxdev) | &nbsp; | &nbsp; |
| [EnsureNuGetAssembly](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#ensurenugetassembly) | &nbsp; | Downloads and loads .NET assemblies from NuGet packages based on package key or ID. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-apparentsizeatarmlength) | &nbsp; | Calculates the apparent size of an object at arm's length. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-ateyelengthsizeinmm) | &nbsp; | Calculates the apparent size in mm of an object at arm's length, based on its actual size and distance. |
| [Get-AudioDeviceNames](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-audiodevicenames) | &nbsp; | Retrieves the names of available audio devices for microphone or desktop audio capture. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-buoyantforcebydisplacedvolumeanddensity) | &nbsp; | Calculates buoyant force. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-centripetalaccelerationbyvelocityandradius) | &nbsp; | Calculates centripetal acceleration. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-defaultweblanguage) | &nbsp; | Gets the default web language key based on the system's current language settings. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-dopplerfrequencyshiftbysourcespeedandobserverspeed) | &nbsp; | Calculates Doppler shifted frequency. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-dragforcebyvelocitydensityareaandcoefficient) | &nbsp; | Calculates drag force. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-escapevelocitybymassandradius) | &nbsp; | Calculates escape velocity. |
| [Get-FreeFallDistance](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-freefalldistance) | &nbsp; | Calculates the distance fallen during free fall for a given time duration. |
| [Get-FreeFallHeight](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-freefallheight) | &nbsp; | Calculates the height fallen during free fall for a given time duration. |
| [Get-FreeFallTime](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-freefalltime) | &nbsp; | Calculates the time required for an object to fall a given height during free fall. |
| [Get-GenXDevCmdlet](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-genxdevcmdlet) | gcmds | Retrieves and lists all GenXdev cmdlets and their details. |
| [Get-ImageGeolocation](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-imagegeolocation) | &nbsp; | Extracts geolocation data from an image file. |
| [Get-ImageMetadata](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-imagemetadata) | &nbsp; | &nbsp; |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-impactvelocitybyheightandgravity) | &nbsp; | Calculates impact velocity from height. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-kineticenergybymassandvelocity) | &nbsp; | Calculates kinetic energy. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-lighttraveltimebydistance) | &nbsp; | Calculates time for light to travel a distance. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-magnificationbyobjectdistanceandimagedistance) | &nbsp; | Calculates magnification for a lens. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-momentumbymassandvelocity) | &nbsp; | Calculates linear momentum. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-orbitalvelocitybyradiusandmass) | &nbsp; | Calculates orbital velocity. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-potentialenergybymassheightandgravity) | &nbsp; | Calculates gravitational potential energy. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-projectilerangebyinitialspeedandangle) | &nbsp; | Calculates the range of a projectile. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-refractionanglebyincidentangleandindices) | &nbsp; | Calculates refraction angle using Snell's law. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-resonantfrequencybylengthandspeed) | &nbsp; | Calculates resonant frequency for a closed pipe. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-soundtraveldistancebytime) | &nbsp; | Calculates the distance sound travels in a given time. |
| [Get-SpeechToText](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-speechtotext) | &nbsp; | Converts audio files to text using OpenAI's Whisper speech recognition model. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-terminalvelocitybymassgravitydensityandarea) | &nbsp; | Calculates terminal velocity. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-timeofflightbyinitialvelocityandangle) | &nbsp; | Calculates the time of flight for a projectile. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-wavespeedbyfrequencyandwavelength) | &nbsp; | Calculates wave speed. |
| [Get-WebLanguageDictionary](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#get-weblanguagedictionary) | &nbsp; | Returns a reversed dictionary for all languages supported by Google Search |
| [Import-GenXdevModules](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#import-genxdevmodules) | reloadgenxdev | Imports all GenXdev PowerShell modules into the global scope. |
| [Initialize-SearchPaths](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#initialize-searchpaths) | &nbsp; | Initializes and configures system search paths for package management. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#invoke-oneachgenxdevmodule) | foreach-genxdev-module-do | Executes a script block on each GenXdev module in the workspace. |
| [Out-Serial](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#out-serial) | &nbsp; | Sends a string to a serial port |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#receive-realtimespeechtotext) | &nbsp; | Converts real-time audio input to text using Whisper AI model. |
| [Remove-JSONComments](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#remove-jsoncomments) | &nbsp; | Removes comments from JSON content. |
| [resetdefaultmonitor](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#resetdefaultmonitor) | &nbsp; | &nbsp; |
| [SecondScreen](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#secondscreen) | &nbsp; | Sets default second-monitor configuration. |
| [Show-GenXDevCmdlet](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#show-genxdevcmdlet) | cmds | Displays GenXdev PowerShell modules with their cmdlets and aliases. |
| [Show-Verb](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#show-verb) | showverbs | Shows a short alphabetical list of all PowerShell verbs. |
| [SideBySide](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#sidebyside) | &nbsp; | Sets default side-by-side configuration. |
| [Test-UnattendedMode](https://github.com/genXdev/GenXdev.Helpers/tree/main?tab=readme-ov-file#test-unattendedmode) | &nbsp; | Detects if PowerShell is running in unattended/automated mode |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Helpers/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Media

**A Windows PowerShell module that helps with converting media files like pictures and video files**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [EnsureYtdlp](https://github.com/genXdev/GenXdev.Media/tree/main?tab=readme-ov-file#ensureytdlp) | &nbsp; | Ensures yt-dlp is installed and available in the default WSL image. |
| [Invoke-YTDlpSaveVideo](https://github.com/genXdev/GenXdev.Media/tree/main?tab=readme-ov-file#invoke-ytdlpsavevideo) | savevideo | &nbsp; |
| [StabilizeVideo](https://github.com/genXdev/GenXdev.Media/tree/main?tab=readme-ov-file#stabilizevideo) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Media/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Media.ffmpeg

**A Windows PowerShell module that helps with converting media files like pictures and video files**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [EnsureYtdlp](https://github.com/genXdev/GenXdev.Media/tree/main?tab=readme-ov-file#ensureytdlp) | &nbsp; | Ensures yt-dlp is installed and available in the default WSL image. |
| [Invoke-YTDlpSaveVideo](https://github.com/genXdev/GenXdev.Media/tree/main?tab=readme-ov-file#invoke-ytdlpsavevideo) | savevideo | &nbsp; |
| [StabilizeVideo](https://github.com/genXdev/GenXdev.Media/tree/main?tab=readme-ov-file#stabilizevideo) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Media/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Media.ytdlp

**A Windows PowerShell module that helps with converting media files like pictures and video files**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [EnsureYtdlp](https://github.com/genXdev/GenXdev.Media/tree/main?tab=readme-ov-file#ensureytdlp) | &nbsp; | Ensures yt-dlp is installed and available in the default WSL image. |
| [Invoke-YTDlpSaveVideo](https://github.com/genXdev/GenXdev.Media/tree/main?tab=readme-ov-file#invoke-ytdlpsavevideo) | savevideo | &nbsp; |
| [StabilizeVideo](https://github.com/genXdev/GenXdev.Media/tree/main?tab=readme-ov-file#stabilizevideo) | &nbsp; | &nbsp; |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Media/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Queries

**A Windows PowerShell module for finding resources and information on the internet**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Clear-YoutubeWatched](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#clear-youtubewatched) | &nbsp; | Clears the YouTube watch history from the browser's local storage. |
| [ConvertTo-Uris](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#convertto-uris) | &nbsp; | Parses strings for any valid URI. |
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#copy-pdfsfromgooglequery) | &nbsp; | Downloads PDF files found through Google search results. |
| [Get-GoogleSearchResultUrls](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-googlesearchresulturls) | qlinksget | Performs a google search and returns the links |
| [Get-NextAffirmation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-nextaffirmation) | WhatAboutIt | Returns a random affirmation text from affirmations.dev API. |
| [Get-WikipediaSummary](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-wikipediasummary) | wikitxt | Retrieves a summary of a topic from Wikipedia. |
| [Invoke-WebbrowserTabPollingScript](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#invoke-webbrowsertabpollingscript) | &nbsp; | &nbsp; |
| [Open-AllGoogleLinks](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allgooglelinks) | qlinks | Performs an infinite auto opening google search. |
| [Open-AllPossibleQueries](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allpossiblequeries) | qq | &nbsp; |
| [Open-AllYoutubeVideos](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allyoutubevideos) | qvideos, qyt | Opens and controls YouTube videos in a browser window with keyboard shortcuts. |
| [Open-BingCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingcopilotquery) | aibc | &nbsp; |
| [Open-BingQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingquery) | bq | Opens a Bing search query in a web browser. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-builtwithsiteinfo) | &nbsp; | Opens BuiltWith website queries in a web browser. |
| [Open-ChatGPTQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-chatgptquery) | aicgpt, askchatgpt | &nbsp; |
| [Open-CloudLLMChat](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-cloudllmchat) | ask | Opens a cloud LLM chat interface for AI queries. |
| [Open-DeepSearchQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-deepsearchquery) | aideepseek, askdeepsearch | &nbsp; |
| [Open-GameOfLife](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-gameoflife) | conway, gameoflife | &nbsp; |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-genxdevappcatalog) | appcatalog | Opens the GenXdev progressive webapps catalog in a web browser. |
| [Open-GithubCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubcopilotquery) | aigc, askghcopilot | &nbsp; |
| [Open-GithubQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubquery) | qgh, qgithub | &nbsp; |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlegeminiquery) | aigg, askgemini | &nbsp; |
| [Open-GoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlequery) | &nbsp; | &nbsp; |
| [Open-GoogleSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlesiteinfo) | &nbsp; | Opens Google site information queries in a web browser. |
| [Open-GrokipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-grokipediaquery) | wiki | &nbsp; |
| [Open-IMDBQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-imdbquery) | imdb | Opens an IMDB search query in a web browser. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-instantstreetviewquery) | isv | &nbsp; |
| [Open-MovieQuote](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-moviequote) | moviequote | &nbsp; |
| [Open-SearchEngine](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-searchengine) | q | Opens a search query in the specified search engine using a web browser. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-simularwebsiteinfo) | simularsite | &nbsp; |
| [Open-StackOverflowQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-stackoverflowquery) | qso | &nbsp; |
| [Open-Timeline](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-timeline) | timeline | &nbsp; |
| [Open-ViralSimulation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-viralsimulation) | viral | &nbsp; |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-waybackmachinesiteinfo) | wayback | Opens WaybackMachine site information in a web browser. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-websiteandperformquery) | owaq | &nbsp; |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-whoishostsiteinfo) | whois | &nbsp; |
| [Open-WikipediaNLQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipedianlquery) | wikinl | &nbsp; |
| [Open-WikipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipediaquery) | wikipedia | &nbsp; |
| [Open-WolframAlphaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wolframalphaquery) | qalpha | &nbsp; |
| [Open-XGrokQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-xgrokquery) | aixg, askxgrok | &nbsp; |
| [Open-Yab](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yab) | yab | Opens the YAB game in a web browser with configurable settings. |
| [Open-YabAIBattle](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yabaibattle) | yabbattle | &nbsp; |
| [Open-YoutubeQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-youtubequery) | youtube | Opens YouTube search queries in a web browser. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Queries/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Queries.AI

**A Windows PowerShell module for finding resources and information on the internet**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Clear-YoutubeWatched](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#clear-youtubewatched) | &nbsp; | Clears the YouTube watch history from the browser's local storage. |
| [ConvertTo-Uris](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#convertto-uris) | &nbsp; | Parses strings for any valid URI. |
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#copy-pdfsfromgooglequery) | &nbsp; | Downloads PDF files found through Google search results. |
| [Get-GoogleSearchResultUrls](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-googlesearchresulturls) | qlinksget | Performs a google search and returns the links |
| [Get-NextAffirmation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-nextaffirmation) | WhatAboutIt | Returns a random affirmation text from affirmations.dev API. |
| [Get-WikipediaSummary](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-wikipediasummary) | wikitxt | Retrieves a summary of a topic from Wikipedia. |
| [Invoke-WebbrowserTabPollingScript](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#invoke-webbrowsertabpollingscript) | &nbsp; | &nbsp; |
| [Open-AllGoogleLinks](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allgooglelinks) | qlinks | Performs an infinite auto opening google search. |
| [Open-AllPossibleQueries](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allpossiblequeries) | qq | &nbsp; |
| [Open-AllYoutubeVideos](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allyoutubevideos) | qvideos, qyt | Opens and controls YouTube videos in a browser window with keyboard shortcuts. |
| [Open-BingCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingcopilotquery) | aibc | &nbsp; |
| [Open-BingQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingquery) | bq | Opens a Bing search query in a web browser. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-builtwithsiteinfo) | &nbsp; | Opens BuiltWith website queries in a web browser. |
| [Open-ChatGPTQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-chatgptquery) | aicgpt, askchatgpt | &nbsp; |
| [Open-CloudLLMChat](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-cloudllmchat) | ask | Opens a cloud LLM chat interface for AI queries. |
| [Open-DeepSearchQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-deepsearchquery) | aideepseek, askdeepsearch | &nbsp; |
| [Open-GameOfLife](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-gameoflife) | conway, gameoflife | &nbsp; |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-genxdevappcatalog) | appcatalog | Opens the GenXdev progressive webapps catalog in a web browser. |
| [Open-GithubCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubcopilotquery) | aigc, askghcopilot | &nbsp; |
| [Open-GithubQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubquery) | qgh, qgithub | &nbsp; |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlegeminiquery) | aigg, askgemini | &nbsp; |
| [Open-GoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlequery) | &nbsp; | &nbsp; |
| [Open-GoogleSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlesiteinfo) | &nbsp; | Opens Google site information queries in a web browser. |
| [Open-GrokipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-grokipediaquery) | wiki | &nbsp; |
| [Open-IMDBQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-imdbquery) | imdb | Opens an IMDB search query in a web browser. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-instantstreetviewquery) | isv | &nbsp; |
| [Open-MovieQuote](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-moviequote) | moviequote | &nbsp; |
| [Open-SearchEngine](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-searchengine) | q | Opens a search query in the specified search engine using a web browser. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-simularwebsiteinfo) | simularsite | &nbsp; |
| [Open-StackOverflowQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-stackoverflowquery) | qso | &nbsp; |
| [Open-Timeline](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-timeline) | timeline | &nbsp; |
| [Open-ViralSimulation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-viralsimulation) | viral | &nbsp; |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-waybackmachinesiteinfo) | wayback | Opens WaybackMachine site information in a web browser. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-websiteandperformquery) | owaq | &nbsp; |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-whoishostsiteinfo) | whois | &nbsp; |
| [Open-WikipediaNLQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipedianlquery) | wikinl | &nbsp; |
| [Open-WikipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipediaquery) | wikipedia | &nbsp; |
| [Open-WolframAlphaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wolframalphaquery) | qalpha | &nbsp; |
| [Open-XGrokQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-xgrokquery) | aixg, askxgrok | &nbsp; |
| [Open-Yab](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yab) | yab | Opens the YAB game in a web browser with configurable settings. |
| [Open-YabAIBattle](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yabaibattle) | yabbattle | &nbsp; |
| [Open-YoutubeQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-youtubequery) | youtube | Opens YouTube search queries in a web browser. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Queries/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Queries.Text

**A Windows PowerShell module for finding resources and information on the internet**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Clear-YoutubeWatched](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#clear-youtubewatched) | &nbsp; | Clears the YouTube watch history from the browser's local storage. |
| [ConvertTo-Uris](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#convertto-uris) | &nbsp; | Parses strings for any valid URI. |
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#copy-pdfsfromgooglequery) | &nbsp; | Downloads PDF files found through Google search results. |
| [Get-GoogleSearchResultUrls](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-googlesearchresulturls) | qlinksget | Performs a google search and returns the links |
| [Get-NextAffirmation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-nextaffirmation) | WhatAboutIt | Returns a random affirmation text from affirmations.dev API. |
| [Get-WikipediaSummary](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-wikipediasummary) | wikitxt | Retrieves a summary of a topic from Wikipedia. |
| [Invoke-WebbrowserTabPollingScript](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#invoke-webbrowsertabpollingscript) | &nbsp; | &nbsp; |
| [Open-AllGoogleLinks](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allgooglelinks) | qlinks | Performs an infinite auto opening google search. |
| [Open-AllPossibleQueries](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allpossiblequeries) | qq | &nbsp; |
| [Open-AllYoutubeVideos](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allyoutubevideos) | qvideos, qyt | Opens and controls YouTube videos in a browser window with keyboard shortcuts. |
| [Open-BingCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingcopilotquery) | aibc | &nbsp; |
| [Open-BingQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingquery) | bq | Opens a Bing search query in a web browser. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-builtwithsiteinfo) | &nbsp; | Opens BuiltWith website queries in a web browser. |
| [Open-ChatGPTQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-chatgptquery) | aicgpt, askchatgpt | &nbsp; |
| [Open-CloudLLMChat](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-cloudllmchat) | ask | Opens a cloud LLM chat interface for AI queries. |
| [Open-DeepSearchQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-deepsearchquery) | aideepseek, askdeepsearch | &nbsp; |
| [Open-GameOfLife](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-gameoflife) | conway, gameoflife | &nbsp; |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-genxdevappcatalog) | appcatalog | Opens the GenXdev progressive webapps catalog in a web browser. |
| [Open-GithubCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubcopilotquery) | aigc, askghcopilot | &nbsp; |
| [Open-GithubQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubquery) | qgh, qgithub | &nbsp; |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlegeminiquery) | aigg, askgemini | &nbsp; |
| [Open-GoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlequery) | &nbsp; | &nbsp; |
| [Open-GoogleSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlesiteinfo) | &nbsp; | Opens Google site information queries in a web browser. |
| [Open-GrokipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-grokipediaquery) | wiki | &nbsp; |
| [Open-IMDBQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-imdbquery) | imdb | Opens an IMDB search query in a web browser. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-instantstreetviewquery) | isv | &nbsp; |
| [Open-MovieQuote](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-moviequote) | moviequote | &nbsp; |
| [Open-SearchEngine](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-searchengine) | q | Opens a search query in the specified search engine using a web browser. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-simularwebsiteinfo) | simularsite | &nbsp; |
| [Open-StackOverflowQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-stackoverflowquery) | qso | &nbsp; |
| [Open-Timeline](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-timeline) | timeline | &nbsp; |
| [Open-ViralSimulation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-viralsimulation) | viral | &nbsp; |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-waybackmachinesiteinfo) | wayback | Opens WaybackMachine site information in a web browser. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-websiteandperformquery) | owaq | &nbsp; |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-whoishostsiteinfo) | whois | &nbsp; |
| [Open-WikipediaNLQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipedianlquery) | wikinl | &nbsp; |
| [Open-WikipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipediaquery) | wikipedia | &nbsp; |
| [Open-WolframAlphaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wolframalphaquery) | qalpha | &nbsp; |
| [Open-XGrokQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-xgrokquery) | aixg, askxgrok | &nbsp; |
| [Open-Yab](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yab) | yab | Opens the YAB game in a web browser with configurable settings. |
| [Open-YabAIBattle](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yabaibattle) | yabbattle | &nbsp; |
| [Open-YoutubeQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-youtubequery) | youtube | Opens YouTube search queries in a web browser. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Queries/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Queries.Webbrowser

**A Windows PowerShell module for finding resources and information on the internet**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Clear-YoutubeWatched](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#clear-youtubewatched) | &nbsp; | Clears the YouTube watch history from the browser's local storage. |
| [ConvertTo-Uris](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#convertto-uris) | &nbsp; | Parses strings for any valid URI. |
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#copy-pdfsfromgooglequery) | &nbsp; | Downloads PDF files found through Google search results. |
| [Get-GoogleSearchResultUrls](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-googlesearchresulturls) | qlinksget | Performs a google search and returns the links |
| [Get-NextAffirmation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-nextaffirmation) | WhatAboutIt | Returns a random affirmation text from affirmations.dev API. |
| [Get-WikipediaSummary](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-wikipediasummary) | wikitxt | Retrieves a summary of a topic from Wikipedia. |
| [Invoke-WebbrowserTabPollingScript](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#invoke-webbrowsertabpollingscript) | &nbsp; | &nbsp; |
| [Open-AllGoogleLinks](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allgooglelinks) | qlinks | Performs an infinite auto opening google search. |
| [Open-AllPossibleQueries](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allpossiblequeries) | qq | &nbsp; |
| [Open-AllYoutubeVideos](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allyoutubevideos) | qvideos, qyt | Opens and controls YouTube videos in a browser window with keyboard shortcuts. |
| [Open-BingCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingcopilotquery) | aibc | &nbsp; |
| [Open-BingQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingquery) | bq | Opens a Bing search query in a web browser. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-builtwithsiteinfo) | &nbsp; | Opens BuiltWith website queries in a web browser. |
| [Open-ChatGPTQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-chatgptquery) | aicgpt, askchatgpt | &nbsp; |
| [Open-CloudLLMChat](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-cloudllmchat) | ask | Opens a cloud LLM chat interface for AI queries. |
| [Open-DeepSearchQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-deepsearchquery) | aideepseek, askdeepsearch | &nbsp; |
| [Open-GameOfLife](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-gameoflife) | conway, gameoflife | &nbsp; |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-genxdevappcatalog) | appcatalog | Opens the GenXdev progressive webapps catalog in a web browser. |
| [Open-GithubCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubcopilotquery) | aigc, askghcopilot | &nbsp; |
| [Open-GithubQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubquery) | qgh, qgithub | &nbsp; |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlegeminiquery) | aigg, askgemini | &nbsp; |
| [Open-GoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlequery) | &nbsp; | &nbsp; |
| [Open-GoogleSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlesiteinfo) | &nbsp; | Opens Google site information queries in a web browser. |
| [Open-GrokipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-grokipediaquery) | wiki | &nbsp; |
| [Open-IMDBQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-imdbquery) | imdb | Opens an IMDB search query in a web browser. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-instantstreetviewquery) | isv | &nbsp; |
| [Open-MovieQuote](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-moviequote) | moviequote | &nbsp; |
| [Open-SearchEngine](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-searchengine) | q | Opens a search query in the specified search engine using a web browser. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-simularwebsiteinfo) | simularsite | &nbsp; |
| [Open-StackOverflowQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-stackoverflowquery) | qso | &nbsp; |
| [Open-Timeline](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-timeline) | timeline | &nbsp; |
| [Open-ViralSimulation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-viralsimulation) | viral | &nbsp; |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-waybackmachinesiteinfo) | wayback | Opens WaybackMachine site information in a web browser. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-websiteandperformquery) | owaq | &nbsp; |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-whoishostsiteinfo) | whois | &nbsp; |
| [Open-WikipediaNLQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipedianlquery) | wikinl | &nbsp; |
| [Open-WikipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipediaquery) | wikipedia | &nbsp; |
| [Open-WolframAlphaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wolframalphaquery) | qalpha | &nbsp; |
| [Open-XGrokQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-xgrokquery) | aixg, askxgrok | &nbsp; |
| [Open-Yab](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yab) | yab | Opens the YAB game in a web browser with configurable settings. |
| [Open-YabAIBattle](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yabaibattle) | yabbattle | &nbsp; |
| [Open-YoutubeQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-youtubequery) | youtube | Opens YouTube search queries in a web browser. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Queries/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Queries.Websites

**A Windows PowerShell module for finding resources and information on the internet**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Clear-YoutubeWatched](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#clear-youtubewatched) | &nbsp; | Clears the YouTube watch history from the browser's local storage. |
| [ConvertTo-Uris](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#convertto-uris) | &nbsp; | Parses strings for any valid URI. |
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#copy-pdfsfromgooglequery) | &nbsp; | Downloads PDF files found through Google search results. |
| [Get-GoogleSearchResultUrls](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-googlesearchresulturls) | qlinksget | Performs a google search and returns the links |
| [Get-NextAffirmation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-nextaffirmation) | WhatAboutIt | Returns a random affirmation text from affirmations.dev API. |
| [Get-WikipediaSummary](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#get-wikipediasummary) | wikitxt | Retrieves a summary of a topic from Wikipedia. |
| [Invoke-WebbrowserTabPollingScript](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#invoke-webbrowsertabpollingscript) | &nbsp; | &nbsp; |
| [Open-AllGoogleLinks](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allgooglelinks) | qlinks | Performs an infinite auto opening google search. |
| [Open-AllPossibleQueries](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allpossiblequeries) | qq | &nbsp; |
| [Open-AllYoutubeVideos](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-allyoutubevideos) | qvideos, qyt | Opens and controls YouTube videos in a browser window with keyboard shortcuts. |
| [Open-BingCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingcopilotquery) | aibc | &nbsp; |
| [Open-BingQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-bingquery) | bq | Opens a Bing search query in a web browser. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-builtwithsiteinfo) | &nbsp; | Opens BuiltWith website queries in a web browser. |
| [Open-ChatGPTQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-chatgptquery) | aicgpt, askchatgpt | &nbsp; |
| [Open-CloudLLMChat](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-cloudllmchat) | ask | Opens a cloud LLM chat interface for AI queries. |
| [Open-DeepSearchQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-deepsearchquery) | aideepseek, askdeepsearch | &nbsp; |
| [Open-GameOfLife](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-gameoflife) | conway, gameoflife | &nbsp; |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-genxdevappcatalog) | appcatalog | Opens the GenXdev progressive webapps catalog in a web browser. |
| [Open-GithubCopilotQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubcopilotquery) | aigc, askghcopilot | &nbsp; |
| [Open-GithubQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-githubquery) | qgh, qgithub | &nbsp; |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlegeminiquery) | aigg, askgemini | &nbsp; |
| [Open-GoogleQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlequery) | &nbsp; | &nbsp; |
| [Open-GoogleSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-googlesiteinfo) | &nbsp; | Opens Google site information queries in a web browser. |
| [Open-GrokipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-grokipediaquery) | wiki | &nbsp; |
| [Open-IMDBQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-imdbquery) | imdb | Opens an IMDB search query in a web browser. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-instantstreetviewquery) | isv | &nbsp; |
| [Open-MovieQuote](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-moviequote) | moviequote | &nbsp; |
| [Open-SearchEngine](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-searchengine) | q | Opens a search query in the specified search engine using a web browser. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-simularwebsiteinfo) | simularsite | &nbsp; |
| [Open-StackOverflowQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-stackoverflowquery) | qso | &nbsp; |
| [Open-Timeline](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-timeline) | timeline | &nbsp; |
| [Open-ViralSimulation](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-viralsimulation) | viral | &nbsp; |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-waybackmachinesiteinfo) | wayback | Opens WaybackMachine site information in a web browser. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-websiteandperformquery) | owaq | &nbsp; |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-whoishostsiteinfo) | whois | &nbsp; |
| [Open-WikipediaNLQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipedianlquery) | wikinl | &nbsp; |
| [Open-WikipediaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wikipediaquery) | wikipedia | &nbsp; |
| [Open-WolframAlphaQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-wolframalphaquery) | qalpha | &nbsp; |
| [Open-XGrokQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-xgrokquery) | aixg, askxgrok | &nbsp; |
| [Open-Yab](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yab) | yab | Opens the YAB game in a web browser with configurable settings. |
| [Open-YabAIBattle](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-yabaibattle) | yabbattle | &nbsp; |
| [Open-YoutubeQuery](https://github.com/genXdev/GenXdev.Queries/tree/main?tab=readme-ov-file#open-youtubequery) | youtube | Opens YouTube search queries in a web browser. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Queries/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Webbrowser

**A Windows PowerShell module for webbrowser operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Approve-FirefoxDebugging](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#approve-firefoxdebugging) | &nbsp; | Configures Firefox's debugging and standalone app mode features. |
| [Clear-WebbrowserTabSiteApplicationData](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#clear-webbrowsertabsiteapplicationdata) | clearsitedata | Clears all browser storage data for the current tab in Edge or Chrome. |
| [Close-Webbrowser](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#close-webbrowser) | wbc | &nbsp; |
| [Close-WebbrowserTab](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#close-webbrowsertab) | &nbsp; | Closes the currently selected webbrowser tab. |
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#connect-playwrightviadebuggingport) | &nbsp; | &nbsp; |
| [Export-BrowserBookmarks](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#export-browserbookmarks) | &nbsp; | Exports browser bookmarks to a JSON file. |
| [Find-BrowserBookmark](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#find-browserbookmark) | bookmarks | Finds bookmarks from one or more web browsers. |
| [Get-BrowserBookmark](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-browserbookmark) | gbm | &nbsp; |
| [Get-ChromeRemoteDebuggingPort](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-chromeremotedebuggingport) | &nbsp; | Returns the configured remote debugging port for Google Chrome. |
| [Get-ChromiumRemoteDebuggingPort](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-chromiumremotedebuggingport) | &nbsp; | Returns the remote debugging port for the system's default Chromium browser. |
| [Get-ChromiumSessionReference](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-chromiumsessionreference) | &nbsp; | Gets a serializable reference to the current browser tab session. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-defaultwebbrowser) | &nbsp; | Returns the configured default web browser for the current user. |
| [Get-EdgeRemoteDebuggingPort](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-edgeremotedebuggingport) | &nbsp; | Returns the configured remote debugging port for Microsoft Edge browser. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-playwrightprofiledirectory) | &nbsp; | Gets the Playwright browser profile directory for persistent sessions. |
| [Get-Webbrowser](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-webbrowser) | &nbsp; | Returns a collection of installed modern web browsers. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-webbrowsertabdomnodes) | wl | Queries and manipulates DOM nodes in the active browser tab using CSS selectors. |
| [Import-BrowserBookmarks](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#import-browserbookmarks) | &nbsp; | &nbsp; |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#import-genxdevbookmarkletmenu) | &nbsp; | Imports GenXdev JavaScript bookmarklets into browser bookmark collections. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#invoke-webbrowserevaluation) | et, Eval | &nbsp; |
| [Open-BrowserBookmarks](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#open-browserbookmarks) | sites | &nbsp; |
| [Open-Webbrowser](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#open-webbrowser) | wb | &nbsp; |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#open-webbrowsersidebyside) | wbn | &nbsp; |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#resume-webbrowsertabvideo) | wbvideoplay | Resumes video playback in a YouTube browser tab. |
| [Select-WebbrowserTab](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#select-webbrowsertab) | st | Selects a browser tab for automation in Chrome or Edge. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#set-browservideofullscreen) | fsvideo | Sets the first video element on the current webpage to fullscreen mode by manipulating its CSS properties and DOM position. |
| [Set-RemoteDebuggerPortInBrowserShortcuts](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#set-remotedebuggerportinbrowsershortcuts) | &nbsp; | Updates browser shortcuts to enable remote debugging ports. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#set-webbrowsertablocation) | lt, Nav | Navigates the current webbrowser tab to a specified URL. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#show-websiteinallbrowsers) | &nbsp; | &nbsp; |
| [Stop-WebbrowserVideos](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#stop-webbrowservideos) | ssst, wbsst, wbvideostop | Pauses video playback in all active browser sessions. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#unprotect-webbrowsertab) | &nbsp; | Takes control of a selected web browser tab for interactive manipulation. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Webbrowser/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Webbrowser.Playwright

**A Windows PowerShell module for webbrowser.playwright operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Approve-FirefoxDebugging](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#approve-firefoxdebugging) | &nbsp; | Configures Firefox's debugging and standalone app mode features. |
| [Clear-WebbrowserTabSiteApplicationData](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#clear-webbrowsertabsiteapplicationdata) | clearsitedata | Clears all browser storage data for the current tab in Edge or Chrome. |
| [Close-Webbrowser](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#close-webbrowser) | wbc | &nbsp; |
| [Close-WebbrowserTab](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#close-webbrowsertab) | &nbsp; | Closes the currently selected webbrowser tab. |
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#connect-playwrightviadebuggingport) | &nbsp; | &nbsp; |
| [Export-BrowserBookmarks](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#export-browserbookmarks) | &nbsp; | Exports browser bookmarks to a JSON file. |
| [Find-BrowserBookmark](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#find-browserbookmark) | bookmarks | Finds bookmarks from one or more web browsers. |
| [Get-BrowserBookmark](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-browserbookmark) | gbm | &nbsp; |
| [Get-ChromeRemoteDebuggingPort](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-chromeremotedebuggingport) | &nbsp; | Returns the configured remote debugging port for Google Chrome. |
| [Get-ChromiumRemoteDebuggingPort](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-chromiumremotedebuggingport) | &nbsp; | Returns the remote debugging port for the system's default Chromium browser. |
| [Get-ChromiumSessionReference](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-chromiumsessionreference) | &nbsp; | Gets a serializable reference to the current browser tab session. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-defaultwebbrowser) | &nbsp; | Returns the configured default web browser for the current user. |
| [Get-EdgeRemoteDebuggingPort](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-edgeremotedebuggingport) | &nbsp; | Returns the configured remote debugging port for Microsoft Edge browser. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-playwrightprofiledirectory) | &nbsp; | Gets the Playwright browser profile directory for persistent sessions. |
| [Get-Webbrowser](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-webbrowser) | &nbsp; | Returns a collection of installed modern web browsers. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#get-webbrowsertabdomnodes) | wl | Queries and manipulates DOM nodes in the active browser tab using CSS selectors. |
| [Import-BrowserBookmarks](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#import-browserbookmarks) | &nbsp; | &nbsp; |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#import-genxdevbookmarkletmenu) | &nbsp; | Imports GenXdev JavaScript bookmarklets into browser bookmark collections. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#invoke-webbrowserevaluation) | et, Eval | &nbsp; |
| [Open-BrowserBookmarks](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#open-browserbookmarks) | sites | &nbsp; |
| [Open-Webbrowser](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#open-webbrowser) | wb | &nbsp; |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#open-webbrowsersidebyside) | wbn | &nbsp; |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#resume-webbrowsertabvideo) | wbvideoplay | Resumes video playback in a YouTube browser tab. |
| [Select-WebbrowserTab](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#select-webbrowsertab) | st | Selects a browser tab for automation in Chrome or Edge. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#set-browservideofullscreen) | fsvideo | Sets the first video element on the current webpage to fullscreen mode by manipulating its CSS properties and DOM position. |
| [Set-RemoteDebuggerPortInBrowserShortcuts](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#set-remotedebuggerportinbrowsershortcuts) | &nbsp; | Updates browser shortcuts to enable remote debugging ports. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#set-webbrowsertablocation) | lt, Nav | Navigates the current webbrowser tab to a specified URL. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#show-websiteinallbrowsers) | &nbsp; | &nbsp; |
| [Stop-WebbrowserVideos](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#stop-webbrowservideos) | ssst, wbsst, wbvideostop | Pauses video playback in all active browser sessions. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/GenXdev.Webbrowser/tree/main?tab=readme-ov-file#unprotect-webbrowsertab) | &nbsp; | Takes control of a selected web browser tab for interactive manipulation. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Webbrowser/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Windows

**A Windows PowerShell module for windows operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-WireGuardPeer](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#add-wireguardpeer) | &nbsp; | Adds a new WireGuard VPN peer (client) configuration to the server. |
| [CurrentUserHasElevatedRights](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#currentuserhaselevatedrights) | &nbsp; | &nbsp; |
| [EnsureDockerDesktop](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#ensuredockerdesktop) | &nbsp; | &nbsp; |
| [EnsurePSTools](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#ensurepstools) | &nbsp; | &nbsp; |
| [EnsureWireGuard](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#ensurewireguard) | &nbsp; | &nbsp; |
| [Get-ActiveUser](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-activeuser) | gusers | Retrieves a list of unique usernames from currently active system processes. |
| [Get-ChildProcesses](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-childprocesses) | &nbsp; | Retrieves all processes that are descendants of the current PowerShell process. |
| [Get-ClipboardFiles](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-clipboardfiles) | gcbf, getclipfiles | Gets files from the Windows clipboard that were set for file operations like copy/paste. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-currentfocusedprocess) | &nbsp; | Retrieves the process object of the window that currently has keyboard focus. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-desktopscalingfactor) | &nbsp; | Retrieves the Windows display scaling factor (DPI setting) for a specified monitor. |
| [Get-ForegroundWindow](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-foregroundwindow) | &nbsp; | Gets the handle of the currently active foreground window. |
| [Get-KnownFolderPath](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-knownfolderpath) | folder | Gets the path of a Windows known folder using the Windows Shell32 API. |
| [Get-MonitorCount](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-monitorcount) | &nbsp; | Gets the total number of display monitors connected to the system. |
| [Get-MpCmdRunPath](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-mpcmdrunpath) | &nbsp; | Gets the path to the Windows Defender MpCmdRun.exe executable. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-openedfilehandleprocesses) | &nbsp; | Retrieves processes that have open file handles to specified files. |
| [Get-PowershellMainWindow](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-powershellmainwindow) | &nbsp; | Returns a window helper object for the PowerShell terminal's main window. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-powershellmainwindowprocess) | &nbsp; | Returns the process object for the window hosting the PowerShell terminal. |
| [Get-Window](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-window) | &nbsp; | Gets window information for specified processes or window handles. |
| [Get-WindowPosition](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-windowposition) | gwp | &nbsp; |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-wireguardpeerqrcode) | &nbsp; | Generates a QR code for a WireGuard VPN peer configuration. |
| [Get-WireGuardPeers](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-wireguardpeers) | &nbsp; | &nbsp; |
| [Get-WireGuardStatus](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-wireguardstatus) | &nbsp; | &nbsp; |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#initialize-scheduledtaskscripts) | &nbsp; | Creates scheduled tasks that run PowerShell scripts at specified intervals. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#invoke-windowsupdate) | updatewindows | &nbsp; |
| [Pop-Window](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#pop-window) | popw | &nbsp; |
| [Push-Window](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#push-window) | pushw | &nbsp; |
| [Remove-WireGuardPeer](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#remove-wireguardpeer) | &nbsp; | &nbsp; |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#reset-wireguardconfiguration) | &nbsp; | &nbsp; |
| [Save-DesktopScreenShot](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#save-desktopscreenshot) | &nbsp; | Captures a screenshot of the specified monitor and saves it to the specified path. |
| [Send-Key](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#send-key) | invokekeys, sendkeys | &nbsp; |
| [Set-ClipboardFiles](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-clipboardfiles) | scbf, setclipfiles | Sets files to the Windows clipboard for file operations like copy/paste. |
| [Set-ForegroundWindow](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-foregroundwindow) | &nbsp; | Brings the specified window to the foreground and makes it the active window. |
| [Set-KnownFolderPath](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-knownfolderpath) | &nbsp; | Modifies the physical path of a Windows known folder. |
| [Set-TaskbarAlignment](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-taskbaralignment) | &nbsp; | Configures Windows 11+ taskbar alignment between center and left positions. |
| [Set-WindowPosition](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-windowposition) | wp | &nbsp; |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-windowpositionforsecondary) | wps | Positions a window on the secondary monitor with specified layout options. |
| [Set-WindowsWallpaper](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-windowswallpaper) | &nbsp; | Sets a random wallpaper from a specified directory. |
| [Start-ProcessWithPriority](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#start-processwithpriority) | nice | Starts a process with a specified priority level. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#test-pathusingwindowsdefender) | HasNoVirus, virusscan | Scans files or directories for malware using Windows Defender. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Windows/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

## GenXdev.Windows.WireGuard

**A Windows PowerShell module for windows.wireguard operations**

# Cmdlet Index

| Command | Aliases | Description |
| :--- | :--- | :--- |
| [Add-WireGuardPeer](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#add-wireguardpeer) | &nbsp; | Adds a new WireGuard VPN peer (client) configuration to the server. |
| [CurrentUserHasElevatedRights](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#currentuserhaselevatedrights) | &nbsp; | &nbsp; |
| [EnsureDockerDesktop](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#ensuredockerdesktop) | &nbsp; | &nbsp; |
| [EnsurePSTools](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#ensurepstools) | &nbsp; | &nbsp; |
| [EnsureWireGuard](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#ensurewireguard) | &nbsp; | &nbsp; |
| [Get-ActiveUser](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-activeuser) | gusers | Retrieves a list of unique usernames from currently active system processes. |
| [Get-ChildProcesses](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-childprocesses) | &nbsp; | Retrieves all processes that are descendants of the current PowerShell process. |
| [Get-ClipboardFiles](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-clipboardfiles) | gcbf, getclipfiles | Gets files from the Windows clipboard that were set for file operations like copy/paste. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-currentfocusedprocess) | &nbsp; | Retrieves the process object of the window that currently has keyboard focus. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-desktopscalingfactor) | &nbsp; | Retrieves the Windows display scaling factor (DPI setting) for a specified monitor. |
| [Get-ForegroundWindow](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-foregroundwindow) | &nbsp; | Gets the handle of the currently active foreground window. |
| [Get-KnownFolderPath](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-knownfolderpath) | folder | Gets the path of a Windows known folder using the Windows Shell32 API. |
| [Get-MonitorCount](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-monitorcount) | &nbsp; | Gets the total number of display monitors connected to the system. |
| [Get-MpCmdRunPath](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-mpcmdrunpath) | &nbsp; | Gets the path to the Windows Defender MpCmdRun.exe executable. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-openedfilehandleprocesses) | &nbsp; | Retrieves processes that have open file handles to specified files. |
| [Get-PowershellMainWindow](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-powershellmainwindow) | &nbsp; | Returns a window helper object for the PowerShell terminal's main window. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-powershellmainwindowprocess) | &nbsp; | Returns the process object for the window hosting the PowerShell terminal. |
| [Get-Window](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-window) | &nbsp; | Gets window information for specified processes or window handles. |
| [Get-WindowPosition](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-windowposition) | gwp | &nbsp; |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-wireguardpeerqrcode) | &nbsp; | Generates a QR code for a WireGuard VPN peer configuration. |
| [Get-WireGuardPeers](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-wireguardpeers) | &nbsp; | &nbsp; |
| [Get-WireGuardStatus](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#get-wireguardstatus) | &nbsp; | &nbsp; |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#initialize-scheduledtaskscripts) | &nbsp; | Creates scheduled tasks that run PowerShell scripts at specified intervals. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#invoke-windowsupdate) | updatewindows | &nbsp; |
| [Pop-Window](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#pop-window) | popw | &nbsp; |
| [Push-Window](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#push-window) | pushw | &nbsp; |
| [Remove-WireGuardPeer](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#remove-wireguardpeer) | &nbsp; | &nbsp; |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#reset-wireguardconfiguration) | &nbsp; | &nbsp; |
| [Save-DesktopScreenShot](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#save-desktopscreenshot) | &nbsp; | Captures a screenshot of the specified monitor and saves it to the specified path. |
| [Send-Key](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#send-key) | invokekeys, sendkeys | &nbsp; |
| [Set-ClipboardFiles](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-clipboardfiles) | scbf, setclipfiles | Sets files to the Windows clipboard for file operations like copy/paste. |
| [Set-ForegroundWindow](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-foregroundwindow) | &nbsp; | Brings the specified window to the foreground and makes it the active window. |
| [Set-KnownFolderPath](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-knownfolderpath) | &nbsp; | Modifies the physical path of a Windows known folder. |
| [Set-TaskbarAlignment](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-taskbaralignment) | &nbsp; | Configures Windows 11+ taskbar alignment between center and left positions. |
| [Set-WindowPosition](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-windowposition) | wp | &nbsp; |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-windowpositionforsecondary) | wps | Positions a window on the secondary monitor with specified layout options. |
| [Set-WindowsWallpaper](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#set-windowswallpaper) | &nbsp; | Sets a random wallpaper from a specified directory. |
| [Start-ProcessWithPriority](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#start-processwithpriority) | nice | Starts a process with a specified priority level. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/GenXdev.Windows/tree/main?tab=readme-ov-file#test-pathusingwindowsdefender) | HasNoVirus, virusscan | Scans files or directories for malware using Windows Defender. |

📖 [Full Documentation](https://github.com/genXdev/GenXdev.Windows/blob/main/README.md) | ↑ [Back to Module Overview](#module-overview)

<br/><hr/><br/>

