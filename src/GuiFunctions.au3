Func _IsMouseOnGui($hGui)
    $aMouseData = MouseGetPos()
    $aGuiData   = WinGetPos($hGui)

    If $aMouseData[0] >= $aGuiData[0] And _
       $aMouseData[1] >= $aGuiData[1] And _
       $aMouseData[0] <= $aGuiData[0] + $aGuiData[2] And _
       $aMouseData[1] <= $aGuiData[1] + $aGuiData[3] Then
       Return True
    EndIf

    Return False
EndFunc

Func _IsMouseOnControl($iXMouse, $iYMouse, $iXControl, $iYControl, $iWidthControl, $iHeightControl)
    If $iXMouse >= $iXControl And _
       $iYMouse >= $iYControl And _
       $iXMouse <= $iXControl + $iWidthControl  And _
       $iYMouse <= $iYControl + $iHeightControl Then
       Return True
    Else
        Return False
    EndIf
EndFunc

Func _HoverActions()
    If _IsMouseOnGui($aGui[$eHandle]) Then
        Select
            Case _HoverCloseX()
                GUICtrlSetBkColor($aCloseX[$eBackground], $aColor[$eRed])
                GUICtrlSetBkColor($aCloseX[$eLabel], $aColor[$eRed])
                GUICtrlSetColor($aCloseX[$eLabel], $aColor[$eWhite])

            Case _HoverTagOne()
                _SetBorderColor($aTagOne, $aColor[$eBlue])

            Case _HoverTagTwo()
                _SetBorderColor($aTagTwo, $aColor[$eBlue])

            Case _HoverTagThree()
                _SetBorderColor($aTagThree, $aColor[$eBlue])

            Case _HoverTagFour()
                _SetBorderColor($aTagFour, $aColor[$eBlue])

            Case _HoverButtonBrowse()
                _SetBorderColor($aButtonBrowse, $aColor[$eBlue])

            Case _HoverButtonCreate()
                _SetBorderColor($aButtonCreate, $aColor[$eBlue])

            Case Else
                GUICtrlSetBkColor($aCloseX[$eBackground], $aCloseX[$eBackgroundColor])
                GUICtrlSetBkColor($aCloseX[$eLabel], $aCloseX[$eBackgroundColor])
                GUICtrlSetColor($aCloseX[$eLabel], $aCloseX[$eFontColor])

                If $bHtmlProject Then
                    _SetBorderColor($aTagOne, $aTagOne[$eBorderColor])
                EndIf

                If Not $bHtmlProject Then
                    _SetBorderColor($aTagTwo, $aTagTwo[$eBorderColor])
                EndIf

                If $bIsGitLab Then
                    _SetBorderColor($aTagThree, $aTagThree[$eBorderColor])
                EndIf

                If Not $bIsGitLab Then
                    _SetBorderColor($aTagFour, $aTagFour[$eBorderColor])
                EndIf

                _SetBorderColor($aButtonBrowse, $aButtonBrowse[$eBorderColor])
                _SetBorderColor($aButtonCreate, $aButtonCreate[$eBorderColor])
        EndSelect
    EndIf
EndFunc

Func _HoverCloseX()
    Return _IsMouseOnControl($aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aCloseX[$eXPosition], $aCloseX[$eYPosition], $aCloseX[$eWidth], $aCloseX[$eHeight])
EndFunc

Func _HoverTagOne()
    Return _IsMouseOnControl($aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aTagOne[$eXPosition], $aTagOne[$eYPosition], $aTagOne[$eWidth], $aTagOne[$eHeight])
EndFunc

Func _HoverTagTwo()
    Return _IsMouseOnControl($aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aTagTwo[$eXPosition], $aTagTwo[$eYPosition], $aTagTwo[$eWidth], $aTagTwo[$eHeight])
EndFunc

Func _HoverTagThree()
    Return _IsMouseOnControl($aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aTagThree[$eXPosition], $aTagThree[$eYPosition], $aTagThree[$eWidth], $aTagThree[$eHeight])
EndFunc

Func _HoverTagFour()
    Return _IsMouseOnControl($aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aTagFour[$eXPosition], $aTagFour[$eYPosition], $aTagFour[$eWidth], $aTagFour[$eHeight])
EndFunc

Func _HoverButtonBrowse()
    Return _IsMouseOnControl($aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eWidth], $aButtonBrowse[$eHeight])
EndFunc

Func _HoverButtonCreate()
    Return _IsMouseOnControl($aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition], $aButtonCreate[$eWidth], $aButtonCreate[$eHeight])
EndFunc

Func _SetBorderColor($aControl, $vBorderColor)
    GUICtrlSetBkColor($aControl[$eBorderTop], $vBorderColor)
    GUICtrlSetBkColor($aControl[$eBorderRight], $vBorderColor)
    GUICtrlSetBkColor($aControl[$eBorderBottom], $vBorderColor)
    GUICtrlSetBkColor($aControl[$eBorderLeft], $vBorderColor)
EndFunc

