

Func _ShowGui()
    _Gui()
    _GuiCloseX()
    _GuiHeadline()
    _GuiKindOfProject()
    _GuiTagOne()
    _GuiTagTwo()
    _GuiTagThree()
    _GuiTagFour()
    _GuiInputProjectName()
    _GuiInputLocation()
    _GuiCheckboxStart()
    _GuiCheckboxGithub()
    _GuiInputGithubUsername()
    _GuiInputGithubDefaultBranch()
    _GuiInputGitlabUsername()
    _GuiInputGitlabUrl()
    _GuiButtonBrowse()
    _GuiButtonCreate()

    _HideInputGithubUsername()
    _HideInputGithubDefaultBranch()
    _HideInputGitlabUsername()
    _HideInputGitlabUrl()

    GUISetState(@SW_SHOW, $aGui[$eHandle])

    _GuiFadeIn($aGui[$eHandle])
EndFunc

Func _Gui()
    $aGui[$eHandle] = GUICreate('', $aGui[$eWidth], $aGui[$eHeight], $aGui[$eXPosition], $aGui[$eYPosition], $WS_POPUP, $WS_EX_TOPMOST)
    GUISetBkColor($aGui[$eBackgroundColor], $aGui[$eHandle])
    GUISetFont($aGui[$eFontSize], $aGui[$eFontWeight], $aGui[$eFontAttribute], $aGui[$eFontName])
    GUICtrlSetDefColor($aGui[$eFontColor])

    $aGui[$eBorderTop]    = GUICtrlCreateLabel('', 0, 0, $aGui[$eWidth], $aGui[$eBorderSize])
    $aGui[$eBorderRight]  = GUICtrlCreateLabel('', 0 + $aGui[$eWidth] - $aGui[$eBorderSize], 0, $aGui[$eBorderSize], $aGui[$eHeight])
    $aGui[$eBorderBottom] = GUICtrlCreateLabel('', 0, 0 + $aGui[$eHeight] - $aGui[$eBorderSize], $aGui[$eWidth], $aGui[$eBorderSize])
    $aGui[$eBorderLeft]   = GUICtrlCreateLabel('', 0, 0, $aGui[$eBorderSize], $aGui[$eHeight])

    _SetBorderColor($aGui, $aColor[$eBorder])
EndFunc

Func _GuiCloseX()
    $aCloseX[$eBackground] = GUICtrlCreateLabel($aCloseX[$eBackgroundText], $aCloseX[$eXPosition], $aCloseX[$eYPosition], $aCloseX[$eWidth], $aCloseX[$eHeight])
    GUICtrlSetBkColor($aCloseX[$eBackground], $aCloseX[$eBackgroundColor])
    GUICtrlSetCursor($aCloseX[$eBackground], 0)

    $aCloseX[$eLabel] = GUICtrlCreateLabel($aCloseX[$eLabelText], $aCloseX[$eLabelXPosition], $aCloseX[$eLabelYPosition], $aCloseX[$eLabelWidth], $aCloseX[$eLabelHeight])
    GUICtrlSetBkColor($aCloseX[$eLabel], $aCloseX[$eBackgroundColor])
    GUICtrlSetColor($aCloseX[$eLabel], $aCloseX[$eFontColor])
    GUICtrlSetFont($aCloseX[$eLabel], $aCloseX[$eFontSize], $aCloseX[$eFontWeight], $aCloseX[$eFontAttribute], $aCloseX[$eFontName])
EndFunc

Func _GuiHeadline()
    $aHeadline[$eLabel] = GUICtrlCreateLabel($aHeadline[$eLabelText], $aHeadline[$eLabelXPosition], $aHeadline[$eLabelYPosition], $aHeadline[$eLabelWidth], $aHeadline[$eLabelHeight])
    GUICtrlSetFont($aHeadline[$eLabel], $aHeadline[$eFontSize], $aHeadline[$eFontWeight])
EndFunc

Func _GuiKindOfProject()
    $aKindOfProject[$eLabel] = GUICtrlCreateLabel($aKindOfProject[$eLabelText], $aKindOfProject[$eLabelXPosition], $aKindOfProject[$eLabelYPosition], $aKindOfProject[$eLabelWidth], $aKindOfProject[$eLabelHeight])
    GUICtrlSetFont($aKindOfProject[$eLabel], $aKindOfProject[$eFontSize], $aKindOfProject[$eFontWeight])
EndFunc

