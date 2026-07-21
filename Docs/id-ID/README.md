# GenXdev — Cmdlet Reference

Auto-generated cmdlet reference documentation. Last updated: 2026-07-21.

## GenXdev

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXDevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXDevCmdlet.md) | gcmds | Mengambil dan mendaftar semua cmdlet GenXdev beserta detailnya. |
| [Show-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Show-GenXdevCmdlet.md) | cmds | Menampilkan modul GenXdev PowerShell beserta cmdlet dan aliasnya. |

---

## GenXdev.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AILLMSettings.md) | &nbsp; | Mendapatkan pengaturan LLM untuk operasi AI di GenXdev.AI. |
| [Get-SpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SpeechToText.md) | &nbsp; | Mengonversi file audio menjadi teks menggunakan model pengenalan suara Whisper dari OpenAI. |
| [Get-TextTranslation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-TextTranslation.md) | translate | Menerjemahkan teks ke bahasa lain menggunakan AI. |
| [Get-VectorSimilarity](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-VectorSimilarity.md) | &nbsp; | Menghitung kesamaan kosinus antara dua vektor. |
| [Invoke-WinMerge](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-WinMerge.md) | &nbsp; | Meluncurkan WinMerge untuk membandingkan dua file secara berdampingan. |
| [Merge-TranslationCache](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Merge-TranslationCache.md) | &nbsp; | Mengelola cache terjemahan persisten dengan penulisan disk secara batch per bahasa. |
| [New-GenXdevMCPToken](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-GenXdevMCPToken.md) | &nbsp; | &nbsp; |
| [New-LLMAudioChat](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-LLMAudioChat.md) | llmaudiochat | Membuat sesi obrolan audio interaktif dengan model LLM. |
| [New-LLMTextChat](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-LLMTextChat.md) | llmchat | Memulai sesi obrolan teks interaktif dengan kemampuan AI. |
| [Receive-RealTimeSpeechToText](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Receive-RealTimeSpeechToText.md) | &nbsp; | Mengonversi input audio real-time menjadi teks menggunakan model Whisper AI. |
| [Set-AILLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-AILLMSettings.md) | &nbsp; | Mengatur pengaturan LLM untuk operasi AI di GenXdev.AI. |
| [Set-GenXdevCommandNotFoundAction](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevCommandNotFoundAction.md) | &nbsp; | @{response=Menyiapkan penanganan perintah tidak ditemukan kustom dengan bantuan AI opsional.} |
| [Start-GenXdevMCPServer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-GenXdevMCPServer.md) | &nbsp; | &nbsp; |
| [Test-DeepLinkImageFile](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-DeepLinkImageFile.md) | &nbsp; | Menguji apakah jalur file yang ditentukan adalah file gambar yang valid dengan format yang didukung. |

---

## GenXdev.AI.DeepStack

| Command | Aliases | Description |
|:---|:---|:---|
| [Compare-ImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Compare-ImageFaces.md) | comparefaces | Membandingkan wajah dalam dua gambar berbeda dan mengembalikan kemiripannya menggunakan DeepStack. |
| [Get-ImageDetectedFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedFaces.md) | &nbsp; | Mengenali wajah dalam gambar yang diunggah dengan membandingkan ke wajah yang dikenal menggunakan DeepStack. |
| [Get-ImageDetectedObjects](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedObjects.md) | &nbsp; | Mendeteksi dan mengklasifikasikan objek dalam gambar yang diunggah menggunakan DeepStack. |
| [Get-ImageDetectedScenes](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageDetectedScenes.md) | &nbsp; | Mengklasifikasikan gambar ke dalam salah satu dari 365 kategori pemandangan menggunakan DeepStack. |
| [Get-RegisteredFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-RegisteredFaces.md) | &nbsp; | Mengambil daftar semua pengenal wajah yang terdaftar dari DeepStack. |
| [Invoke-ImageEnhancement](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageEnhancement.md) | enhanceimage | Meningkatkan kualitas gambar dengan memperbesarnya 4X sambil meningkatkan kualitas menggunakan DeepStack. |
| [Register-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Register-AllFaces.md) | UpdateFaces | Memperbarui semua profil pengenalan wajah dari file gambar di direktori faces. |
| [Register-Face](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Register-Face.md) | &nbsp; | Mendaftarkan wajah baru dengan API pengenalan wajah DeepStack. |
| [Unregister-AllFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unregister-AllFaces.md) | &nbsp; | Menghapus semua wajah yang terdaftar dari sistem pengenalan wajah DeepStack. |
| [Unregister-Face](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unregister-Face.md) | &nbsp; | Menghapus wajah yang terdaftar berdasarkan pengenalnya dari DeepStack. |

---

## GenXdev.AI.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-EmoticonsToText](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-EmoticonsToText.md) | emojify | Meningkatkan teks dengan menambahkan emotikon yang sesuai konteks menggunakan AI. |
| [ConvertFrom-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertFrom-CorporateSpeak.md) | uncorporatize | Mengubah bahasa korporat yang sopan dan profesional menjadi bahasa yang langsung dan jelas menggunakan AI. |
| [ConvertFrom-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertFrom-DiplomaticSpeak.md) | undiplomatize | Mengubah bahasa diplomatis atau taktis menjadi bahasa yang langsung, jelas, dan terus terang. |
| [ConvertTo-CorporateSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-CorporateSpeak.md) | corporatize | Mengonversi teks langsung atau blak-blakan menjadi bahasa korporat yang sopan dan profesional menggunakan AI. |
| [ConvertTo-DiplomaticSpeak](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-DiplomaticSpeak.md) | diplomatize | Mengonversi teks langsung atau blak-blakan menjadi bahasa diplomatis yang sopan dan bijaksana. |
| [Find-Image](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-Image.md) | findimages, li | Mencari file gambar dan metadata di direktori yang ditentukan dengan kemampuan pemfilteran dan tampilan galeri berbasis browser opsional. |
| [Get-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AIKnownFacesRootpath.md) | &nbsp; | Mendapatkan direktori yang dikonfigurasi untuk file gambar wajah yang digunakan dalam operasi GenXdev.AI. |
| [Get-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AIMetaLanguage.md) | getimgmetalang | Mendapatkan bahasa default yang dikonfigurasi untuk operasi metadata gambar. |
| [Get-Fallacy](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Fallacy.md) | dispicetext | Menganalisis teks untuk mengidentifikasi kesalahan logika menggunakan deteksi bertenaga AI. |
| [Get-ScriptExecutionErrorFixPrompt](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ScriptExecutionErrorFixPrompt.md) | getfixprompt | Menangkap pesan kesalahan dari berbagai aliran dan menggunakan LLM untuk menyarankan perbaikan. |
| [Get-SimularMovieTitles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SimularMovieTitles.md) | &nbsp; | Menemukan judul film serupa berdasarkan properti umum. |
| [Invoke-AIPowershellCommand](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-AIPowershellCommand.md) | hint | Menghasilkan dan menjalankan perintah PowerShell menggunakan bantuan AI. |
| [Invoke-ImageFacesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageFacesUpdate.md) | imagepeopledetection | Memperbarui metadata pengenalan wajah untuk file gambar di direktori yang ditentukan. |
| [Invoke-ImageKeywordUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageKeywordUpdate.md) | imagekeywordgeneration | Memperbarui metadata gambar dengan deskripsi dan kata kunci yang dihasilkan AI. |
| [Invoke-ImageMetadataUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageMetadataUpdate.md) | imagepropdetection | Memperbarui metadata EXIF untuk gambar dalam direktori. |
| [Invoke-ImageObjectsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageObjectsUpdate.md) | imageobjectdetection | Memperbarui metadata deteksi objek untuk file gambar dalam direktori yang ditentukan. |
| [Invoke-ImageScenesUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-ImageScenesUpdate.md) | imagescenedetection | Memperbarui metadata klasifikasi pemandangan untuk file gambar di direktori yang ditentukan. |
| [Invoke-LLMBooleanEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-LLMBooleanEvaluation.md) | equalstrue | Mengevaluasi suatu pernyataan menggunakan AI untuk menentukan apakah itu benar atau salah. |
| [Invoke-LLMQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-LLMQuery.md) | qllm, llm | Mengirimkan kueri ke API penyelesaian obrolan Large Language Model yang kompatibel dengan OpenAI dan memproses respons. |
| [Invoke-LLMStringListEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-LLMStringListEvaluation.md) | getlist, getstring | Mengekstrak atau menghasilkan daftar string yang relevan dari teks input menggunakan analisis AI. |
| [Invoke-LLMTextTransformation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-LLMTextTransformation.md) | spellcheck | Mentransformasi teks menggunakan pemrosesan bertenaga AI. |
| [Invoke-QueryImageContent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-QueryImageContent.md) | &nbsp; | Menganalisis konten gambar menggunakan kemampuan visi AI |
| [Remove-ImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-ImageMetaData.md) | removeimagedata | Menghapus file metadata gambar dari direktori gambar. |
| [Save-FoundImageFaces](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Save-FoundImageFaces.md) | saveimagefaces | Menyimpan gambar wajah yang dipotong dari hasil pencarian gambar yang diindeks. |
| [Save-Transcriptions](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Save-Transcriptions.md) | &nbsp; | Menghasilkan file subtitle untuk file audio dan video menggunakan OpenAI Whisper. |
| [Set-AIKnownFacesRootpath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-AIKnownFacesRootpath.md) | &nbsp; | Mengatur direktori untuk file gambar wajah yang digunakan dalam operasi GenXdev.AI. |
| [Set-AIMetaLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-AIMetaLanguage.md) | &nbsp; | Menetapkan bahasa default dan secara opsional direktori gambar untuk operasi metadata gambar GenXdev.AI. |
| [Show-FoundImagesInBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Show-FoundImagesInBrowser.md) | showfoundimages | Menampilkan hasil pencarian gambar dalam galeri web tata letak masonry. |
| [Start-AudioTranscription](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-AudioTranscription.md) | transcribefile, transcribe | Transkripsi file audio, file video, atau perangkat perekaman ke teks |
| [Update-AllImageMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Update-AllImageMetaData.md) | updateallimages | Memperbarui kata kunci gambar, wajah, objek, dan pemandangan secara batch di beberapa direktori sistem. |

