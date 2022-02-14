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
    $aPath[$eImages]        = $aPath[$eRoot]   & '\images'
    $aPath[$eJs]            = $aPath[$eRoot]   & '\js'
    $aPath[$eMedia]         = $aPath[$eRoot]   & '\media'
    $aPath[$eScreenshots]   = $aPath[$eRoot]   & '\screenshots'
    $aPath[$eSrc]           = $aPath[$eRoot]   & '\src'
    $aPath[$eUtilities]     = $aPath[$eRoot]   & '\utilities'
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
    $aFile[$eSrcBasicFunctions]       = $aPath[$eSrc]    & '\BasicFunctions.au3'
    $aFile[$eSrcDeclaration]          = $aPath[$eSrc]    & '\Declaration.au3'
    $aFile[$eSrcEnum]                 = $aPath[$eSrc]    & '\Enum.au3'
    $aFile[$eSrcFunctions]            = $aPath[$eSrc]    & '\Functions.au3'
    $aFile[$eSrcGui]                  = $aPath[$eSrc]    & '\Gui.au3'
    $aFile[$eSrcGuiFunctions]         = $aPath[$eSrc]    & '\GuiFunctions.au3'
    $aFile[$eSrcInit]                 = $aPath[$eSrc]    & '\Init.au3'
    $aFile[$eSrcProject]              = $aPath[$eSrc]    & '\' & GUICtrlRead($aProjectName[$eInput]) & '.au3'
EndFunc

#include "FileContent.au3"

Func _CreateFolders()
    If StringLower($bHtmlProject) == 'true' Then
        DirCreate($aPath[$eCss])
        DirCreate($aPath[$eFonts])
        DirCreate($aPath[$eJs])
    EndIf

    DirCreate($aPath[$eBuild])
    DirCreate($aPath[$eConfig])
    DirCreate($aPath[$eImages])
    DirCreate($aPath[$eMedia])
    DirCreate($aPath[$eScreenshots])
    DirCreate($aPath[$eSrc])
    DirCreate($aPath[$eUtilities])
EndFunc

Func _CreateFiles()
    _WriteFile($aFile[$eConfig], '')
    _WriteFile($aFile[$eSrcBasicFunctions], '')
    _WriteFile($aFile[$eSrcDeclaration], '')
    _WriteFile($aFile[$eSrcEnum], '')
    _WriteFile($aFile[$eSrcFunctions], '')
    _WriteFile($aFile[$eSrcGui], '')
    _WriteFile($aFile[$eSrcGuiFunctions], '')
    _WriteFile($aFile[$eSrcInit], '')
    _WriteFile($aFile[$eSrcProject], '')
EndFunc

Func _FillProjectFile()
    _WriteFile($aFile[$eSrcProject], $aContent[$eFileProject])
EndFunc

Func _OpenInVisualStudioCode()
    If StringLower($bCheckboxStartIsChecked) == 'true' Then
        ShellExecute(@ComSpec, ' /C code "' & $aPath[$eRoot] & '"', '', '', @SW_HIDE)
    EndIf
EndFunc

Func _FillGithubRelatedFiles()
    If StringLower($bCheckboxGithubIsChecked) == 'true' Then
        _WriteFile($aFile[$eBugReport], $aContent[$eFileBugReport])
        _WriteFile($aFile[$eFeatureRequest], $aContent[$eFileFeatureRequest])
        _WriteFile($aFile[$eDocsCodeOfConduct], $aContent[$eFileCodeOfConduct])
        _WriteFile($aFile[$eDocsContributing], $aContent[$eFileContributing])
        _WriteFile($aFile[$eDocsPullRequestTemplate], $aContent[$eFilePullRequestTemplate])
        _WriteFile($aFile[$eGitIgnore], $aContent[$eFileGitIgnore])
        _WriteFile($aFile[$eChangelog], $aContent[$eFileChangelog])
        _WriteFile($aFile[$eLicense], $aContent[$eFileLicense])
        _WriteFile($aFile[$eReadme], $aContent[$eFileReadme])
    EndIf
EndFunc