Func _GuiTagOne()
    $aTagOne[$eBackground] = GUICtrlCreateLabel($aTagOne[$eBackgroundText], $aTagOne[$eXPosition], $aTagOne[$eYPosition], $aTagOne[$eWidth], $aTagOne[$eHeight])
    GUICtrlSetBkColor($aTagOne[$eBackground], $aTagOne[$eBackgroundColor])
    GUICtrlSetCursor($aTagOne[$eBackground], 0)

    $aTagOne[$eLabel] = GUICtrlCreateLabel($aTagOne[$eLabelText], $aTagOne[$eLabelXPosition], $aTagOne[$eLabelYPosition], $aTagOne[$eLabelWidth], $aTagOne[$eLabelHeight])
    GUICtrlSetBkColor($aTagOne[$eLabel], $aTagOne[$eBackgroundColor])
    GUICtrlSetFont($aTagOne[$eLabel], $aTagOne[$eFontSize])

    $aTagOne[$eBorderTop]    = GUICtrlCreateLabel('', $aTagOne[$eXPosition], $aTagOne[$eYPosition], $aTagOne[$eWidth], $aTagOne[$eBorderSize])
    $aTagOne[$eBorderRight]  = GUICtrlCreateLabel('', $aTagOne[$eXPosition] + $aTagOne[$eWidth] - $aTagOne[$eBorderSize], $aTagOne[$eYPosition], $aTagOne[$eBorderSize], $aTagOne[$eHeight])
    $aTagOne[$eBorderBottom] = GUICtrlCreateLabel('', $aTagOne[$eXPosition], $aTagOne[$eYPosition] + $aTagOne[$eHeight] - $aTagOne[$eBorderSize], $aTagOne[$eWidth], $aTagOne[$eBorderSize])
    $aTagOne[$eBorderLeft]   = GUICtrlCreateLabel('', $aTagOne[$eXPosition], $aTagOne[$eYPosition], $aTagOne[$eBorderSize], $aTagOne[$eHeight])

    _SetBorderColor($aTagOne, $aColor[$eBlue])
EndFunc

Func _GuiTagTwo()
    $aTagTwo[$eBackground] = GUICtrlCreateLabel($aTagTwo[$eBackgroundText], $aTagTwo[$eXPosition], $aTagTwo[$eYPosition], $aTagTwo[$eWidth], $aTagTwo[$eHeight])
    GUICtrlSetBkColor($aTagTwo[$eBackground], $aTagTwo[$eBackgroundColor])
    GUICtrlSetCursor($aTagTwo[$eBackground], 0)

    $aTagTwo[$eLabel] = GUICtrlCreateLabel($aTagTwo[$eLabelText], $aTagTwo[$eLabelXPosition], $aTagTwo[$eLabelYPosition], $aTagTwo[$eLabelWidth], $aTagTwo[$eLabelHeight])
    GUICtrlSetBkColor($aTagTwo[$eLabel], $aTagTwo[$eBackgroundColor])
    GUICtrlSetFont($aTagTwo[$eLabel], $aTagTwo[$eFontSize])

    $aTagTwo[$eBorderTop]    = GUICtrlCreateLabel('', $aTagTwo[$eXPosition], $aTagTwo[$eYPosition], $aTagTwo[$eWidth], $aTagTwo[$eBorderSize])
    $aTagTwo[$eBorderRight]  = GUICtrlCreateLabel('', $aTagTwo[$eXPosition] + $aTagTwo[$eWidth] - $aTagTwo[$eBorderSize], $aTagTwo[$eYPosition], $aTagTwo[$eBorderSize], $aTagTwo[$eHeight])
    $aTagTwo[$eBorderBottom] = GUICtrlCreateLabel('', $aTagTwo[$eXPosition], $aTagTwo[$eYPosition] + $aTagTwo[$eHeight] - $aTagTwo[$eBorderSize], $aTagTwo[$eWidth], $aTagTwo[$eBorderSize])
    $aTagTwo[$eBorderLeft]   = GUICtrlCreateLabel('', $aTagTwo[$eXPosition], $aTagTwo[$eYPosition], $aTagTwo[$eBorderSize], $aTagTwo[$eHeight])

    _SetBorderColor($aTagTwo, $aTagTwo[$eBorderColor])
EndFunc