---

## GenXdev.Coding

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-FeatureLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-FeatureLineToREADME.md) | feature | Menambahkan baris fitur ke file README dengan stempel waktu. |
| [Add-IdeaLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-IdeaLineToREADME.md) | idea | Menambahkan item ide ke file README.md. |
| [Add-IssueLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-IssueLineToREADME.md) | issue | Menambahkan item masalah ke file README.md. |
| [Add-LineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-LineToREADME.md) | &nbsp; | Menambahkan baris ke file markdown README.md di bagian yang ditentukan. |
| [Add-ReleaseNoteLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-ReleaseNoteLineToREADME.md) | releasenote | Menambahkan baris Catatan Rilis ke file README dengan stempel waktu. |
| [Add-TodoLineToREADME](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-TodoLineToREADME.md) | todo | Menambahkan item todo ke file README.md. |
| [Get-Features](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Features.md) | features | Menampilkan fitur-fitur dari file README.md. |
| [Get-Ideas](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Ideas.md) | ideas | Menampilkan ide-ide dari file README.md. |
| [Get-Issues](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Issues.md) | issues | Menampilkan masalah dari file README.md. |
| [Get-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Refactor.md) | refactors | Mengambil definisi refaktor dari preferensi GenXdev berdasarkan pola nama. |
| [Get-RefactorReport](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-RefactorReport.md) | refactorreport | Menghasilkan laporan detail tentang operasi refactoring dan statusnya. |
| [Get-ReleaseNotes](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ReleaseNotes.md) | releasenotes | Menampilkan ReleaseNotes dari file README.md. |
| [Get-Todoos](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Todoos.md) | todoos | Menampilkan item tugas dari file README.md. |
| [New-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-Refactor.md) | newrefactor | Membuat set refactoring baru untuk tugas transformasi kode. |
| [Open-SourceFileInIde](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-SourceFileInIde.md) | editcode | Membuka file sumber di IDE yang disukai (Visual Studio Code atau Visual Studio). |
| [Publish-ReleaseNotesToManifest](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Publish-ReleaseNotesToManifest.md) | pubrelnotes | Menerbitkan catatan rilis yang belum selesai dari README.md ke manifes modul. |
| [Remove-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-Refactor.md) | &nbsp; | Menghapus set refaktor dari sistem preferensi GenXdev. |
| [Start-NextRefactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-NextRefactor.md) | nextrefactor | Melanjutkan atau memulai ulang sesi refaktorisasi kode. |
| [Update-Refactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Update-Refactor.md) | updaterefactor | Memperbarui dan mengelola set refactoring termasuk pemilihan file dan pemrosesan. |
| [VSCode](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/VSCode.md) | &nbsp; | Membuka satu atau beberapa file di Visual Studio Code. |

---

## GenXdev.Coding.Git

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GitChangedFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GitChangedFiles.md) | gitchanged | Mendapatkan daftar file yang berubah di repositori Git. |
| [New-GitCommit](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-GitCommit.md) | commit | Membuat dan mendorong commit git baru dengan semua perubahan. |
| [PermanentlyDeleteGitFolders](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/PermanentlyDeleteGitFolders.md) | &nbsp; | Menghapus secara permanen folder yang ditentukan dari semua cabang di repositori Git. |

---

## GenXdev.Coding.PowerShell.Modules

| Command | Aliases | Description |
|:---|:---|:---|
| [Assert-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-GenXdevCmdlet.md) | improvecmdlet | Meningkatkan dokumentasi dan implementasi cmdlet GenXdev melalui bantuan AI. |
| [Assert-GenXdevCmdletTests](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-GenXdevCmdletTests.md) | improvecmdlettests | Menegaskan dan meningkatkan pengujian unit dari cmdlet GenXdev yang ditentukan. |
| [Assert-GenXdevDependencyUsage](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-GenXdevDependencyUsage.md) | checkgenxdevdependencies | Memvalidasi penggunaan dependensi di seluruh modul GenXdev untuk memastikan hierarki modul yang tepat tetap terpelihara. |
| [Assert-GenXdevTest](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-GenXdevTest.md) | rungenxdevtests | Menjalankan pengujian unit untuk modul, sub-modul, atau cmdlet GenXdev dengan debugging cerdas dan resolusi kesalahan berbasis AI. |
| [Assert-ModuleDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-ModuleDefinition.md) | &nbsp; | Membantu dalam melakukan refaktorisasi file kode sumber PowerShell menggunakan bantuan AI. |
| [EnsureCopilotKeyboardShortCut](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureCopilotKeyboardShortCut.md) | &nbsp; | Mengonfigurasi pintasan keyboard GitHub Copilot Chat di Visual Studio Code. |
| [EnsureDefaultGenXdevRefactors](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureDefaultGenXdevRefactors.md) | &nbsp; | Memastikan definisi refactoring default GenXdev tersedia. |
| [Get-CmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CmdletMetaData.md) | &nbsp; | Mengambil metadata untuk cmdlet GenXdev yang ditentukan, secara opsional menerjemahkan teks bantuan ke bahasa lain. |
| [Get-GenXDevModule](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXDevModule.md) | &nbsp; | Mengambil semua modul GenXDev dari jalur yang ditentukan. |
| [Get-GenXDevModuleInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXDevModuleInfo.md) | &nbsp; | Mengambil informasi detail tentang modul PowerShell GenXdev. |
| [Get-GenXDevNewModulesInOrderOfDependency](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXDevNewModulesInOrderOfDependency.md) | &nbsp; | Mengambil modul GenXDev dalam urutan dependensi. |
| [Get-ModuleCmdletMetaData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ModuleCmdletMetaData.md) | &nbsp; | Mengambil metadata untuk semua cmdlet dalam modul PowerShell. |
| [Invoke-GenXdevPSFormatter](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-GenXdevPSFormatter.md) | &nbsp; | Memformat file skrip PowerShell menggunakan aturan pemformatan PSScriptAnalyzer. |
| [Invoke-GenXdevScriptAnalyzer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-GenXdevScriptAnalyzer.md) | &nbsp; | Menjalankan PowerShell Script Analyzer untuk menganalisis skrip PowerShell guna memastikan kepatuhan dan praktik terbaik. |
| [New-ModuleMarkdownHelp](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-ModuleMarkdownHelp.md) | &nbsp; | Menghasilkan file bantuan Markdown yang kaya untuk modul PowerShell apa pun. |
| [New-ModuleXmlHelp](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-ModuleXmlHelp.md) | &nbsp; | Menghasilkan file bantuan XML MAML untuk modul PowerShell apa pun. |
| [Search-GenXdevCmdlet](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Search-GenXdevCmdlet.md) | searchcmdlet | Mencari cmdlet GenXdev dan secara opsional membukanya di IDE untuk diedit. |
| [Show-GenXdevCmdLetInIde](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Show-GenXdevCmdLetInIde.md) | editcmdlet, cmdlet | Membuka cmdlet GenXdev yang ditentukan di Visual Studio Code. |

