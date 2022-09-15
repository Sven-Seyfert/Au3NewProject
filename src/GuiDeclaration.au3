Global $aColor[$iMaxEnumIndex]
       $aColor[$eBackground]                    = 0x21252B
       $aColor[$eBlue]                          = 0x61AFEF
       $aColor[$eBorder]                        = 0x474A4F
       $aColor[$eFont]                          = 0xCCCCCC
       $aColor[$eLabelBackground]               = 0x282C34
       $aColor[$eRed]                           = 0xD51324
       $aColor[$eWhite]                         = 0xFFFFFF

Global $aGui[$iMaxEnumIndex]
       $aGui[$eHandle]                          = ''
       $aGui[$eXPosition]                       = Default
       $aGui[$eYPosition]                       = Default
       $aGui[$eWidth]                           = 860
       $aGui[$eHeight]                          = 600
       $aGui[$eBackgroundColor]                 = $aColor[$eBackground]
       $aGui[$eFontColor]                       = $aColor[$eFont]
       $aGui[$eFontSize]                        = Default
       $aGui[$eFontWeight]                      = 400
       $aGui[$eFontAttribute]                   = Default
       $aGui[$eFontName]                        = 'Segoe UI'
       $aGui[$eBorderSize]                      = 1
       $aGui[$eBorderTop]                       = ''
       $aGui[$eBorderRight]                     = ''
       $aGui[$eBorderBottom]                    = ''
       $aGui[$eBorderLeft]                      = ''

Global $aCloseX[$iMaxEnumIndex]
       $aCloseX[$eBackground]                   = ''
       $aCloseX[$eBackgroundText]               = ''
       $aCloseX[$eXPosition]                    = $aGui[$eWidth] - $aGui[$eBorderSize] - 41
       $aCloseX[$eYPosition]                    = $aGui[$eBorderSize] + 1
       $aCloseX[$eWidth]                        = 40
       $aCloseX[$eHeight]                       = 27
       $aCloseX[$eBackgroundColor]              = $aColor[$eBackground]
       $aCloseX[$eLabel]                        = ''
       $aCloseX[$eLabelText]                    = Chr(206)
       $aCloseX[$eLabelXPosition]               = $aCloseX[$eXPosition] + 11
       $aCloseX[$eLabelYPosition]               = $aCloseX[$eYPosition] + 4
       $aCloseX[$eLabelWidth]                   = 20
       $aCloseX[$eLabelHeight]                  = Default
       $aCloseX[$eFontColor]                    = $aColor[$eBorder]
       $aCloseX[$eFontSize]                     = 15
       $aCloseX[$eFontWeight]                   = 500
       $aCloseX[$eFontAttribute]                = Default
       $aCloseX[$eFontName]                     = 'WingDings 2'

Global $aHeadline[$iMaxEnumIndex]
       $aHeadline[$eLabel]                      = ''
       $aHeadline[$eLabelText]                  = 'Configure your new project'
       $aHeadline[$eLabelXPosition]             = 40
       $aHeadline[$eLabelYPosition]             = 45
       $aHeadline[$eLabelWidth]                 = 500
       $aHeadline[$eLabelHeight]                = 40
       $aHeadline[$eFontSize]                   = 20
       $aHeadline[$eFontWeight]                 = 600

Global $aKindOfProject[$iMaxEnumIndex]
       $aKindOfProject[$eLabel]                 = ''
       $aKindOfProject[$eLabelText]             = 'AutoIt App (Default)'
       $aKindOfProject[$eLabelXPosition]        = 40
       $aKindOfProject[$eLabelYPosition]        = 100
       $aKindOfProject[$eLabelWidth]            = 270
       $aKindOfProject[$eLabelHeight]           = 30
       $aKindOfProject[$eFontSize]              = 14
       $aKindOfProject[$eFontWeight]            = 400

