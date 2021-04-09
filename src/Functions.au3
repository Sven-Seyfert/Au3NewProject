Func _exit()
    AdlibUnRegister( '_hoverActions' )
    _guiFadeOut( $aGui[$eHandle] )
    GUIDelete( $aGui[$eHandle] )

    Exit
EndFunc

Func _setupPaths()
    $aPath[$eFolder]        = GUICtrlRead( $aLocation[$eInput] )
    $aPath[$eRoot]          = $aPath[$eFolder] & '\' & GUICtrlRead( $aProjectName[$eInput] )
    $aPath[$eIssueTemplate] = $aPath[$eRoot]   & '\.github\ISSUE_TEMPLATE'
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

Func _setupFiles()
    $aFile[$eBugReport]               = $aPath[$eIssueTemplate] & '\bug_report.md'
    $aFile[$eFeatureRequest]          = $aPath[$eIssueTemplate] & '\feature_request.md'
    $aFile[$eConfig]                  = $aPath[$eConfig] & '\config.ini'
    $aFile[$eDocsBugReport]           = $aPath[$eDocs]   & '\BUG_REPORT.md'
    $aFile[$eDocsCodeOfConduct]       = $aPath[$eDocs]   & '\CODE_OF_CONDUCT.md'
    $aFile[$eDocsContributing]        = $aPath[$eDocs]   & '\CONTRIBUTING.md'
    $aFile[$eDocsFeatureRequest]      = $aPath[$eDocs]   & '\FEATURE_REQUEST.md'
    $aFile[$eDocsPullRequestTemplate] = $aPath[$eDocs]   & '\PULL_REQUEST_TEMPLATE.md'
    $aFile[$eGitIgnore]               = $aPath[$eRoot]   & '\.gitignore'
    $aFile[$eLicense]                 = $aPath[$eRoot]   & '\LICENSE.md'
    $aFile[$eReadme]                  = $aPath[$eRoot]   & '\README.md'
    $aFile[$eSrcBasicFunctions]       = $aPath[$eSrc]    & '\BasicFunctions.au3'
    $aFile[$eSrcDeclaration]          = $aPath[$eSrc]    & '\Declaration.au3'
    $aFile[$eSrcEnum]                 = $aPath[$eSrc]    & '\Enum.au3'
    $aFile[$eSrcFunctions]            = $aPath[$eSrc]    & '\Functions.au3'
    $aFile[$eSrcGui]                  = $aPath[$eSrc]    & '\Gui.au3'
    $aFile[$eSrcGuiFunctions]         = $aPath[$eSrc]    & '\GuiFunctions.au3'
    $aFile[$eSrcInit]                 = $aPath[$eSrc]    & '\Init.au3'
    $aFile[$eSrcProject]              = $aPath[$eSrc]    & '\' & GUICtrlRead( $aProjectName[$eInput] ) & '.au3'
EndFunc

#include "FileContent.au3"

Func _createFolders()
    If StringLower( $bHtmlProject ) == 'true' Then
        DirCreate( $aPath[$eCss] )
        DirCreate( $aPath[$eFonts] )
        DirCreate( $aPath[$eImages] )
        DirCreate( $aPath[$eJs] )
    EndIf

    DirCreate( $aPath[$eConfig] )
    DirCreate( $aPath[$eMedia] )
    DirCreate( $aPath[$eScreenshots] )
    DirCreate( $aPath[$eSrc] )
    DirCreate( $aPath[$eUtilities] )
EndFunc

Func _createFiles()
    _writeFile( $aFile[$eConfig], '' )
    _writeFile( $aFile[$eSrcBasicFunctions], '' )
    _writeFile( $aFile[$eSrcDeclaration], '' )
    _writeFile( $aFile[$eSrcEnum], '' )
    _writeFile( $aFile[$eSrcFunctions], '' )
    _writeFile( $aFile[$eSrcGui], '' )
    _writeFile( $aFile[$eSrcGuiFunctions], '' )
    _writeFile( $aFile[$eSrcInit], '' )
    _writeFile( $aFile[$eSrcProject], '' )
EndFunc

Func _fillProjectFile()
    _writeFile( $aFile[$eSrcProject], $aContent[$eFileProject] )
EndFunc

Func _openInVisualStudioCode()
    If StringLower( $bCheckboxStartIsChecked ) == 'true' Then
        ShellExecute( @ComSpec, ' /C code "' & $aPath[$eRoot] & '"', '', '', @SW_HIDE )
    EndIf
EndFunc

Func _fillGithubRelatedFiles()
    If StringLower( $bCheckboxGithubIsChecked ) == 'true' Then
        _writeFile( $aFile[$eBugReport], $aContent[$eFileBugReport] )
        _writeFile( $aFile[$eFeatureRequest], $aContent[$eFileFeatureRequest] )
        _writeFile( $aFile[$eDocsBugReport], $aContent[$eFileBugReport] )
        _writeFile( $aFile[$eDocsCodeOfConduct], $aContent[$eFileCodeOfConduct] )
        _writeFile( $aFile[$eDocsContributing], $aContent[$eFileContributing] )
        _writeFile( $aFile[$eDocsFeatureRequest], $aContent[$eFileFeatureRequest] )
        _writeFile( $aFile[$eDocsPullRequestTemplate], $aContent[$eFilePullRequestTemplate] )
        _writeFile( $aFile[$eGitIgnore], $aContent[$eFileGitIgnore] )
        _writeFile( $aFile[$eLicense], $aContent[$eFileLicense] )
        _writeFile( $aFile[$eReadme], $aContent[$eFileReadme] )
    EndIf
EndFunc