---

## GenXdev.Coding.Templating

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-ArrayTemplate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-ArrayTemplate.md) | FormatArray | Memformat kumpulan objek menggunakan string templat dengan placeholder properti, menghasilkan satu string yang diformat. |
| [Remove-DoubleEmptyLines](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-DoubleEmptyLines.md) | &nbsp; | Menghapus baris kosong ganda (berurutan) dari string kode, secara opsional memformat ulang output. |

---

## GenXdev.Console

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-IsSpeaking](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-IsSpeaking.md) | iss | Mengembalikan true jika mesin text-to-speech sedang berbicara. |
| [New-MicrosoftShellTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-MicrosoftShellTab.md) | x | Membuat tab Terminal Windows baru yang menjalankan PowerShell. |
| [Now](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Now.md) | &nbsp; | Mengembalikan tanggal dan waktu sistem saat ini sebagai objek DateTime. |
| [SayDate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayDate.md) | &nbsp; | Mengucapkan tanggal saat ini menggunakan sintesis teks-ke-ucapan. |
| [SayTime](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/SayTime.md) | &nbsp; | Mengumumkan waktu saat ini menggunakan teks-ke-ucapan. |
| [secondscreen](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/secondscreen.md) | &nbsp; | Mengatur konfigurasi monitor kedua default. |
| [sidebyside](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/sidebyside.md) | &nbsp; | Menetapkan konfigurasi standar side-by-side. |
| [Start-SnakeGame](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-SnakeGame.md) | snake | Memulai permainan Snake sederhana di konsol. |
| [Start-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-TextToSpeech.md) | say | Mengonversi teks menjadi ucapan menggunakan mesin TTS neural Microsoft Edge. |
| [Stop-TextToSpeech](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Stop-TextToSpeech.md) | sst | Segera menghentikan semua output text-to-speech yang sedang berlangsung. |
| [UtcNow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/UtcNow.md) | &nbsp; | Mendapatkan tanggal dan waktu UTC (Coordinated Universal Time) saat ini. |

---

## GenXdev.Data.KeyValueStore

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-KeyValueStoreNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-KeyValueStoreNames.md) | getstorenames | Mengambil nama-nama penyimpanan nilai-kunci yang tersedia. |
| [Get-KeyValueStorePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-KeyValueStorePath.md) | &nbsp; | Mendapatkan jalur file untuk penyimpanan nilai-kunci. |
| [Get-StoreKeys](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-StoreKeys.md) | getkeys | Mengambil semua nama kunci untuk penyimpanan nilai-kunci yang diberikan. |
| [Get-ValueByKeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ValueByKeyFromStore.md) | getvalue | Mengambil nilai dari penyimpanan kunci-nilai berbasis JSON. |
| [Initialize-KeyValueStores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Initialize-KeyValueStores.md) | &nbsp; | Menginisialisasi struktur direktori KeyValueStore untuk penyimpanan lokal dan OneDrive. |
| [Remove-KeyFromStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-KeyFromStore.md) | removekey | Menghapus kunci dari penyimpanan nilai-kunci. |
| [Remove-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-KeyValueStore.md) | &nbsp; | Menghapus penyimpanan pasangan kunci-nilai. |
| [Set-ValueByKeyInStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-ValueByKeyInStore.md) | setvalue | Mengelola pasangan kunci-nilai dalam penyimpanan berbasis file JSON. |
| [Sync-KeyValueStore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Sync-KeyValueStore.md) | &nbsp; | Menyinkronkan file JSON penyimpanan nilai kunci lokal dan OneDrive. |

---

## GenXdev.Data.Preferences

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreference.md) | getPreference | Mengambil nilai preferensi dari penyimpanan preferensi GenXdev. |
| [Get-GenXdevPreferenceNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreferenceNames.md) | getPreferenceNames | Mendapatkan semua nama preferensi dari penyimpanan sesi dan penyimpanan basis data. |
| [Get-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-GenXdevPreferencesDatabasePath.md) | &nbsp; | Mendapatkan jalur basis data yang dikonfigurasi untuk file data preferensi yang digunakan dalam operasi GenXdev.Data. |
| [Remove-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-GenXdevPreference.md) | removePreference | Menghapus nilai preferensi dari penyimpanan preferensi GenXdev. |
| [Set-GenXdevDefaultPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevDefaultPreference.md) | setPreferenceDefault | Menetapkan nilai preferensi default di penyimpanan preferensi GenXdev. |
| [Set-GenXdevPreference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreference.md) | setPreference | Mengatur nilai preferensi di penyimpanan preferensi GenXdev. |
| [Set-GenXdevPreferencesDatabasePath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-GenXdevPreferencesDatabasePath.md) | &nbsp; | Mengatur jalur database untuk preferensi yang digunakan dalam operasi GenXdev.Data. |

---

## GenXdev.Data.SQLite

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLiteSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteSchema.md) | &nbsp; | Mengambil informasi skema lengkap dari database SQLite. |
| [Get-SQLiteTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteTableColumnData.md) | &nbsp; | Mengambil data dari kolom tertentu dalam tabel database SQLite. |
| [Get-SQLiteTableData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteTableData.md) | &nbsp; | Mengambil data dari tabel database SQLite dengan pembatasan record opsional. |
| [Get-SQLiteTables](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteTables.md) | &nbsp; | Mengambil daftar nama tabel dari database SQLite. |
| [Get-SQLiteTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteTableSchema.md) | &nbsp; | Mengambil informasi skema untuk tabel SQLite yang ditentukan. |
| [Get-SQLiteTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteTransaction.md) | getsqltx, newsqltx | Membuat dan mengembalikan objek transaksi SQLite untuk operasi batch. |
| [Get-SQLiteViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteViewColumnData.md) | &nbsp; | Mengambil data kolom dari tampilan SQLite dengan pembatasan rekaman opsional. |
| [Get-SQLiteViewData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteViewData.md) | &nbsp; | Mengambil data dari tampilan database SQLite dengan pembatasan rekaman opsional. |
| [Get-SQLiteViews](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteViews.md) | &nbsp; | Mengambil daftar tampilan dari database SQLite. |
| [Get-SQLiteViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLiteViewSchema.md) | &nbsp; | Mengambil definisi skema SQL untuk sebuah tampilan SQLite. |
| [Invoke-SQLiteQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-SQLiteQuery.md) | &nbsp; | Menjalankan satu atau lebih kueri SQL terhadap basis data SQLite dengan dukungan transaksi. |
| [Invoke-SQLiteStudio](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-SQLiteStudio.md) | &nbsp; | Menjalankan kueri database SQLite dengan dukungan untuk parameter dan transaksi. |
| [New-SQLiteDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-SQLiteDatabase.md) | nsqldb | Membuat file database SQLite baru. |

---