Global $aTagOne[$iMaxEnumIndex]
       $aTagOne[$eBackground]                   = ''
       $aTagOne[$eBackgroundText]               = ''
       $aTagOne[$eXPosition]                    = 320
       $aTagOne[$eYPosition]                    = 102
       $aTagOne[$eWidth]                        = 50
       $aTagOne[$eHeight]                       = 27
       $aTagOne[$eBackgroundColor]              = $aColor[$eLabelBackground]
       $aTagOne[$eLabel]                        = ''
       $aTagOne[$eLabelText]                    = 'AutoIt'
       $aTagOne[$eLabelXPosition]               = $aTagOne[$eXPosition] + 8
       $aTagOne[$eLabelYPosition]               = $aTagOne[$eYPosition] + 5
       $aTagOne[$eLabelWidth]                   = $aTagOne[$eWidth] - 10
       $aTagOne[$eLabelHeight]                  = $aTagOne[$eHeight] - 7
       $aTagOne[$eFontSize]                     = 9
       $aTagOne[$eBorderColor]                  = $aColor[$eLabelBackground]
       $aTagOne[$eBorderSize]                   = $aGui[$eBorderSize]
       $aTagOne[$eBorderTop]                    = ''
       $aTagOne[$eBorderRight]                  = ''
       $aTagOne[$eBorderBottom]                 = ''
       $aTagOne[$eBorderLeft]                   = ''

Global $aTagTwo[$iMaxEnumIndex]
       $aTagTwo[$eBackground]                   = ''
       $aTagTwo[$eBackgroundText]               = ''
       $aTagTwo[$eXPosition]                    = 380
       $aTagTwo[$eYPosition]                    = 102
       $aTagTwo[$eWidth]                        = 88
       $aTagTwo[$eHeight]                       = 27
       $aTagTwo[$eBackgroundColor]              = $aColor[$eLabelBackground]
       $aTagTwo[$eLabel]                        = ''
       $aTagTwo[$eLabelText]                    = 'AutoIt + Web'
       $aTagTwo[$eLabelXPosition]               = $aTagTwo[$eXPosition] + 8
       $aTagTwo[$eLabelYPosition]               = $aTagTwo[$eYPosition] + 5
       $aTagTwo[$eLabelWidth]                   = $aTagTwo[$eWidth] - 10
       $aTagTwo[$eLabelHeight]                  = $aTagTwo[$eHeight] - 7
       $aTagTwo[$eFontSize]                     = 9
       $aTagTwo[$eBorderColor]                  = $aColor[$eLabelBackground]
       $aTagTwo[$eBorderSize]                   = $aGui[$eBorderSize]
       $aTagTwo[$eBorderTop]                    = ''
       $aTagTwo[$eBorderRight]                  = ''
       $aTagTwo[$eBorderBottom]                 = ''
       $aTagTwo[$eBorderLeft]                   = ''

Global $aTagThree[$iMaxEnumIndex]
       $aTagThree[$eBackground]                 = ''
       $aTagThree[$eBackgroundText]             = ''
       $aTagThree[$eXPosition]                  = 478
       $aTagThree[$eYPosition]                  = 102
       $aTagThree[$eWidth]                      = 53
       $aTagThree[$eHeight]                     = 27
       $aTagThree[$eBackgroundColor]            = $aColor[$eLabelBackground]
       $aTagThree[$eLabel]                      = ''
       $aTagThree[$eLabelText]                  = 'GitHub'
       $aTagThree[$eLabelXPosition]             = $aTagThree[$eXPosition] + 8
       $aTagThree[$eLabelYPosition]             = $aTagThree[$eYPosition] + 5
       $aTagThree[$eLabelWidth]                 = $aTagThree[$eWidth] - 10
       $aTagThree[$eLabelHeight]                = $aTagThree[$eHeight] - 7
       $aTagThree[$eFontSize]                   = 9
       $aTagThree[$eBorderColor]                = $aColor[$eLabelBackground]
       $aTagThree[$eBorderSize]                 = $aGui[$eBorderSize]
       $aTagThree[$eBorderTop]                  = ''
       $aTagThree[$eBorderRight]                = ''
       $aTagThree[$eBorderBottom]               = ''
       $aTagThree[$eBorderLeft]                 = ''