Func _GuiTagThree()
    $aTagThree[$eBackground] = GUICtrlCreateLabel($aTagThree[$eBackgroundText], $aTagThree[$eXPosition], $aTagThree[$eYPosition], $aTagThree[$eWidth], $aTagThree[$eHeight])
    GUICtrlSetBkColor($aTagThree[$eBackground], $aTagThree[$eBackgroundColor])
    GUICtrlSetCursor($aTagThree[$eBackground], 0)

    $aTagThree[$eLabel] = GUICtrlCreateLabel($aTagThree[$eLabelText], $aTagThree[$eLabelXPosition], $aTagThree[$eLabelYPosition], $aTagThree[$eLabelWidth], $aTagThree[$eLabelHeight])
    GUICtrlSetBkColor($aTagThree[$eLabel], $aTagThree[$eBackgroundColor])
    GUICtrlSetFont($aTagThree[$eLabel], $aTagThree[$eFontSize])

    $aTagThree[$eBorderTop]    = GUICtrlCreateLabel('', $aTagThree[$eXPosition], $aTagThree[$eYPosition], $aTagThree[$eWidth], $aTagThree[$eBorderSize])
    $aTagThree[$eBorderRight]  = GUICtrlCreateLabel('', $aTagThree[$eXPosition] + $aTagThree[$eWidth] - $aTagThree[$eBorderSize], $aTagThree[$eYPosition], $aTagThree[$eBorderSize], $aTagThree[$eHeight])
    $aTagThree[$eBorderBottom] = GUICtrlCreateLabel('', $aTagThree[$eXPosition], $aTagThree[$eYPosition] + $aTagThree[$eHeight] - $aTagThree[$eBorderSize], $aTagThree[$eWidth], $aTagThree[$eBorderSize])
    $aTagThree[$eBorderLeft]   = GUICtrlCreateLabel('', $aTagThree[$eXPosition], $aTagThree[$eYPosition], $aTagThree[$eBorderSize], $aTagThree[$eHeight])

    _SetBorderColor($aTagThree, $aColor[$eBlue])
EndFunc

Func _GuiTagFour()
    $aTagFour[$eBackground] = GUICtrlCreateLabel($aTagFour[$eBackgroundText], $aTagFour[$eXPosition], $aTagFour[$eYPosition], $aTagFour[$eWidth], $aTagFour[$eHeight])
    GUICtrlSetBkColor($aTagFour[$eBackground], $aTagFour[$eBackgroundColor])
    GUICtrlSetCursor($aTagFour[$eBackground], 0)

    $aTagFour[$eLabel] = GUICtrlCreateLabel($aTagFour[$eLabelText], $aTagFour[$eLabelXPosition], $aTagFour[$eLabelYPosition], $aTagFour[$eLabelWidth], $aTagFour[$eLabelHeight])
    GUICtrlSetBkColor($aTagFour[$eLabel], $aTagFour[$eBackgroundColor])
    GUICtrlSetFont($aTagFour[$eLabel], $aTagFour[$eFontSize])

    $aTagFour[$eBorderTop]    = GUICtrlCreateLabel('', $aTagFour[$eXPosition], $aTagFour[$eYPosition], $aTagFour[$eWidth], $aTagFour[$eBorderSize])
    $aTagFour[$eBorderRight]  = GUICtrlCreateLabel('', $aTagFour[$eXPosition] + $aTagFour[$eWidth] - $aTagFour[$eBorderSize], $aTagFour[$eYPosition], $aTagFour[$eBorderSize], $aTagFour[$eHeight])
    $aTagFour[$eBorderBottom] = GUICtrlCreateLabel('', $aTagFour[$eXPosition], $aTagFour[$eYPosition] + $aTagFour[$eHeight] - $aTagFour[$eBorderSize], $aTagFour[$eWidth], $aTagFour[$eBorderSize])
    $aTagFour[$eBorderLeft]   = GUICtrlCreateLabel('', $aTagFour[$eXPosition], $aTagFour[$eYPosition], $aTagFour[$eBorderSize], $aTagFour[$eHeight])

    _SetBorderColor($aTagFour, $aTagFour[$eBorderColor])
EndFunc