## GenXdev.Data.SqlServer

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-SQLServerSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerSchema.md) | &nbsp; | Mengambil informasi skema lengkap dari database SQL Server. |
| [Get-SQLServerTableColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerTableColumnData.md) | &nbsp; | Mengambil data dari kolom tertentu dalam tabel database SQL. |
| [Get-SQLServerTableData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerTableData.md) | &nbsp; | Mengambil data dari tabel database SQL dengan pembatasan record opsional. |
| [Get-SQLServerTables](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerTables.md) | &nbsp; | Mengambil daftar nama tabel dari database SQL Server. |
| [Get-SQLServerTableSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerTableSchema.md) | &nbsp; | Mengambil informasi skema untuk tabel SQL Server yang ditentukan. |
| [Get-SQLServerTransaction](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerTransaction.md) | getsqltx, newsqltx | Membuat dan mengembalikan objek transaksi SQL Server untuk operasi batch. |
| [Get-SQLServerViewColumnData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerViewColumnData.md) | &nbsp; | Mengambil data kolom dari tampilan SQL dengan pembatasan record opsional. |
| [Get-SQLServerViewData](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerViewData.md) | &nbsp; | Mengambil data dari tampilan basis data SQL dengan pembatasan rekaman opsional. |
| [Get-SQLServerViews](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerViews.md) | &nbsp; | Mengambil daftar tampilan dari database SQL Server. |
| [Get-SQLServerViewSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SQLServerViewSchema.md) | &nbsp; | Mengambil definisi skema SQL untuk tampilan SQL Server. |
| [Invoke-SQLServerQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-SQLServerQuery.md) | &nbsp; | Menjalankan satu atau lebih kueri SQL terhadap database SQL Server dengan dukungan transaksi. |
| [Invoke-SSMS](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-SSMS.md) | ssms, sqlservermanagementstudio | Menjalankan kueri database SQL Server dengan dukungan untuk parameter dan transaksi. |
| [New-SQLServerDatabase](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/New-SQLServerDatabase.md) | nsqldb | Membuat database SQL Server baru. |

---

## GenXdev.FileSystem

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Copy-FilesToDateFolder.md) | &nbsp; | Menyalin file yang cocok dengan kriteria pencarian ke dalam subfolder berdasarkan tanggal. |
| [Expand-Path](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Expand-Path.md) | ep | Memperluas referensi file yang diberikan menjadi nama jalur lengkap. |
| [Find-DuplicateFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-DuplicateFiles.md) | fdf | Temukan file duplikat di beberapa direktori berdasarkan kriteria yang dapat dikonfigurasi. |
| [Find-Item](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-Item.md) | l | Mencari file dan direktori dengan opsi pemfilteran lanjutan. |
| [Invoke-Fasti](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-Fasti.md) | fasti | Mengekstrak file arsip di direktori saat ini ke folder mereka sendiri dan menghapusnya setelahnya. |
| [Move-FilesToDateFolder](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Move-FilesToDateFolder.md) | &nbsp; | Memindahkan file yang cocok dengan kriteria pencarian ke dalam subfolder berbasis tanggal. |
| [Move-ItemWithTracking](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Move-ItemWithTracking.md) | &nbsp; | Memindahkan file dan direktori sambil mempertahankan tautan sistem file dan referensi. |
| [Move-ToRecycleBin](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Move-ToRecycleBin.md) | &nbsp; | Memindahkan file dan direktori ke Tempat Sampah Windows dengan aman. |
| [ReadJsonWithRetry](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ReadJsonWithRetry.md) | &nbsp; | Membaca file JSON dengan logika percobaan ulang dan pembersihan kunci otomatis. |
| [Remove-AllItems](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-AllItems.md) | sdel | Menghapus semua konten dari direktori secara rekursif dengan penanganan kesalahan tingkat lanjut. |
| [Remove-ItemWithFallback](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-ItemWithFallback.md) | rmf | Menghapus file atau direktori dengan beberapa mekanisme fallback untuk penghapusan yang andal. |
| [Remove-OnReboot](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-OnReboot.md) | &nbsp; | Menandai file atau direktori untuk dihapus saat boot sistem berikutnya. |
| [Rename-InProject](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Rename-InProject.md) | rip | Melakukan penggantian teks di seluruh direktori proyek. |
| [Set-FoundLocation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-FoundLocation.md) | lcd | Menemukan file atau folder pertama yang cocok dan mengatur lokasi ke folder tersebut. |
| [Set-LocationParent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent.md) | .. | Mengubah lokasi saat ini ke direktori induk dan menampilkan daftar isinya. |
| [Set-LocationParent2](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent2.md) | ... | Menavigasi naik dua tingkat direktori dalam hierarki sistem file. |
| [Set-LocationParent3](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent3.md) | .... | Menavigasi naik tiga tingkat direktori dalam hierarki sistem file. |
| [Set-LocationParent4](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent4.md) | ..... | Naik empat tingkat direktori dalam hierarki sistem berkas. |
| [Set-LocationParent5](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-LocationParent5.md) | ...... | Navigasi naik lima tingkat direktori dalam hierarki sistem berkas. |
| [Start-RoboCopy](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-RoboCopy.md) | xc, rc | Menyediakan pembungkus PowerShell untuk utilitas Robust Copy (RoboCopy) milik Microsoft. |
| [Write-FileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-FileAtomic.md) | &nbsp; | Menulis byte ke file secara atomik untuk mencegah kerusakan. |
| [Write-JsonFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-JsonFileAtomic.md) | &nbsp; | Menulis objek sebagai JSON ke file secara atomis untuk mencegah korupsi. |
| [Write-TextFileAtomic](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Write-TextFileAtomic.md) | &nbsp; | Menulis teks ke file secara atomik untuk mencegah kerusakan. |

---

## GenXdev.Hardware

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-AudioDeviceNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AudioDeviceNames.md) | &nbsp; | Mengambil nama perangkat audio yang tersedia untuk menangkap mikrofon atau audio desktop. |
| [Get-CpuCore](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CpuCore.md) | &nbsp; | Menghitung dan mengembalikan jumlah total inti CPU logis dalam sistem. |
| [Get-HasCapableGpu](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-HasCapableGpu.md) | &nbsp; | Menentukan apakah GPU yang mendukung CUDA dengan memori yang memadai tersedia. |
| [Get-MonitorCount](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MonitorCount.md) | &nbsp; | Mendapatkan jumlah total monitor tampilan yang terhubung ke sistem. |
| [Get-NumberOfCpuCores](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-NumberOfCpuCores.md) | &nbsp; | Menghitung dan mengembalikan jumlah total inti CPU logis dalam sistem. |
| [Test-CpuAvx](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-CpuAvx.md) | &nbsp; | Menguji apakah CPU mendukung set instruksi AVX dan AVX2. |

---

## GenXdev.Helpers