Global $aTagFour[$iMaxEnumIndex]
       $aTagFour[$eBackground]                  = ''
       $aTagFour[$eBackgroundText]              = ''
       $aTagFour[$eXPosition]                   = 541
       $aTagFour[$eYPosition]                   = 102
       $aTagFour[$eWidth]                       = 50
       $aTagFour[$eHeight]                      = 27
       $aTagFour[$eBackgroundColor]             = $aColor[$eLabelBackground]
       $aTagFour[$eLabel]                       = ''
       $aTagFour[$eLabelText]                   = 'GitLab'
       $aTagFour[$eLabelXPosition]              = $aTagFour[$eXPosition] + 8
       $aTagFour[$eLabelYPosition]              = $aTagFour[$eYPosition] + 5
       $aTagFour[$eLabelWidth]                  = $aTagFour[$eWidth] - 10
       $aTagFour[$eLabelHeight]                 = $aTagFour[$eHeight] - 7
       $aTagFour[$eFontSize]                    = 9
       $aTagFour[$eBorderColor]                 = $aColor[$eLabelBackground]
       $aTagFour[$eBorderSize]                  = $aGui[$eBorderSize]
       $aTagFour[$eBorderTop]                   = ''
       $aTagFour[$eBorderRight]                 = ''
       $aTagFour[$eBorderBottom]                = ''
       $aTagFour[$eBorderLeft]                  = ''

Global $aProjectName[$iMaxEnumIndex]
       $aProjectName[$eLabel]                   = ''
       $aProjectName[$eLabelText]               = 'Project name'
       $aProjectName[$eLabelXPosition]          = 40
       $aProjectName[$eLabelYPosition]          = 150
       $aProjectName[$eLabelWidth]              = 491
       $aProjectName[$eLabelHeight]             = 50
       $aProjectName[$eLabelFontSize]           = 9
       $aProjectName[$eBackground]              = ''
       $aProjectName[$eBackgroundText]          = ''
       $aProjectName[$eXPosition]               = $aProjectName[$eLabelXPosition]
       $aProjectName[$eYPosition]               = $aProjectName[$eLabelYPosition] + 25
       $aProjectName[$eWidth]                   = $aProjectName[$eLabelWidth]
       $aProjectName[$eHeight]                  = $aProjectName[$eLabelHeight] - 10
       $aProjectName[$eBackgroundColor]         = $aColor[$eLabelBackground]
       $aProjectName[$eInput]                   = ''
       $aProjectName[$eInputText]               = 'Au3MyApp'
       $aProjectName[$eInputColor]              = $aColor[$eLabelBackground]
       $aProjectName[$eInputXPosition]          = $aProjectName[$eXPosition] + 5
       $aProjectName[$eInputYPosition]          = $aProjectName[$eYPosition] + 10
       $aProjectName[$eInputWidth]              = $aProjectName[$eWidth] - 30
       $aProjectName[$eInputHeight]             = $aProjectName[$eHeight] - 20
       $aProjectName[$eFontSize]                = 11
       $aProjectName[$eBorderColor]             = $aColor[$eBlue]
       $aProjectName[$eBorderSize]              = $aGui[$eBorderSize]
       $aProjectName[$eBorderTop]               = ''
       $aProjectName[$eBorderRight]             = ''
       $aProjectName[$eBorderBottom]            = ''
       $aProjectName[$eBorderLeft]              = ''