Func _GuiInputProjectName()
    $aProjectName[$eLabel] = GUICtrlCreateLabel($aProjectName[$eLabelText], $aProjectName[$eLabelXPosition], $aProjectName[$eLabelYPosition], $aProjectName[$eLabelWidth], $aProjectName[$eLabelHeight])
    GUICtrlSetFont($aProjectName[$eLabel], $aProjectName[$eLabelFontSize])

    $aProjectName[$eBackground] = GUICtrlCreateLabel($aProjectName[$eBackgroundText], $aProjectName[$eXPosition], $aProjectName[$eYPosition], $aProjectName[$eWidth], $aProjectName[$eHeight])
    GUICtrlSetBkColor($aProjectName[$eBackground], $aProjectName[$eBackgroundColor])

    $aProjectName[$eInput] = GUICtrlCreateInput($aProjectName[$eInputText], $aProjectName[$eInputXPosition], $aProjectName[$eInputYPosition], $aProjectName[$eInputWidth], $aProjectName[$eInputHeight], -1, $WS_EX_TOOLWINDOW)
    GUICtrlSetBkColor($aProjectName[$eInput], $aProjectName[$eInputColor])
    GUICtrlSetFont($aProjectName[$eInput], $aProjectName[$eFontSize])

    $aProjectName[$eBorderTop]    = GUICtrlCreateLabel('', $aProjectName[$eXPosition], $aProjectName[$eYPosition], $aProjectName[$eWidth], $aProjectName[$eBorderSize])
    $aProjectName[$eBorderRight]  = GUICtrlCreateLabel('', $aProjectName[$eXPosition] + $aProjectName[$eWidth] - $aProjectName[$eBorderSize], $aProjectName[$eYPosition], $aProjectName[$eBorderSize], $aProjectName[$eHeight])
    $aProjectName[$eBorderBottom] = GUICtrlCreateLabel('', $aProjectName[$eXPosition], $aProjectName[$eYPosition] + $aProjectName[$eHeight] - $aProjectName[$eBorderSize], $aProjectName[$eWidth], $aProjectName[$eBorderSize])
    $aProjectName[$eBorderLeft]   = GUICtrlCreateLabel('', $aProjectName[$eXPosition], $aProjectName[$eYPosition], $aProjectName[$eBorderSize], $aProjectName[$eHeight])

    _SetBorderColor($aProjectName, $aProjectName[$eBorderColor])
    _SetControlFocusWithoutSelectedText($aProjectName)
EndFunc

Func _GuiInputLocation()
    $aLocation[$eLabel] = GUICtrlCreateLabel($aLocation[$eLabelText], $aLocation[$eLabelXPosition], $aLocation[$eLabelYPosition], $aLocation[$eLabelWidth], $aLocation[$eLabelHeight])
    GUICtrlSetFont($aLocation[$eLabel], $aLocation[$eLabelFontSize])

    $aLocation[$eBackground] = GUICtrlCreateLabel($aLocation[$eBackgroundText], $aLocation[$eXPosition], $aLocation[$eYPosition], $aLocation[$eWidth], $aLocation[$eHeight])
    GUICtrlSetBkColor($aLocation[$eBackground], $aLocation[$eBackgroundColor])

    $aLocation[$eInput] = GUICtrlCreateInput($aLocation[$eInputText], $aLocation[$eInputXPosition], $aLocation[$eInputYPosition], $aLocation[$eInputWidth], $aLocation[$eInputHeight], -1, $WS_EX_TOOLWINDOW)
    GUICtrlSetBkColor($aLocation[$eInput], $aLocation[$eInputColor])
    GUICtrlSetFont($aLocation[$eInput], $aLocation[$eFontSize])

    $aLocation[$eBorderTop]    = GUICtrlCreateLabel('', $aLocation[$eXPosition], $aLocation[$eYPosition], $aLocation[$eWidth], $aLocation[$eBorderSize])
    $aLocation[$eBorderRight]  = GUICtrlCreateLabel('', $aLocation[$eXPosition] + $aLocation[$eWidth] - $aLocation[$eBorderSize], $aLocation[$eYPosition], $aLocation[$eBorderSize], $aLocation[$eHeight])
    $aLocation[$eBorderBottom] = GUICtrlCreateLabel('', $aLocation[$eXPosition], $aLocation[$eYPosition] + $aLocation[$eHeight] - $aLocation[$eBorderSize], $aLocation[$eWidth], $aLocation[$eBorderSize])
    $aLocation[$eBorderLeft]   = GUICtrlCreateLabel('', $aLocation[$eXPosition], $aLocation[$eYPosition], $aLocation[$eBorderSize], $aLocation[$eHeight])

    _SetBorderColor($aLocation, $aLocation[$eBorderColor])
EndFunc