| Command | Aliases | Description |
|:---|:---|:---|
| [alignScript](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/alignScript.md) | &nbsp; | Mengembalikan string (dengan perubahan indentasi) dari string blok skrip yang diberikan |
| [Approve-NewTextFileContent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Approve-NewTextFileContent.md) | &nbsp; | Perbandingan dan persetujuan konten file interaktif menggunakan WinMerge. |
| [Assert-RefactorFile](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Assert-RefactorFile.md) | &nbsp; | Menjalankan operasi refactoring pada file sumber menggunakan IDE dan template prompt AI yang ditentukan. |
| [Confirm-InstallationConsent](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Confirm-InstallationConsent.md) | &nbsp; | Mengonfirmasi persetujuan pengguna untuk menginstal perangkat lunak pihak ketiga, menggunakan preferensi untuk pilihan yang persisten. |
| [Convert-DotNetTypeToLLMType](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Convert-DotNetTypeToLLMType.md) | &nbsp; | Mengonversi nama tipe .NET menjadi nama tipe LLM (Language Model). |
| [ConvertTo-HashTable](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-HashTable.md) | &nbsp; | Mengonversi PSCustomObject ke HashTable secara rekursif. |
| [ConvertTo-LLMOpenAIApiFunctionDefinition](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-LLMOpenAIApiFunctionDefinition.md) | &nbsp; | Mengonversi fungsi PowerShell menjadi definisi fungsi API OpenAI LLM. |
| [Copy-IdenticalParamValues](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Copy-IdenticalParamValues.md) | &nbsp; | Menyalin nilai parameter dari parameter terikat ke hashtable baru berdasarkan parameter fungsi lain yang mungkin. |
| [EnsureGenXdev](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureGenXdev.md) | &nbsp; | Memastikan semua modul GenXdev dimuat dengan benar dengan menjalankan semua cmdlet Ensure*. |
| [EnsureNuGetAssembly](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureNuGetAssembly.md) | &nbsp; | Mengunduh dan memuat rakitan .NET dari paket NuGet berdasarkan kunci atau ID paket. |
| [GenerateMasonryLayoutHtml](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/GenerateMasonryLayoutHtml.md) | &nbsp; | Menghasilkan galeri HTML tata letak masonry responsif dari data gambar. |
| [Get-AIDefaultLLMSettings](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AIDefaultLLMSettings.md) | &nbsp; | Mendapatkan semua konfigurasi pengaturan LLM default yang tersedia untuk operasi AI di GenXdev.AI. |
| [Get-BCP47LanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-BCP47LanguageDictionary.md) | &nbsp; | Mengembalikan kamus semua tag bahasa BCP 47 yang terinstal dan nama tampilannya. |
| [Get-DefaultWebLanguage](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-DefaultWebLanguage.md) | &nbsp; | Mendapatkan kunci bahasa web default berdasarkan pengaturan bahasa sistem saat ini. |
| [Get-JsonExampleFromSchema](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-JsonExampleFromSchema.md) | &nbsp; | Menghasilkan contoh string JSON yang dapat dibaca manusia dari definisi Skema JSON. |
| [Get-LLMJsonOutput](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-LLMJsonOutput.md) | &nbsp; | # Get-Process ## SYNOPSIS Mendapatkan proses-proses yang berjalan di komputer lokal.  ## SYNTAX  ### Name (Default)  Get-Process [[-Name] <String[]>] [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]   ### Id  Get-Process -Id <Int32[]> [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]   ### InputObject (Pipeline)  Get-Process -InputObject <Process[]> [-ComputerName <String[]>] [-Module] [-FileVersionInfo] [<CommonParameters>]   ## DESCRIPTION Cmdlet `Get-Process` mengambil proses-proses yang berjalan di komputer lokal. Anda dapat menentukannya berdasarkan nama proses atau ID proses (PID), atau melalui objek proses yang dikirim melalui pipa.  Secara default, `Get-Process` mengembalikan informasi proses yang mencakup waktu prosesor, penggunaan memori, dan detail lainnya. Anda dapat menggunakan parameter `-Module` untuk mendapatkan informasi tentang modul yang dimuat oleh suatu proses, atau `-FileVersionInfo` untuk mendapatkan informasi versi file dari program yang berjalan.  ## PARAMETERS  ### -Name Menentukan satu atau lebih nama proses untuk diambil. Wildcard didukung. Parameter ini menerima input melalui pipa berdasarkan nama properti.  | Tipe: | String[] | | Posisi: | 0 | | Nilai default: | Tidak ada | | Menerima input pipa: | True (ByPropertyName) | | Menerima wildcard: | True |  ### -Id Menentukan satu atau lebih ID proses untuk diambil. Parameter ini wajib ketika digunakan.  | Tipe: | Int32[] | | Posisi: | Bernama | | Nilai default: | Tidak ada | | Menerima input pipa: | True (ByPropertyName) | | Menerima wildcard: | False |  ### -InputObject Menerima satu atau lebih objek proses. Masukkan variabel yang berisi objek, atau ketik perintah atau ekspresi yang mendapatkan objek.  | Tipe: | Process[] | | Posisi: | Bernama | | Nilai default: | Tidak ada | | Menerima input pipa: | True (ByValue) | | Menerima wildcard: | False |  ### -ComputerName Menentukan komputer jarak jauh. Nilai default adalah komputer lokal. Parameter ini hanya menerima satu nama komputer.  | Tipe: | String[] | | Posisi: | Bernama | | Nilai default: | Local computer | | Menerima input pipa: | True (ByPropertyName) | | Menerima wildcard: | False |  ### -Module Mendapatkan informasi tentang modul yang telah dimuat oleh proses.  | Tipe: | SwitchParameter | | Posisi: | Bernama | | Nilai default: | False | | Menerima input pipa: | False | | Menerima wildcard: | False |  ### -FileVersionInfo Mendapatkan informasi versi file untuk program yang berjalan di proses.  | Tipe: | SwitchParameter | | Posisi: | Bernama | | Nilai default: | False | | Menerima input pipa: | False | | Menerima wildcard: | False |  ### <CommonParameters> Cmdlet ini mendukung parameter umum: Verbose, Debug, ErrorAction, ErrorVariable, WarningAction, WarningVariable, OutBuffer, PipelineVariable, dan OutVariable. Untuk informasi lebih lanjut, lihat [about_CommonParameters](https://go.microsoft.com/fwlink/?LinkID=113216).  ## INPUTS  ### System.String[] Anda dapat mengirim nama proses ke `Get-Process` melalui pipa.  ### System.Int32[] Anda dapat mengirim ID proses ke `Get-Process` melalui pipa.  ### System.Diagnostics.Process[] Anda dapat mengirim objek proses ke `Get-Process` melalui pipa.  ## OUTPUTS  ### System.Diagnostics.Process Secara default, `Get-Process` mengembalikan objek `System.Diagnostics.Process`.  ### System.Diagnostics.ProcessModule Jika Anda menggunakan parameter `-Module`, outputnya adalah objek `ProcessModule`.  ### System.Diagnostics.FileVersionInfo Jika Anda menggunakan parameter `-FileVersionInfo`, outputnya adalah objek `FileVersionInfo`.  ## NOTES Cmdlet `Get-Process` mirip dengan perintah `ps` di sistem Unix atau Linux.  ## EXAMPLE 1 powershell Get-Process  Perintah ini mendapatkan daftar semua proses yang berjalan di komputer lokal.  ## EXAMPLE 2 powershell Get-Process -Name "notepad"  Perintah ini mendapatkan proses Notepad yang berjalan.  ## EXAMPLE 3 powershell Get-Process -Id 1234  Perintah ini mendapatkan proses dengan ID proses 1234.  ## EXAMPLE 4 powershell Get-Process -Name "n*" -Module  Perintah ini mendapatkan modul untuk semua proses yang namanya dimulai dengan "n".  ## EXAMPLE 5 powershell Get-Process -Name "notepad" -FileVersionInfo  Perintah ini mendapatkan informasi versi file untuk proses Notepad.  ## RELATED LINKS [Stop-Process](Stop-Process.md) [Wait-Process](Wait-Process.md) [Debug-Process](Debug-Process.md) [about_Processes](about_Processes.md) |
| [Get-PowerShellRoot](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PowerShellRoot.md) | &nbsp; | &nbsp; |
| [Get-WebLanguageDictionary](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WebLanguageDictionary.md) | &nbsp; | Mengembalikan kamus terbalik untuk semua bahasa yang didukung oleh Google Search. |
| [Import-GenXdevModules](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Import-GenXdevModules.md) | reloadgenxdev | Mengimpor semua modul PowerShell GenXdev ke dalam lingkup global. |
| [Initialize-SearchPaths](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Initialize-SearchPaths.md) | &nbsp; | Menginisialisasi dan mengonfigurasi jalur pencarian sistem untuk manajemen paket. |
| [Invoke-CommandFromToolCall](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-CommandFromToolCall.md) | &nbsp; | Menjalankan fungsi pemanggilan alat dengan validasi dan penyaringan parameter. |
| [Invoke-OnEachGenXdevModule](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-OnEachGenXdevModule.md) | foreach-genxdev-module-do | Menjalankan blok skrip pada setiap modul GenXdev di ruang kerja. |
| [Remove-JSONComments](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-JSONComments.md) | &nbsp; | Menghapus komentar dari konten JSON. |
| [resetdefaultmonitor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/resetdefaultmonitor.md) | &nbsp; | Mengembalikan konfigurasi monitor sekunder default. |
| [ResolveInputObjectFileNames](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ResolveInputObjectFileNames.md) | &nbsp; | Memperluas objek masukan menjadi nama file dan direktori, mendukung berbagai filter dan opsi keluaran. |
| [Show-Verb](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Show-Verb.md) | showverbs | Menampilkan daftar singkat alfabetis dari semua verba PowerShell. |
| [Test-RefactorLLMSelection](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-RefactorLLMSelection.md) | &nbsp; | Mengevaluasi file sumber untuk kelayakan refaktorisasi menggunakan analisis LLM. |
| [Test-UnattendedMode](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-UnattendedMode.md) | &nbsp; | Mendeteksi jika PowerShell berjalan dalam mode tanpa pengawasan/otomatis. |
| [WriteFileOutput](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/WriteFileOutput.md) | &nbsp; | Menampilkan informasi file dengan nama tampilan yang dapat diklik untuk pengalaman pengguna yang lebih baik. |

---