Global $aLocation[$iMaxEnumIndex]
       $aLocation[$eLabel]                      = ''
       $aLocation[$eLabelText]                  = 'Location'
       $aLocation[$eLabelXPosition]             = 40
       $aLocation[$eLabelYPosition]             = 240
       $aLocation[$eLabelWidth]                 = 491
       $aLocation[$eLabelHeight]                = 50
       $aLocation[$eLabelFontSize]              = 9
       $aLocation[$eBackground]                 = ''
       $aLocation[$eBackgroundText]             = ''
       $aLocation[$eXPosition]                  = $aLocation[$eLabelXPosition]
       $aLocation[$eYPosition]                  = $aLocation[$eLabelYPosition] + 25
       $aLocation[$eWidth]                      = $aLocation[$eLabelWidth]
       $aLocation[$eHeight]                     = $aLocation[$eLabelHeight] - 10
       $aLocation[$eBackgroundColor]            = $aColor[$eLabelBackground]
       $aLocation[$eInput]                      = ''
       $aLocation[$eInputText]                  = @DesktopDir
       $aLocation[$eInputColor]                 = $aColor[$eLabelBackground]
       $aLocation[$eInputXPosition]             = $aLocation[$eXPosition] + 5
       $aLocation[$eInputYPosition]             = $aLocation[$eYPosition] + 10
       $aLocation[$eInputWidth]                 = $aLocation[$eWidth] - 30
       $aLocation[$eInputHeight]                = $aLocation[$eHeight] - 20
       $aLocation[$eFontSize]                   = 11
       $aLocation[$eBorderColor]                = $aColor[$eBorder]
       $aLocation[$eBorderSize]                 = $aGui[$eBorderSize]
       $aLocation[$eBorderTop]                  = ''
       $aLocation[$eBorderRight]                = ''
       $aLocation[$eBorderBottom]               = ''
       $aLocation[$eBorderLeft]                 = ''

Global $aCheckboxStart[$iMaxEnumIndex]
       $aCheckboxStart[$eCheckbox]              = ''
       $aCheckboxStart[$eCheckboxText]          = Chr(82)
       $aCheckboxStart[$eXPosition]             = 40
       $aCheckboxStart[$eYPosition]             = 318
       $aCheckboxStart[$eWidth]                 = 20
       $aCheckboxStart[$eHeight]                = Default
       $aCheckboxStart[$eFontColor]             = $aColor[$eFont]
       $aCheckboxStart[$eFontSize]              = 15
       $aCheckboxStart[$eFontWeight]            = 500
       $aCheckboxStart[$eFontAttribute]         = Default
       $aCheckboxStart[$eFontName]              = 'WingDings 2'
       $aCheckboxStart[$eLabel]                 = ''
       $aCheckboxStart[$eLabelText]             = 'Start project in Visual Studio Code'
       $aCheckboxStart[$eLabelXPosition]        = $aCheckboxStart[$eXPosition] + 25
       $aCheckboxStart[$eLabelYPosition]        = $aCheckboxStart[$eYPosition] + 3
       $aCheckboxStart[$eLabelWidth]            = Default
       $aCheckboxStart[$eLabelHeight]           = Default

Global $aCheckboxGithub[$iMaxEnumIndex]
       $aCheckboxGithub[$eCheckbox]             = ''
       $aCheckboxGithub[$eCheckboxText]         = Chr(163)
       $aCheckboxGithub[$eXPosition]            = 40
       $aCheckboxGithub[$eYPosition]            = 340
       $aCheckboxGithub[$eWidth]                = 20
       $aCheckboxGithub[$eHeight]               = Default
       $aCheckboxGithub[$eFontColor]            = $aColor[$eFont]
       $aCheckboxGithub[$eFontSize]             = 15
       $aCheckboxGithub[$eFontWeight]           = 500
       $aCheckboxGithub[$eFontAttribute]        = Default
       $aCheckboxGithub[$eFontName]             = 'WingDings 2'
       $aCheckboxGithub[$eLabel]                = ''
       $aCheckboxGithub[$eLabelText]            = 'Create Github repository structure'
       $aCheckboxGithub[$eLabelXPosition]       = $aCheckboxGithub[$eXPosition] + 25
       $aCheckboxGithub[$eLabelYPosition]       = $aCheckboxGithub[$eYPosition] + 3
       $aCheckboxGithub[$eLabelWidth]           = Default
       $aCheckboxGithub[$eLabelHeight]          = Default