Func _GuiCheckboxStart()
    $aCheckboxStart[$eCheckbox] = GUICtrlCreateLabel($aCheckboxStart[$eCheckboxText], $aCheckboxStart[$eXPosition], $aCheckboxStart[$eYPosition], $aCheckboxStart[$eWidth], $aCheckboxStart[$eHeight])
    GUICtrlSetCursor($aCheckboxStart[$eCheckbox], 0)
    GUICtrlSetColor($aCheckboxStart[$eCheckbox], $aCheckboxStart[$eFontColor])
    GUICtrlSetFont($aCheckboxStart[$eCheckbox], $aCheckboxStart[$eFontSize], $aCheckboxStart[$eFontWeight], $aCheckboxStart[$eFontAttribute], $aCheckboxStart[$eFontName])

    $aCheckboxStart[$eLabel] = GUICtrlCreateLabel($aCheckboxStart[$eLabelText], $aCheckboxStart[$eLabelXPosition], $aCheckboxStart[$eLabelYPosition], $aCheckboxStart[$eLabelWidth], $aCheckboxStart[$eLabelHeight])
    GUICtrlSetCursor($aCheckboxStart[$eLabel], 0)
    GUICtrlSetColor($aCheckboxStart[$eLabel], $aCheckboxStart[$eFontColor])
EndFunc

Func _GuiCheckboxGithub()
    $aCheckboxGithub[$eCheckbox] = GUICtrlCreateLabel($aCheckboxGithub[$eCheckboxText], $aCheckboxGithub[$eXPosition], $aCheckboxGithub[$eYPosition], $aCheckboxGithub[$eWidth], $aCheckboxGithub[$eHeight])
    GUICtrlSetCursor($aCheckboxGithub[$eCheckbox], 0)
    GUICtrlSetColor($aCheckboxGithub[$eCheckbox], $aCheckboxGithub[$eFontColor])
    GUICtrlSetFont($aCheckboxGithub[$eCheckbox], $aCheckboxGithub[$eFontSize], $aCheckboxGithub[$eFontWeight], $aCheckboxGithub[$eFontAttribute], $aCheckboxGithub[$eFontName])

    $aCheckboxGithub[$eLabel] = GUICtrlCreateLabel($aCheckboxGithub[$eLabelText], $aCheckboxGithub[$eLabelXPosition], $aCheckboxGithub[$eLabelYPosition], $aCheckboxGithub[$eLabelWidth], $aCheckboxGithub[$eLabelHeight])
    GUICtrlSetCursor($aCheckboxGithub[$eLabel], 0)
    GUICtrlSetColor($aCheckboxGithub[$eLabel], $aCheckboxGithub[$eFontColor])
EndFunc

Func _GuiInputGithubUsername()
    $aGithubUsername[$eLabel] = GUICtrlCreateLabel($aGithubUsername[$eLabelText], $aGithubUsername[$eLabelXPosition], $aGithubUsername[$eLabelYPosition], $aGithubUsername[$eLabelWidth], $aGithubUsername[$eLabelHeight])
    GUICtrlSetFont($aGithubUsername[$eLabel], $aGithubUsername[$eLabelFontSize])

    $aGithubUsername[$eBackground] = GUICtrlCreateLabel($aGithubUsername[$eBackgroundText], $aGithubUsername[$eXPosition], $aGithubUsername[$eYPosition], $aGithubUsername[$eWidth], $aGithubUsername[$eHeight])
    GUICtrlSetBkColor($aGithubUsername[$eBackground], $aGithubUsername[$eBackgroundColor])

    $aGithubUsername[$eInput] = GUICtrlCreateInput($aGithubUsername[$eInputText], $aGithubUsername[$eInputXPosition], $aGithubUsername[$eInputYPosition], $aGithubUsername[$eInputWidth], $aGithubUsername[$eInputHeight], -1, $WS_EX_TOOLWINDOW)
    GUICtrlSetBkColor($aGithubUsername[$eInput], $aGithubUsername[$eInputColor])
    GUICtrlSetFont($aGithubUsername[$eInput], $aGithubUsername[$eFontSize])

    $aGithubUsername[$eBorderTop]    = GUICtrlCreateLabel('', $aGithubUsername[$eXPosition], $aGithubUsername[$eYPosition], $aGithubUsername[$eWidth], $aGithubUsername[$eBorderSize])
    $aGithubUsername[$eBorderRight]  = GUICtrlCreateLabel('', $aGithubUsername[$eXPosition] + $aGithubUsername[$eWidth] - $aGithubUsername[$eBorderSize], $aGithubUsername[$eYPosition], $aGithubUsername[$eBorderSize], $aGithubUsername[$eHeight])
    $aGithubUsername[$eBorderBottom] = GUICtrlCreateLabel('', $aGithubUsername[$eXPosition], $aGithubUsername[$eYPosition] + $aGithubUsername[$eHeight] - $aGithubUsername[$eBorderSize], $aGithubUsername[$eWidth], $aGithubUsername[$eBorderSize])
    $aGithubUsername[$eBorderLeft]   = GUICtrlCreateLabel('', $aGithubUsername[$eXPosition], $aGithubUsername[$eYPosition], $aGithubUsername[$eBorderSize], $aGithubUsername[$eHeight])

    _SetBorderColor($aGithubUsername, $aGithubUsername[$eBorderColor])
