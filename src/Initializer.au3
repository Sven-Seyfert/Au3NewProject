Global $aMouseData
Global $aGuiData

Global $bHtmlProject                        = False
Global $bIsGitLab                           = False
Global $bTabIsPressed                       = False
Global $bCheckboxStartIsChecked             = True
Global $bCheckboxGithubIsChecked            = False

Global $aPath[$iMaxEnumIndex]
       $aPath[$eFolder]                     = ''
       $aPath[$eRoot]                       = ''
       $aPath[$eIssueTemplate]              = ''
       $aPath[$eBuild]                      = ''
       $aPath[$eConfig]                     = ''
       $aPath[$eCss]                        = ''
       $aPath[$eDocs]                       = ''
       $aPath[$eFonts]                      = ''
       $aPath[$eIcons]                     = ''
       $aPath[$eImages]                     = ''
       $aPath[$eJs]                         = ''
       $aPath[$eMedia]                      = ''
       $aPath[$eScreenshots]                = ''
       $aPath[$eSrc]                        = ''
       $aPath[$eUtilities]                  = ''

Global $aFile[$iMaxEnumIndex]
       $aFile[$eConfig]                     = ''
       $aFile[$eDocsCodeOfConduct]          = ''
       $aFile[$eDocsContributing]           = ''
       $aFile[$eDocsPullRequestTemplate]    = ''
       $aFile[$eGitIgnore]                  = ''
       $aFile[$eChangelog]                  = ''
       $aFile[$eLicense]                    = ''
       $aFile[$eReadme]                     = ''
       $aFile[$eSrcActionHandler]           = ''
       $aFile[$eSrcHelper]                  = ''
       $aFile[$eSrcInitializer]             = ''
       $aFile[$eSrcProject]                 = ''

Global $aContent[$iMaxEnumIndex]
       $aContent[$eFileProject]             = ''
       $aContent[$eFileActionHandler]       = ''
       $aContent[$eFileBugReport]           = ''
       $aContent[$eFileCodeOfConduct]       = ''
       $aContent[$eFileContributing]        = ''
       $aContent[$eFileFeatureRequest]      = ''
       $aContent[$eFilePullRequestTemplate] = ''
       $aContent[$eFileGitIgnore]           = ''
       $aContent[$eFileChangelog]           = ''