Global $aGithubUsername[$iMaxEnumIndex]
       $aGithubUsername[$eLabel]                = ''
       $aGithubUsername[$eLabelText]            = 'Github user'
       $aGithubUsername[$eLabelXPosition]       = 40
       $aGithubUsername[$eLabelYPosition]       = 385
       $aGithubUsername[$eLabelWidth]           = 245
       $aGithubUsername[$eLabelHeight]          = 50
       $aGithubUsername[$eLabelFontSize]        = 9
       $aGithubUsername[$eBackground]           = ''
       $aGithubUsername[$eBackgroundText]       = ''
       $aGithubUsername[$eXPosition]            = $aGithubUsername[$eLabelXPosition]
       $aGithubUsername[$eYPosition]            = $aGithubUsername[$eLabelYPosition] + 25
       $aGithubUsername[$eWidth]                = $aGithubUsername[$eLabelWidth]
       $aGithubUsername[$eHeight]               = $aGithubUsername[$eLabelHeight] - 10
       $aGithubUsername[$eBackgroundColor]      = $aColor[$eLabelBackground]
       $aGithubUsername[$eInput]                = ''
       $aGithubUsername[$eInputText]            = 'Sven-Seyfert'
       $aGithubUsername[$eInputColor]           = $aColor[$eLabelBackground]
       $aGithubUsername[$eInputXPosition]       = $aGithubUsername[$eXPosition] + 5
       $aGithubUsername[$eInputYPosition]       = $aGithubUsername[$eYPosition] + 10
       $aGithubUsername[$eInputWidth]           = $aGithubUsername[$eWidth] - 30
       $aGithubUsername[$eInputHeight]          = $aGithubUsername[$eHeight] - 20
       $aGithubUsername[$eFontSize]             = 11
       $aGithubUsername[$eBorderColor]          = $aColor[$eBorder]
       $aGithubUsername[$eBorderSize]           = $aGui[$eBorderSize]
       $aGithubUsername[$eBorderTop]            = ''
       $aGithubUsername[$eBorderRight]          = ''
       $aGithubUsername[$eBorderBottom]         = ''
       $aGithubUsername[$eBorderLeft]           = ''

Global $aGithubDefaultBranch[$iMaxEnumIndex]
       $aGithubDefaultBranch[$eLabel]           = ''
       $aGithubDefaultBranch[$eLabelText]       = 'Github default branch'
       $aGithubDefaultBranch[$eLabelXPosition]  = 40 + 255
       $aGithubDefaultBranch[$eLabelYPosition]  = 385
       $aGithubDefaultBranch[$eLabelWidth]      = 245
       $aGithubDefaultBranch[$eLabelHeight]     = 50
       $aGithubDefaultBranch[$eLabelFontSize]   = 9
       $aGithubDefaultBranch[$eBackground]      = ''
       $aGithubDefaultBranch[$eBackgroundText]  = ''
       $aGithubDefaultBranch[$eXPosition]       = $aGithubDefaultBranch[$eLabelXPosition]
       $aGithubDefaultBranch[$eYPosition]       = $aGithubDefaultBranch[$eLabelYPosition] + 25
       $aGithubDefaultBranch[$eWidth]           = $aGithubDefaultBranch[$eLabelWidth]
       $aGithubDefaultBranch[$eHeight]          = $aGithubDefaultBranch[$eLabelHeight] - 10
       $aGithubDefaultBranch[$eBackgroundColor] = $aColor[$eLabelBackground]
       $aGithubDefaultBranch[$eInput]           = ''
       $aGithubDefaultBranch[$eInputText]       = 'main'
       $aGithubDefaultBranch[$eInputColor]      = $aColor[$eLabelBackground]
       $aGithubDefaultBranch[$eInputXPosition]  = $aGithubDefaultBranch[$eXPosition] + 5
       $aGithubDefaultBranch[$eInputYPosition]  = $aGithubDefaultBranch[$eYPosition] + 10
       $aGithubDefaultBranch[$eInputWidth]      = $aGithubDefaultBranch[$eWidth] - 30
       $aGithubDefaultBranch[$eInputHeight]     = $aGithubDefaultBranch[$eHeight] - 20
       $aGithubDefaultBranch[$eFontSize]        = 11
       $aGithubDefaultBranch[$eBorderColor]     = $aColor[$eBorder]
       $aGithubDefaultBranch[$eBorderSize]      = $aGui[$eBorderSize]
       $aGithubDefaultBranch[$eBorderTop]       = ''
       $aGithubDefaultBranch[$eBorderRight]     = ''
       $aGithubDefaultBranch[$eBorderBottom]    = ''
       $aGithubDefaultBranch[$eBorderLeft]      = ''