Func _SetControlFocusWithoutSelectedText($aControl)
    GUICtrlSetState($aControl[$eInput], $GUI_FOCUS)
    ControlClick($aGui[$eHandle], '', $aControl[$eInput])
EndFunc

Func _ToggleInput()
    If Not $bTabIsPressed Then
        _SetControlFocusWithoutSelectedText($aLocation)
        _SetBorderColor($aProjectName, $aColor[$eBorder])
        _SetBorderColor($aLocation, $aColor[$eBlue])
        _SetBorderColor($aGithubUsername, $aColor[$eBorder])
        _SetBorderColor($aGithubDefaultBranch, $aColor[$eBorder])
        $bTabIsPressed = True
    Else
        _SetControlFocusWithoutSelectedText($aProjectName)
        _SetBorderColor($aProjectName, $aColor[$eBlue])
        _SetBorderColor($aLocation, $aColor[$eBorder])
        _SetBorderColor($aGithubUsername, $aColor[$eBorder])
        _SetBorderColor($aGithubDefaultBranch, $aColor[$eBorder])
        $bTabIsPressed = False
    EndIf
EndFunc

Func _ToggleCheckboxStart()
    If $bCheckboxStartIsChecked Then
        GUICtrlSetData($aCheckboxStart[$eCheckbox], Chr(163))
        $bCheckboxStartIsChecked = False
    Else
        GUICtrlSetData($aCheckboxStart[$eCheckbox], Chr(82))
        $bCheckboxStartIsChecked = True
    EndIf
EndFunc

Func _ToggleCheckboxGithub()
    If $bCheckboxGithubIsChecked Then
        GUICtrlSetData($aCheckboxGithub[$eCheckbox], Chr(163))
        _HideInputGithubUsername()
        _HideInputGithubDefaultBranch()
        $bCheckboxGithubIsChecked = False
    Else
        GUICtrlSetData($aCheckboxGithub[$eCheckbox], Chr(82))
        _ShowInputGithubUsername()
        _ShowInputGithubDefaultBranch()
        $bCheckboxGithubIsChecked = True
    EndIf
EndFunc

Func _HideInputGithubUsername()
    GUICtrlSetState($aGithubUsername[$eLabel], $GUI_HIDE)
    GUICtrlSetState($aGithubUsername[$eBackground], $GUI_HIDE)
    GUICtrlSetState($aGithubUsername[$eInput], $GUI_HIDE)
    GUICtrlSetState($aGithubUsername[$eBorderTop], $GUI_HIDE)
    GUICtrlSetState($aGithubUsername[$eBorderRight], $GUI_HIDE)
    GUICtrlSetState($aGithubUsername[$eBorderBottom], $GUI_HIDE)
    GUICtrlSetState($aGithubUsername[$eBorderLeft], $GUI_HIDE)
EndFunc

Func _ShowInputGithubUsername()
    GUICtrlSetState($aGithubUsername[$eLabel], $GUI_SHOW)
    GUICtrlSetState($aGithubUsername[$eBackground], $GUI_SHOW)
    GUICtrlSetState($aGithubUsername[$eInput], $GUI_SHOW)
    GUICtrlSetState($aGithubUsername[$eBorderTop], $GUI_SHOW)
    GUICtrlSetState($aGithubUsername[$eBorderRight], $GUI_SHOW)
    GUICtrlSetState($aGithubUsername[$eBorderBottom], $GUI_SHOW)
    GUICtrlSetState($aGithubUsername[$eBorderLeft], $GUI_SHOW)
EndFunc

Func _HideInputGithubDefaultBranch()
    GUICtrlSetState($aGithubDefaultBranch[$eLabel], $GUI_HIDE)
    GUICtrlSetState($aGithubDefaultBranch[$eBackground], $GUI_HIDE)
    GUICtrlSetState($aGithubDefaultBranch[$eInput], $GUI_HIDE)
    GUICtrlSetState($aGithubDefaultBranch[$eBorderTop], $GUI_HIDE)
    GUICtrlSetState($aGithubDefaultBranch[$eBorderRight], $GUI_HIDE)
    GUICtrlSetState($aGithubDefaultBranch[$eBorderBottom], $GUI_HIDE)
    GUICtrlSetState($aGithubDefaultBranch[$eBorderLeft], $GUI_HIDE)
EndFunc

Func _ShowInputGithubDefaultBranch()
    GUICtrlSetState($aGithubDefaultBranch[$eLabel], $GUI_SHOW)
    GUICtrlSetState($aGithubDefaultBranch[$eBackground], $GUI_SHOW)
    GUICtrlSetState($aGithubDefaultBranch[$eInput], $GUI_SHOW)
    GUICtrlSetState($aGithubDefaultBranch[$eBorderTop], $GUI_SHOW)
    GUICtrlSetState($aGithubDefaultBranch[$eBorderRight], $GUI_SHOW)
    GUICtrlSetState($aGithubDefaultBranch[$eBorderBottom], $GUI_SHOW)
    GUICtrlSetState($aGithubDefaultBranch[$eBorderLeft], $GUI_SHOW)
EndFunc