## GenXdev.Helpers.Physics

| Command | Aliases | Description |
|:---|:---|:---|
| [Convert-PhysicsUnit](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Convert-PhysicsUnit.md) | &nbsp; | Mengonversi nilai dari satu unit fisika ke unit lainnya dalam kategori yang sama. |
| [Get-ApparentSizeAtArmLength](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ApparentSizeAtArmLength.md) | &nbsp; | Menghitung ukuran tampak suatu objek pada jarak sepanjang lengan. |
| [Get-AtEyeLengthSizeInMM](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-AtEyeLengthSizeInMM.md) | &nbsp; | Menghitung ukuran semu dalam mm dari suatu objek sejauh panjang lengan. |
| [Get-BuoyantForceByDisplacedVolumeAndDensity](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-BuoyantForceByDisplacedVolumeAndDensity.md) | &nbsp; | Menghitung gaya apung. |
| [Get-CentripetalAccelerationByVelocityAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CentripetalAccelerationByVelocityAndRadius.md) | &nbsp; | Menghitung percepatan sentripetal. |
| [Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-DopplerFrequencyShiftBySourceSpeedAndObserverSpeed.md) | &nbsp; | Menghitung frekuensi yang tergeser Doppler. |
| [Get-DragForceByVelocityDensityAreaAndCoefficient](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-DragForceByVelocityDensityAreaAndCoefficient.md) | &nbsp; | Menghitung gaya hambat. |
| [Get-EscapeVelocityByMassAndRadius](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-EscapeVelocityByMassAndRadius.md) | &nbsp; | Menghitung kecepatan lepas. |
| [Get-FreeFallDistance](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-FreeFallDistance.md) | &nbsp; | Menghitung jarak jatuh bebas untuk durasi waktu yang diberikan. |
| [Get-FreeFallHeight](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-FreeFallHeight.md) | &nbsp; | Menghitung ketinggian jatuh bebas untuk durasi waktu tertentu. |
| [Get-FreeFallTime](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-FreeFallTime.md) | &nbsp; | Menghitung waktu yang diperlukan suatu benda untuk jatuh dari ketinggian tertentu selama jatuh bebas. |
| [Get-ImpactVelocityByHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImpactVelocityByHeightAndGravity.md) | &nbsp; | Menghitung kecepatan tumbukan dari ketinggian. |
| [Get-KineticEnergyByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-KineticEnergyByMassAndVelocity.md) | &nbsp; | Menghitung energi kinetik. |
| [Get-LightTravelTimeByDistance](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-LightTravelTimeByDistance.md) | &nbsp; | Menghitung waktu yang dibutuhkan cahaya untuk menempuh suatu jarak. |
| [Get-MagnificationByObjectDistanceAndImageDistance](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MagnificationByObjectDistanceAndImageDistance.md) | &nbsp; | Menghitung perbesaran untuk lensa. |
| [Get-MomentumByMassAndVelocity](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MomentumByMassAndVelocity.md) | &nbsp; | Menghitung momentum linear. |
| [Get-OrbitalVelocityByRadiusAndMass](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-OrbitalVelocityByRadiusAndMass.md) | &nbsp; | Menghitung kecepatan orbit. |
| [Get-PotentialEnergyByMassHeightAndGravity](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PotentialEnergyByMassHeightAndGravity.md) | &nbsp; | Menghitung energi potensial gravitasi. |
| [Get-ProjectileRangeByInitialSpeedAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ProjectileRangeByInitialSpeedAndAngle.md) | &nbsp; | Menghitung jangkauan proyektil. |
| [Get-RefractionAngleByIncidentAngleAndIndices](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-RefractionAngleByIncidentAngleAndIndices.md) | &nbsp; | Menghitung sudut refraksi menggunakan hukum Snell. |
| [Get-ResonantFrequencyByLengthAndSpeed](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ResonantFrequencyByLengthAndSpeed.md) | &nbsp; | Menghitung frekuensi resonansi untuk pipa tertutup. |
| [Get-SoundTravelDistanceByTime](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-SoundTravelDistanceByTime.md) | &nbsp; | Menghitung jarak yang ditempuh suara dalam waktu tertentu. |
| [Get-TerminalVelocityByMassGravityDensityAndArea](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-TerminalVelocityByMassGravityDensityAndArea.md) | &nbsp; | Menghitung kecepatan terminal. |
| [Get-TimeOfFlightByInitialVelocityAndAngle](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-TimeOfFlightByInitialVelocityAndAngle.md) | &nbsp; | Menghitung waktu terbang untuk proyektil. |
| [Get-WaveSpeedByFrequencyAndWavelength](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WaveSpeedByFrequencyAndWavelength.md) | &nbsp; | Menghitung kecepatan gelombang. |

---

## GenXdev.Media

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-ImageGeolocation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageGeolocation.md) | &nbsp; | Mengekstrak data geolokasi dari file gambar. |
| [Get-ImageMetadata](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ImageMetadata.md) | &nbsp; | Mengekstrak metadata komprehensif dari file gambar. |
| [Get-MediaFileCreationDate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MediaFileCreationDate.md) | &nbsp; | Mengekstrak tanggal pembuatan upaya terbaik untuk file media dan lainnya. |
| [Open-MediaFile](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-MediaFile.md) | vlcmedia, media, findmedia | Membuka dan memutar file media menggunakan pemutar VLC dengan opsi penyaringan dan konfigurasi lanjutan. |
| [Open-VlcMediaPlayer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-VlcMediaPlayer.md) | vlc | Meluncurkan dan mengontrol VLC Media Player dengan opsi konfigurasi yang ekstensif. |
| [Open-VlcMediaPlayerLyrics](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-VlcMediaPlayerLyrics.md) | vlclyrics | Membuka peramban web untuk mencari lirik dari media VLC yang sedang diputar. |
| [Set-VLCPlayerFocused](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-VLCPlayerFocused.md) | showvlc, vlcf, fvlc | Mengatur fokus ke jendela pemutar media VLC. |
| [StabilizeVideo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/StabilizeVideo.md) | &nbsp; | Menstabilkan file .mp4 terbaru atau yang ditentukan menggunakan FFmpeg + vid.stab (tanpa batas hitam). |
| [Start-VlcMediaPlayerNextInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-VlcMediaPlayerNextInPlaylist.md) | vlcnext | Memajukan VLC Media Player ke item berikutnya dalam daftar putar saat ini. |
| [Start-VlcMediaPlayerPreviousInPlaylist](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-VlcMediaPlayerPreviousInPlaylist.md) | vlcprev, vlcback | Berpindah ke item sebelumnya dalam daftar putar VLC Media Player. |
| [Switch-VlcMediaPlayerMute](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Switch-VlcMediaPlayerMute.md) | vlcmute, vlcunmute | Mengubah status bisu VLC Media Player. |
| [Switch-VLCMediaPlayerPaused](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Switch-VLCMediaPlayerPaused.md) | vlcpause, vlcplay | Mengalihkan status jeda/putar dari VLC Media Player. |
| [Switch-VlcMediaPlayerRepeat](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Switch-VlcMediaPlayerRepeat.md) | vlcrepeat | Mengaktifkan mode pengulangan di VLC Media Player. |

---

## GenXdev.Queries

| Command | Aliases | Description |
|:---|:---|:---|
| [ConvertTo-Uris](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/ConvertTo-Uris.md) | &nbsp; | Mem-parsing string untuk URI yang valid. |
| [Open-AllPossibleQueries](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-AllPossibleQueries.md) | qq | Membuka semua jenis kueri yang mungkin untuk istilah pencarian atau URL yang diberikan. |

---

## GenXdev.Queries.AI

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-BingCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-BingCopilotQuery.md) | aibc | Membuka kueri Bing CoPilot di peramban web |
| [Open-ChatGPTQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-ChatGPTQuery.md) | aicgpt, askchatgpt | Membuka kueri ChatGPT di peramban web. |
| [Open-CloudLLMChat](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-CloudLLMChat.md) | ask | Membuka antarmuka obrolan LLM cloud untuk kueri AI. |
| [Open-DeepSearchQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-DeepSearchQuery.md) | aideepseek, askdeepsearch | Membuka kueri DeepSeek di peramban web |
| [Open-GithubCopilotQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GithubCopilotQuery.md) | aigc, askghcopilot | Membuka kueri Github CoPilot di peramban web |
| [Open-GoogleGeminiQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GoogleGeminiQuery.md) | aigg, askgemini | Membuka kueri Google Gemini di peramban web |
| [Open-XGrokQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-XGrokQuery.md) | aixg, askxgrok | Membuka permintaan X Grok di peramban web |