Global $aGitlabUsername[$iMaxEnumIndex]
       $aGitlabUsername[$eLabel]                = ''
       $aGitlabUsername[$eLabelText]            = 'Gitlab user/group'
       $aGitlabUsername[$eLabelXPosition]       = 40
       $aGitlabUsername[$eLabelYPosition]       = 385
       $aGitlabUsername[$eLabelWidth]           = 245
       $aGitlabUsername[$eLabelHeight]          = 50
       $aGitlabUsername[$eLabelFontSize]        = 9
       $aGitlabUsername[$eBackground]           = ''
       $aGitlabUsername[$eBackgroundText]       = ''
       $aGitlabUsername[$eXPosition]            = $aGitlabUsername[$eLabelXPosition]
       $aGitlabUsername[$eYPosition]            = $aGitlabUsername[$eLabelYPosition] + 25
       $aGitlabUsername[$eWidth]                = $aGitlabUsername[$eLabelWidth]
       $aGitlabUsername[$eHeight]               = $aGitlabUsername[$eLabelHeight] - 10
       $aGitlabUsername[$eBackgroundColor]      = $aColor[$eLabelBackground]
       $aGitlabUsername[$eInput]                = ''
       $aGitlabUsername[$eInputText]            = 'testing'
       $aGitlabUsername[$eInputColor]           = $aColor[$eLabelBackground]
       $aGitlabUsername[$eInputXPosition]       = $aGitlabUsername[$eXPosition] + 5
       $aGitlabUsername[$eInputYPosition]       = $aGitlabUsername[$eYPosition] + 10
       $aGitlabUsername[$eInputWidth]           = $aGitlabUsername[$eWidth] - 30
       $aGitlabUsername[$eInputHeight]          = $aGitlabUsername[$eHeight] - 20
       $aGitlabUsername[$eFontSize]             = 11
       $aGitlabUsername[$eBorderColor]          = $aColor[$eBorder]
       $aGitlabUsername[$eBorderSize]           = $aGui[$eBorderSize]
       $aGitlabUsername[$eBorderTop]            = ''
       $aGitlabUsername[$eBorderRight]          = ''
       $aGitlabUsername[$eBorderBottom]         = ''
       $aGitlabUsername[$eBorderLeft]           = ''

Global $aGitlabUrl[$iMaxEnumIndex]
       $aGitlabUrl[$eLabel]                     = ''
       $aGitlabUrl[$eLabelText]                 = 'Gitlab URL'
       $aGitlabUrl[$eLabelXPosition]            = 40 + 255
       $aGitlabUrl[$eLabelYPosition]            = 385
       $aGitlabUrl[$eLabelWidth]                = 245
       $aGitlabUrl[$eLabelHeight]               = 50
       $aGitlabUrl[$eLabelFontSize]             = 9
       $aGitlabUrl[$eBackground]                = ''
       $aGitlabUrl[$eBackgroundText]            = ''
       $aGitlabUrl[$eXPosition]                 = $aGitlabUrl[$eLabelXPosition]
       $aGitlabUrl[$eYPosition]                 = $aGitlabUrl[$eLabelYPosition] + 25
       $aGitlabUrl[$eWidth]                     = $aGitlabUrl[$eLabelWidth]
       $aGitlabUrl[$eHeight]                    = $aGitlabUrl[$eLabelHeight] - 10
       $aGitlabUrl[$eBackgroundColor]           = $aColor[$eLabelBackground]
       $aGitlabUrl[$eInput]                     = ''
       $aGitlabUrl[$eInputText]                 = 'gitlab.big-osp.de'
       $aGitlabUrl[$eInputColor]                = $aColor[$eLabelBackground]
       $aGitlabUrl[$eInputXPosition]            = $aGitlabUrl[$eXPosition] + 5
       $aGitlabUrl[$eInputYPosition]            = $aGitlabUrl[$eYPosition] + 10
       $aGitlabUrl[$eInputWidth]                = $aGitlabUrl[$eWidth] - 30
       $aGitlabUrl[$eInputHeight]               = $aGitlabUrl[$eHeight] - 20
       $aGitlabUrl[$eFontSize]                  = 11
       $aGitlabUrl[$eBorderColor]               = $aColor[$eBorder]
       $aGitlabUrl[$eBorderSize]                = $aGui[$eBorderSize]
       $aGitlabUrl[$eBorderTop]                 = ''
       $aGitlabUrl[$eBorderRight]               = ''
       $aGitlabUrl[$eBorderBottom]              = ''
       $aGitlabUrl[$eBorderLeft]                = ''

