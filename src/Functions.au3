Func _Exit()
    AdlibUnRegister('_HoverActions')
    _GuiFadeOut($aGui[$eHandle])
    GUIDelete($aGui[$eHandle])

    Exit
EndFunc

Func _SetupPaths()
    $aPath[$eFolder]        = GUICtrlRead($aLocation[$eInput])
    $aPath[$eRoot]          = $aPath[$eFolder] & '\' & GUICtrlRead($aProjectName[$eInput])
    $aPath[$eIssueTemplate] = $aPath[$eRoot]   & '\.github\ISSUE_TEMPLATE'
    $aPath[$eBuild]         = $aPath[$eRoot]   & '\build'
    $aPath[$eConfig]        = $aPath[$eRoot]   & '\config'
    $aPath[$eCss]           = $aPath[$eRoot]   & '\css'
    $aPath[$eDocs]          = $aPath[$eRoot]   & '\docs'
    $aPath[$eFonts]         = $aPath[$eRoot]   & '\fonts'
    $aPath[$eJs]            = $aPath[$eRoot]   & '\js'
    $aPath[$eSrc]           = $aPath[$eRoot]   & '\src'
    $aPath[$eUtilities]     = $aPath[$eRoot]   & '\utilities'
    $aPath[$eMedia]         = $aPath[$eRoot]   & '\media'
    $aPath[$eIcons]         = $aPath[$eRoot]   & '\media\icons'
    $aPath[$eImages]        = $aPath[$eRoot]   & '\media\images'
    $aPath[$eScreenshots]   = $aPath[$eRoot]   & '\media\screenshots'
EndFunc

Func _SetupFiles()
    $aFile[$eBugReport]               = $aPath[$eIssueTemplate] & '\bug_report.md'
    $aFile[$eFeatureRequest]          = $aPath[$eIssueTemplate] & '\feature_request.md'
    $aFile[$eConfig]                  = $aPath[$eConfig] & '\config.ini'
    $aFile[$eDocsCodeOfConduct]       = $aPath[$eDocs]   & '\CODE_OF_CONDUCT.md'
    $aFile[$eDocsContributing]        = $aPath[$eDocs]   & '\CONTRIBUTING.md'
    $aFile[$eDocsPullRequestTemplate] = $aPath[$eDocs]   & '\PULL_REQUEST_TEMPLATE.md'
    $aFile[$eGitIgnore]               = $aPath[$eRoot]   & '\.gitignore'
    $aFile[$eChangelog]               = $aPath[$eRoot]   & '\CHANGELOG.md'
    $aFile[$eLicense]                 = $aPath[$eRoot]   & '\LICENSE.md'
    $aFile[$eReadme]                  = $aPath[$eRoot]   & '\README.md'
    $aFile[$eSrcActionHandler]        = $aPath[$eSrc]    & '\ActionHandler.au3'
    $aFile[$eSrcHelper]               = $aPath[$eSrc]    & '\Helper.au3'
    $aFile[$eSrcInitializer]          = $aPath[$eSrc]    & '\Initializer.au3'
    $aFile[$eSrcProject]              = $aPath[$eSrc]    & '\Main.au3'
EndFunc

#include "FileContent.au3"

Func _CreateFolders()
    If $bHtmlProject Then
        DirCreate($aPath[$eCss])
        DirCreate($aPath[$eFonts])
        DirCreate($aPath[$eJs])
    EndIf

    DirCreate($aPath[$eBuild])
    DirCreate($aPath[$eConfig])
    DirCreate($aPath[$eIcons])
    DirCreate($aPath[$eImages])
    DirCreate($aPath[$eMedia])
    DirCreate($aPath[$eScreenshots])
    DirCreate($aPath[$eSrc])
    DirCreate($aPath[$eUtilities])
EndFunc

Func _CreateFiles()
    _WriteFile($aFile[$eConfig], '')
    _WriteFile($aFile[$eSrcHelper], '')
    _WriteFile($aFile[$eSrcInitializer], '')
EndFunc

Func _FillProjectFiles()
    _WriteFile($aFile[$eChangelog], $aContent[$eFileChangelog])
    _WriteFile($aFile[$eGitIgnore], $aContent[$eFileGitIgnore])
    _WriteFile($aFile[$eLicense], $aContent[$eFileLicense])
    _WriteFile($aFile[$eReadme], $aContent[$eFileReadme])
    _WriteFile($aFile[$eSrcActionHandler], $aContent[$eFileActionHandler])
    _WriteFile($aFile[$eSrcProject], $aContent[$eFileProject])
EndFunc

Func _OpenInVisualStudioCode()
    If $bCheckboxStartIsChecked Then
        ShellExecute(@ComSpec, ' /C code "' & $aPath[$eRoot] & '"', '', '', @SW_HIDE)
    EndIf
EndFunc

Func _FillGithubRelatedFiles()
    If $bCheckboxGithubIsChecked Then
        _WriteFile($aFile[$eBugReport], $aContent[$eFileBugReport])
        _WriteFile($aFile[$eFeatureRequest], $aContent[$eFileFeatureRequest])
        _WriteFile($aFile[$eDocsCodeOfConduct], $aContent[$eFileCodeOfConduct])
        _WriteFile($aFile[$eDocsContributing], $aContent[$eFileContributing])
        _WriteFile($aFile[$eDocsPullRequestTemplate], $aContent[$eFilePullRequestTemplate])
    EndIf
EndFunc