EndFunc

Func _GuiInputGithubDefaultBranch()
    $aGithubDefaultBranch[$eLabel] = GUICtrlCreateLabel($aGithubDefaultBranch[$eLabelText], $aGithubDefaultBranch[$eLabelXPosition], $aGithubDefaultBranch[$eLabelYPosition], $aGithubDefaultBranch[$eLabelWidth], $aGithubDefaultBranch[$eLabelHeight])
    GUICtrlSetFont($aGithubDefaultBranch[$eLabel], $aGithubDefaultBranch[$eLabelFontSize])

    $aGithubDefaultBranch[$eBackground] = GUICtrlCreateLabel($aGithubDefaultBranch[$eBackgroundText], $aGithubDefaultBranch[$eXPosition], $aGithubDefaultBranch[$eYPosition], $aGithubDefaultBranch[$eWidth], $aGithubDefaultBranch[$eHeight])
    GUICtrlSetBkColor($aGithubDefaultBranch[$eBackground], $aGithubDefaultBranch[$eBackgroundColor])

    $aGithubDefaultBranch[$eInput] = GUICtrlCreateInput($aGithubDefaultBranch[$eInputText], $aGithubDefaultBranch[$eInputXPosition], $aGithubDefaultBranch[$eInputYPosition], $aGithubDefaultBranch[$eInputWidth], $aGithubDefaultBranch[$eInputHeight], -1, $WS_EX_TOOLWINDOW)
    GUICtrlSetBkColor($aGithubDefaultBranch[$eInput], $aGithubDefaultBranch[$eInputColor])
    GUICtrlSetFont($aGithubDefaultBranch[$eInput], $aGithubDefaultBranch[$eFontSize])

    $aGithubDefaultBranch[$eBorderTop]    = GUICtrlCreateLabel('', $aGithubDefaultBranch[$eXPosition], $aGithubDefaultBranch[$eYPosition], $aGithubDefaultBranch[$eWidth], $aGithubDefaultBranch[$eBorderSize])
    $aGithubDefaultBranch[$eBorderRight]  = GUICtrlCreateLabel('', $aGithubDefaultBranch[$eXPosition] + $aGithubDefaultBranch[$eWidth] - $aGithubDefaultBranch[$eBorderSize], $aGithubDefaultBranch[$eYPosition], $aGithubDefaultBranch[$eBorderSize], $aGithubDefaultBranch[$eHeight])
    $aGithubDefaultBranch[$eBorderBottom] = GUICtrlCreateLabel('', $aGithubDefaultBranch[$eXPosition], $aGithubDefaultBranch[$eYPosition] + $aGithubDefaultBranch[$eHeight] - $aGithubDefaultBranch[$eBorderSize], $aGithubDefaultBranch[$eWidth], $aGithubDefaultBranch[$eBorderSize])
    $aGithubDefaultBranch[$eBorderLeft]   = GUICtrlCreateLabel('', $aGithubDefaultBranch[$eXPosition], $aGithubDefaultBranch[$eYPosition], $aGithubDefaultBranch[$eBorderSize], $aGithubDefaultBranch[$eHeight])

    _SetBorderColor($aGithubDefaultBranch, $aGithubDefaultBranch[$eBorderColor])
EndFunc