Global $aButtonBrowse[$iMaxEnumIndex]
       $aButtonBrowse[$eBackground]             = ''
       $aButtonBrowse[$eBackgroundText]         = ''
       $aButtonBrowse[$eXPosition]              = $aLocation[$eLabelXPosition] + $aLocation[$eLabelWidth] + 10
       $aButtonBrowse[$eYPosition]              = $aLocation[$eYPosition]
       $aButtonBrowse[$eWidth]                  = 50
       $aButtonBrowse[$eHeight]                 = $aLocation[$eHeight]
       $aButtonBrowse[$eBackgroundColor]        = $aColor[$eLabelBackground]
       $aButtonBrowse[$eLabel]                  = ''
       $aButtonBrowse[$eLabelText]              = '...'
       $aButtonBrowse[$eLabelXPosition]         = $aButtonBrowse[$eXPosition] + 18
       $aButtonBrowse[$eLabelYPosition]         = $aButtonBrowse[$eYPosition] + 12
       $aButtonBrowse[$eLabelWidth]             = Default
       $aButtonBrowse[$eLabelHeight]            = Default
       $aButtonBrowse[$eFontSize]               = 11
       $aButtonBrowse[$eBorderColor]            = $aColor[$eBorder]
       $aButtonBrowse[$eBorderSize]             = $aGui[$eBorderSize]
       $aButtonBrowse[$eBorderTop]              = ''
       $aButtonBrowse[$eBorderRight]            = ''
       $aButtonBrowse[$eBorderBottom]           = ''
       $aButtonBrowse[$eBorderLeft]             = ''

Global $aButtonCreate[$iMaxEnumIndex]
       $aButtonCreate[$eBackground]             = ''
       $aButtonCreate[$eBackgroundText]         = ''
       $aButtonCreate[$eXPosition]              = 713.8
       $aButtonCreate[$eYPosition]              = 522
       $aButtonCreate[$eWidth]                  = 105
       $aButtonCreate[$eHeight]                 = 32
       $aButtonCreate[$eBackgroundColor]        = $aColor[$eLabelBackground]
       $aButtonCreate[$eLabel]                  = ''
       $aButtonCreate[$eLabelText]              = 'Create'
       $aButtonCreate[$eLabelXPosition]         = $aButtonCreate[$eXPosition] + 31.82
       $aButtonCreate[$eLabelYPosition]         = $aButtonCreate[$eYPosition] + 6
       $aButtonCreate[$eLabelWidth]             = Default
       $aButtonCreate[$eLabelHeight]            = Default
       $aButtonCreate[$eFontSize]               = 11
       $aButtonCreate[$eBorderColor]            = $aColor[$eBorder]
       $aButtonCreate[$eBorderSize]             = $aGui[$eBorderSize]
       $aButtonCreate[$eBorderTop]              = ''
       $aButtonCreate[$eBorderRight]            = ''
       $aButtonCreate[$eBorderBottom]           = ''
       $aButtonCreate[$eBorderLeft]             = ''