---

## GenXdev.Queries.Text

| Command | Aliases | Description |
|:---|:---|:---|
| [Get-NextAffirmation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-NextAffirmation.md) | WhatAboutIt | Mengembalikan teks afirmasi acak dari API affirmations.dev. |
| [Get-WikipediaSummary](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WikipediaSummary.md) | wikitxt | Mengambil ringkasan topik dari Wikipedia. |

---

## GenXdev.Queries.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Copy-PDFsFromGoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Copy-PDFsFromGoogleQuery.md) | &nbsp; | Mengunduh file PDF yang ditemukan melalui hasil pencarian Google. |
| [Open-BingQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-BingQuery.md) | bq | Membuka kueri penelusuran Bing di peramban web. |
| [Open-BuiltWithSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-BuiltWithSiteInfo.md) | &nbsp; | Membuka kueri situs web BuiltWith di peramban web. |
| [Open-GithubQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GithubQuery.md) | qgithub, qgh | Membuka kueri pencarian repositori Github di peramban web atau menjalankan pencarian lanjutan terhadap GitHub REST API yang mendukung semua pengkualifikasi yang tersedia dan kategori pencarian (repositori, kode, isu, pengguna, komit, diskusi, topik, wiki). |
| [Open-GoogleQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GoogleQuery.md) | &nbsp; | Membuka kueri Google di browser web dengan pengaturan yang dapat dikonfigurasi dan opsi kustomisasi yang ekstensif. |
| [Open-GoogleSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GoogleSiteInfo.md) | &nbsp; | Membuka kueri informasi situs Google di peramban web. |
| [Open-GrokipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GrokipediaQuery.md) | wiki | Membuka kueri Grokipedia di peramban web. |
| [Open-IMDBQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-IMDBQuery.md) | imdb | Membuka kueri pencarian IMDB di peramban web. |
| [Open-InstantStreetViewQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-InstantStreetViewQuery.md) | isv | Membuka kueri InstantStreetView di peramban web. |
| [Open-MovieQuote](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-MovieQuote.md) | moviequote | Membuka video kutipan film di peramban web. |
| [Open-SearchEngine](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-SearchEngine.md) | q | Membuka kueri penelusuran di mesin pencari yang ditentukan menggunakan peramban web. |
| [Open-SimularWebSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-SimularWebSiteInfo.md) | simularsite | Membuka informasi website SimilarWeb untuk URL yang ditentukan di peramban web. |
| [Open-StackOverflowQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-StackOverflowQuery.md) | qso | Membuka kueri pencarian Stack Overflow di browser web. |
| [Open-WaybackMachineSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WaybackMachineSiteInfo.md) | wayback | Membuka informasi situs WaybackMachine di peramban web. |
| [Open-WebsiteAndPerformQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WebsiteAndPerformQuery.md) | owaq | Membuka halaman web di browser web dan melakukan satu atau lebih kueri. |
| [Open-WhoisHostSiteInfo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WhoisHostSiteInfo.md) | whois | Membuka kueri informasi host Whois di peramban web. |
| [Open-WikipediaNLQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WikipediaNLQuery.md) | wikinl | Membuka pencarian Wikipedia Belanda di peramban web. |
| [Open-WikipediaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WikipediaQuery.md) | wikipedia | Membuka kueri Wikipedia di peramban web. |
| [Open-WolframAlphaQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WolframAlphaQuery.md) | qalpha | Membuka kueri Wolfram Alpha di peramban web. |
| [Open-YoutubeQuery](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-YoutubeQuery.md) | youtube | Membuka kueri pencarian YouTube di peramban web. |

---

## GenXdev.Queries.Websites

| Command | Aliases | Description |
|:---|:---|:---|
| [Open-GameOfLife](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GameOfLife.md) | gameoflife, conway | Membuka simulasi Conway's Game of Life di peramban web. |
| [Open-GenXdevAppCatalog](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-GenXdevAppCatalog.md) | appcatalog | Membuka katalog aplikasi web progresif GenXdev di peramban web. |
| [Open-Timeline](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-Timeline.md) | timeline | Membuka garis waktu interaktif yang menampilkan waktu saat ini, tanggal, abad, dan milenium. |
| [Open-ViralSimulation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-ViralSimulation.md) | viral | Membuka permainan simulasi virus di peramban web dengan opsi konfigurasi yang ekstensif. |
| [Open-Yab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-Yab.md) | yab | Membuka game YAB di peramban web dengan pengaturan yang dapat dikonfigurasi. |
| [Open-YabAIBattle](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-YabAIBattle.md) | yabbattle | Membuka permainan YabAI Battle di peramban web. |

---

## GenXdev.Webbrowser

| Command | Aliases | Description |
|:---|:---|:---|
| [Close-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Close-Webbrowser.md) | wbc | Menutup satu atau lebih instance webbrowser secara selektif. |
| [Close-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Close-WebbrowserTab.md) | ct, CloseTab | Menutup tab peramban web yang sedang dipilih. |
| [Export-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Export-BrowserBookmarks.md) | &nbsp; | Mengekspor markah browser ke file JSON. |
| [Find-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Find-BrowserBookmark.md) | bookmarks | Menemukan bookmark dari satu atau lebih peramban web. |
| [Get-BrowserBookmark](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-BrowserBookmark.md) | gbm | Mengembalikan semua bookmark dari peramban web yang terinstal. |
| [Get-DefaultWebbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-DefaultWebbrowser.md) | &nbsp; | Mengembalikan peramban web default yang dikonfigurasi untuk pengguna saat ini. |
| [Get-PlaywrightSessionReference](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PlaywrightSessionReference.md) | &nbsp; | Mendapatkan referensi ke sesi browser Playwright saat ini. |
| [Get-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Webbrowser.md) | &nbsp; | Mengembalikan koleksi peramban web modern yang terinstal. |
| [Get-WebbrowserTabDomNodes](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WebbrowserTabDomNodes.md) | wl | Mengkueri dan memanipulasi simpul DOM di tab browser aktif menggunakan pemilih CSS. |
| [Import-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Import-BrowserBookmarks.md) | &nbsp; | Mengimpor bookmark dari berkas atau koleksi ke dalam peramban web. |
| [Import-GenXdevBookmarkletMenu](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Import-GenXdevBookmarkletMenu.md) | &nbsp; | Mengimpor bookmarklet JavaScript GenXdev ke dalam koleksi bookmark browser. |
| [Invoke-WebbrowserEvaluation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-WebbrowserEvaluation.md) | Eval, et | Menjalankan kode JavaScript di tab peramban web yang dipilih. |
| [Open-BrowserBookmarks](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-BrowserBookmarks.md) | sites | Membuka markah browser yang sesuai dengan kriteria pencarian yang ditentukan. |
| [Open-Webbrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-Webbrowser.md) | wb | Membuka URL di satu atau lebih jendela browser dengan penempatan dan gaya opsional. |
| [Open-WebbrowserSideBySide](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-WebbrowserSideBySide.md) | wbn | Meluncurkan jendela browser web baru dengan posisi tertentu. |
| [Select-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Select-WebbrowserTab.md) | st | Memilih tab browser dari browser yang dikelola oleh Playwright yang sedang berjalan. |
| [Set-BrowserVideoFullscreen](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-BrowserVideoFullscreen.md) | fsvideo | Memaksimalkan elemen video pertama yang ditemukan di tab browser saat ini. |
| [Set-WebbrowserTabLocation](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-WebbrowserTabLocation.md) | lt, Nav | Menavigasi tab browser web saat ini ke URL yang ditentukan. |
| [Show-WebsiteInAllBrowsers](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Show-WebsiteInAllBrowsers.md) | &nbsp; | Membuka URL di beberapa peramban secara bersamaan dalam tata letak mozaik. |

---

## GenXdev.Webbrowser.Playwright