Func _GuiInputGitlabUsername()
    $aGitlabUsername[$eLabel] = GUICtrlCreateLabel($aGitlabUsername[$eLabelText], $aGitlabUsername[$eLabelXPosition], $aGitlabUsername[$eLabelYPosition], $aGitlabUsername[$eLabelWidth], $aGitlabUsername[$eLabelHeight])
    GUICtrlSetFont($aGitlabUsername[$eLabel], $aGitlabUsername[$eLabelFontSize])

    $aGitlabUsername[$eBackground] = GUICtrlCreateLabel($aGitlabUsername[$eBackgroundText], $aGitlabUsername[$eXPosition], $aGitlabUsername[$eYPosition], $aGitlabUsername[$eWidth], $aGitlabUsername[$eHeight])
    GUICtrlSetBkColor($aGitlabUsername[$eBackground], $aGitlabUsername[$eBackgroundColor])

    $aGitlabUsername[$eInput] = GUICtrlCreateInput($aGitlabUsername[$eInputText], $aGitlabUsername[$eInputXPosition], $aGitlabUsername[$eInputYPosition], $aGitlabUsername[$eInputWidth], $aGitlabUsername[$eInputHeight], -1, $WS_EX_TOOLWINDOW)
    GUICtrlSetBkColor($aGitlabUsername[$eInput], $aGitlabUsername[$eInputColor])
    GUICtrlSetFont($aGitlabUsername[$eInput], $aGitlabUsername[$eFontSize])

    $aGitlabUsername[$eBorderTop]    = GUICtrlCreateLabel('', $aGitlabUsername[$eXPosition], $aGitlabUsername[$eYPosition], $aGitlabUsername[$eWidth], $aGitlabUsername[$eBorderSize])
    $aGitlabUsername[$eBorderRight]  = GUICtrlCreateLabel('', $aGitlabUsername[$eXPosition] + $aGitlabUsername[$eWidth] - $aGitlabUsername[$eBorderSize], $aGitlabUsername[$eYPosition], $aGitlabUsername[$eBorderSize], $aGitlabUsername[$eHeight])
    $aGitlabUsername[$eBorderBottom] = GUICtrlCreateLabel('', $aGitlabUsername[$eXPosition], $aGitlabUsername[$eYPosition] + $aGitlabUsername[$eHeight] - $aGitlabUsername[$eBorderSize], $aGitlabUsername[$eWidth], $aGitlabUsername[$eBorderSize])
    $aGitlabUsername[$eBorderLeft]   = GUICtrlCreateLabel('', $aGitlabUsername[$eXPosition], $aGitlabUsername[$eYPosition], $aGitlabUsername[$eBorderSize], $aGitlabUsername[$eHeight])

    _SetBorderColor($aGitlabUsername, $aGitlabUsername[$eBorderColor])
EndFunc

Func _GuiInputGitlabUrl()
    $aGitlabUrl[$eLabel] = GUICtrlCreateLabel($aGitlabUrl[$eLabelText], $aGitlabUrl[$eLabelXPosition], $aGitlabUrl[$eLabelYPosition], $aGitlabUrl[$eLabelWidth], $aGitlabUrl[$eLabelHeight])
    GUICtrlSetFont($aGitlabUrl[$eLabel], $aGitlabUrl[$eLabelFontSize])

    $aGitlabUrl[$eBackground] = GUICtrlCreateLabel($aGitlabUrl[$eBackgroundText], $aGitlabUrl[$eXPosition], $aGitlabUrl[$eYPosition], $aGitlabUrl[$eWidth], $aGitlabUrl[$eHeight])
    GUICtrlSetBkColor($aGitlabUrl[$eBackground], $aGitlabUrl[$eBackgroundColor])

    $aGitlabUrl[$eInput] = GUICtrlCreateInput($aGitlabUrl[$eInputText], $aGitlabUrl[$eInputXPosition], $aGitlabUrl[$eInputYPosition], $aGitlabUrl[$eInputWidth], $aGitlabUrl[$eInputHeight], -1, $WS_EX_TOOLWINDOW)
    GUICtrlSetBkColor($aGitlabUrl[$eInput], $aGitlabUrl[$eInputColor])
    GUICtrlSetFont($aGitlabUrl[$eInput], $aGitlabUrl[$eFontSize])

    $aGitlabUrl[$eBorderTop]    = GUICtrlCreateLabel('', $aGitlabUrl[$eXPosition], $aGitlabUrl[$eYPosition], $aGitlabUrl[$eWidth], $aGitlabUrl[$eBorderSize])
    $aGitlabUrl[$eBorderRight]  = GUICtrlCreateLabel('', $aGitlabUrl[$eXPosition] + $aGitlabUrl[$eWidth] - $aGitlabUrl[$eBorderSize], $aGitlabUrl[$eYPosition], $aGitlabUrl[$eBorderSize], $aGitlabUrl[$eHeight])
    $aGitlabUrl[$eBorderBottom] = GUICtrlCreateLabel('', $aGitlabUrl[$eXPosition], $aGitlabUrl[$eYPosition] + $aGitlabUrl[$eHeight] - $aGitlabUrl[$eBorderSize], $aGitlabUrl[$eWidth], $aGitlabUrl[$eBorderSize])
    $aGitlabUrl[$eBorderLeft]   = GUICtrlCreateLabel('', $aGitlabUrl[$eXPosition], $aGitlabUrl[$eYPosition], $aGitlabUrl[$eBorderSize], $aGitlabUrl[$eHeight])

    _SetBorderColor($aGitlabUrl, $aGitlabUrl[$eBorderColor])
EndFunc

Func _GuiButtonBrowse()
    $aButtonBrowse[$eBackground] = GUICtrlCreateLabel($aButtonBrowse[$eBackgroundText], $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eWidth], $aButtonBrowse[$eHeight])
    GUICtrlSetBkColor($aButtonBrowse[$eBackground], $aButtonBrowse[$eBackgroundColor])
    GUICtrlSetCursor($aButtonBrowse[$eBackground], 0)

    Local Const $vCenterLabel = 0x01

    $aButtonBrowse[$eLabel] = GUICtrlCreateLabel($aButtonBrowse[$eLabelText], $aButtonBrowse[$eLabelXPosition], $aButtonBrowse[$eLabelYPosition], $aButtonBrowse[$eLabelWidth], $aButtonBrowse[$eLabelHeight], $vCenterLabel)
    GUICtrlSetBkColor($aButtonBrowse[$eLabel], $aButtonBrowse[$eBackgroundColor])
    GUICtrlSetFont($aButtonBrowse[$eLabel], $aButtonBrowse[$eFontSize])

    $aButtonBrowse[$eBorderTop]    = GUICtrlCreateLabel('', $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eWidth], $aButtonBrowse[$eBorderSize])
    $aButtonBrowse[$eBorderRight]  = GUICtrlCreateLabel('', $aButtonBrowse[$eXPosition] + $aButtonBrowse[$eWidth] - $aButtonBrowse[$eBorderSize], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eBorderSize], $aButtonBrowse[$eHeight])
    $aButtonBrowse[$eBorderBottom] = GUICtrlCreateLabel('', $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition] + $aButtonBrowse[$eHeight] - $aButtonBrowse[$eBorderSize], $aButtonBrowse[$eWidth], $aButtonBrowse[$eBorderSize])
    $aButtonBrowse[$eBorderLeft]   = GUICtrlCreateLabel('', $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eBorderSize], $aButtonBrowse[$eHeight])

    _SetBorderColor($aButtonBrowse, $aButtonBrowse[$eBorderColor])
EndFunc

Func _GuiButtonCreate()
    $aButtonCreate[$eBackground] = GUICtrlCreateLabel($aButtonCreate[$eBackgroundText], $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition], $aButtonCreate[$eWidth], $aButtonCreate[$eHeight])
    GUICtrlSetBkColor($aButtonCreate[$eBackground], $aButtonCreate[$eBackgroundColor])
    GUICtrlSetCursor($aButtonCreate[$eBackground], 0)

    $aButtonCreate[$eLabel] = GUICtrlCreateLabel($aButtonCreate[$eLabelText], $aButtonCreate[$eLabelXPosition], $aButtonCreate[$eLabelYPosition], $aButtonCreate[$eLabelWidth], $aButtonCreate[$eLabelHeight])
    GUICtrlSetBkColor($aButtonCreate[$eLabel], $aButtonCreate[$eBackgroundColor])
    GUICtrlSetFont($aButtonCreate[$eLabel], $aButtonCreate[$eFontSize])

    $aButtonCreate[$eBorderTop]    = GUICtrlCreateLabel('', $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition], $aButtonCreate[$eWidth], $aButtonCreate[$eBorderSize])
    $aButtonCreate[$eBorderRight]  = GUICtrlCreateLabel('', $aButtonCreate[$eXPosition] + $aButtonCreate[$eWidth] - $aButtonCreate[$eBorderSize], $aButtonCreate[$eYPosition], $aButtonCreate[$eBorderSize], $aButtonCreate[$eHeight])
    $aButtonCreate[$eBorderBottom] = GUICtrlCreateLabel('', $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition] + $aButtonCreate[$eHeight] - $aButtonCreate[$eBorderSize], $aButtonCreate[$eWidth], $aButtonCreate[$eBorderSize])
    $aButtonCreate[$eBorderLeft]   = GUICtrlCreateLabel('', $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition], $aButtonCreate[$eBorderSize], $aButtonCreate[$eHeight])

    _SetBorderColor($aButtonCreate, $aButtonCreate[$eBorderColor])
EndFunc