| Command | Aliases | Description |
|:---|:---|:---|
| [Connect-PlaywrightViaDebuggingPort](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Connect-PlaywrightViaDebuggingPort.md) | &nbsp; | Menghubungkan ke instance browser yang ada melalui port debugging. |
| [Get-PlaywrightProfileDirectory](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PlaywrightProfileDirectory.md) | &nbsp; | Mendapatkan direktori profil browser Playwright untuk sesi persisten. |
| [Open-PlayWrightBrowser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Open-PlayWrightBrowser.md) | spb | Memulai browser yang dikelola oleh Playwright dengan profil pengguna yang persisten. |
| [Resume-WebbrowserTabVideo](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Resume-WebbrowserTabVideo.md) | wbvideoplay | Melanjutkan pemutaran video di tab browser YouTube. |
| [Stop-WebbrowserVideos](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Stop-WebbrowserVideos.md) | wbsst, ssst, wbvideostop | Menjeda pemutaran video di semua sesi browser yang aktif. |
| [Unprotect-WebbrowserTab](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Unprotect-WebbrowserTab.md) | wbctrl | Mengontrol tab browser web yang dipilih untuk manipulasi interaktif. |

---

## GenXdev.Windows

| Command | Aliases | Description |
|:---|:---|:---|
| [CurrentUserHasElevatedRights](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/CurrentUserHasElevatedRights.md) | &nbsp; | Memeriksa apakah pengguna saat ini memiliki hak yang ditinggikan. |
| [Enable-Screensaver](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Enable-Screensaver.md) | &nbsp; | Memulai screensaver Windows yang telah dikonfigurasi. |
| [Get-ActiveUser](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ActiveUser.md) | gusers | Mengambil daftar nama pengguna unik dari proses sistem yang sedang aktif. |
| [Get-ChildProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ChildProcesses.md) | &nbsp; | Mengambil semua proses yang merupakan turunan dari proses PowerShell saat ini. |
| [Get-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ClipboardFiles.md) | getclipfiles, gcbf | Mendapatkan file dari clipboard Windows yang diatur untuk operasi file seperti salin/tempel. |
| [Get-CurrentFocusedProcess](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-CurrentFocusedProcess.md) | &nbsp; | Mengambil objek proses dari jendela yang saat ini memiliki fokus keyboard. |
| [Get-DesktopScalingFactor](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-DesktopScalingFactor.md) | &nbsp; | Mengambil faktor penskalaan tampilan Windows (pengaturan DPI) untuk monitor yang ditentukan. |
| [Get-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-ForegroundWindow.md) | &nbsp; | Mendapatkan handle dari jendela latar depan yang sedang aktif. |
| [Get-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-KnownFolderPath.md) | folder | Mendapatkan jalur folder yang dikenal di Windows menggunakan API Shell32 Windows. |
| [Get-MpCmdRunPath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-MpCmdRunPath.md) | &nbsp; | Mendapatkan jalur ke executable MpCmdRun.exe milik Windows Defender. |
| [Get-OpenedFileHandleProcesses](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-OpenedFileHandleProcesses.md) | &nbsp; | Mengambil proses yang memiliki handle file terbuka ke file yang ditentukan. |
| [Get-PowershellMainWindow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PowershellMainWindow.md) | &nbsp; | Mengembalikan objek pembantu jendela untuk jendela utama terminal PowerShell. |
| [Get-PowershellMainWindowProcess](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-PowershellMainWindowProcess.md) | &nbsp; | Mengembalikan objek proses untuk jendela yang menampung terminal PowerShell. |
| [Get-Window](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-Window.md) | &nbsp; | Mendapatkan informasi jendela untuk proses atau handel jendela yang ditentukan. |
| [Get-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WindowPosition.md) | gwp | Mendapatkan informasi posisi dan status jendela. |
| [Initialize-ScheduledTaskScripts](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Initialize-ScheduledTaskScripts.md) | &nbsp; | Membuat tugas terjadwal yang menjalankan skrip PowerShell pada interval yang ditentukan. |
| [Invoke-WindowsUpdate](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Invoke-WindowsUpdate.md) | updatewindows | Memeriksa apakah Windows sudah diperbarui dan secara opsional menginstal pembaruan yang tersedia. |
| [Pop-Window](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Pop-Window.md) | popw | Menghapus pembantu jendela aktif terakhir dari tumpukan dengan modifikasi opsional. |
| [Push-Window](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Push-Window.md) | pushw | Mendorong jendela saat ini ke tumpukan jendela dengan modifikasi opsional. |
| [Save-DesktopScreenShot](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Save-DesktopScreenShot.md) | &nbsp; | Mengambil tangkapan layar dari monitor yang ditentukan dan menyimpannya ke jalur yang ditentukan. |
| [Send-Key](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Send-Key.md) | sendkeys, invokekeys | Mengirimkan simulasi penekanan tombol ke jendela atau proses. |
| [Send-WakeOnLan](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Send-WakeOnLan.md) | &nbsp; | Mengirimkan paket ajaib Wake-on-LAN untuk membangunkan komputer jarak jauh di jaringan. |
| [Set-ClipboardFiles](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-ClipboardFiles.md) | setclipfiles, scbf | Menyetel file ke clipboard Windows untuk operasi file seperti salin/tempel. |
| [Set-ForegroundWindow](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-ForegroundWindow.md) | &nbsp; | Membawa jendela yang ditentukan ke latar depan dan menjadikannya jendela aktif. |
| [Set-KnownFolderPath](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-KnownFolderPath.md) | &nbsp; | Memodifikasi jalur fisik dari folder yang dikenal di Windows. |
| [Set-MonitorPowerOff](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-MonitorPowerOff.md) | poweroff | Mematikan daya ke semua monitor yang terhubung. |
| [Set-MonitorPowerOn](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-MonitorPowerOn.md) | wakemonitor, monitoroff | Menyalakan daya monitor. |
| [Set-TaskbarAlignment](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-TaskbarAlignment.md) | &nbsp; | Mengonfigurasi perataan bilah tugas Windows 11+ antara posisi tengah dan kiri. |
| [Set-WindowPosition](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-WindowPosition.md) | wp | Memposisikan dan mengubah ukuran jendela ketika parameter posisi eksplisit diberikan. |
| [Set-WindowPositionForSecondary](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-WindowPositionForSecondary.md) | wps | Memposisikan jendela pada monitor sekunder dengan opsi tata letak yang ditentukan. |
| [Set-WindowsWallpaper](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Set-WindowsWallpaper.md) | &nbsp; | Menetapkan wallpaper acak dari direktori yang ditentukan. |
| [Start-ProcessWithPriority](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Start-ProcessWithPriority.md) | nice | Memulai proses dengan tingkat prioritas yang ditentukan. |
| [Test-PathUsingWindowsDefender](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Test-PathUsingWindowsDefender.md) | virusscan, HasNoVirus | Memindai file atau direktori untuk malware menggunakan Windows Defender. |

---

## GenXdev.Windows.WireGuard

| Command | Aliases | Description |
|:---|:---|:---|
| [Add-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Add-WireGuardPeer.md) | &nbsp; | Menambahkan konfigurasi peer (klien) VPN WireGuard baru ke server. |
| [EnsureWireGuard](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/EnsureWireGuard.md) | &nbsp; | Memastikan layanan VPN WireGuard terinstal dan berjalan melalui kontainer Docker. |
| [Get-WireGuardPeerQRCode](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WireGuardPeerQRCode.md) | &nbsp; | Menghasilkan kode QR untuk konfigurasi peer VPN WireGuard. |
| [Get-WireGuardPeers](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WireGuardPeers.md) | &nbsp; | Mendapatkan informasi tentang semua rekan WireGuard VPN yang dikonfigurasi di sistem. |
| [Get-WireGuardStatus](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Get-WireGuardStatus.md) | &nbsp; | Mendapatkan informasi status terperinci tentang server VPN WireGuard. |
| [Remove-WireGuardPeer](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Remove-WireGuardPeer.md) | &nbsp; | Menghapus konfigurasi peer WireGuard VPN. |
| [Reset-WireGuardConfiguration](https://github.com/genXdev/genXdev/blob/main/Docs/id-ID/Reset-WireGuardConfiguration.md) | &nbsp; | Menyetel ulang konfigurasi server VPN WireGuard, menghapus semua rekan. |
