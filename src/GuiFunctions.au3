Func _isMouseOnGui( $hGui )
    $aMouseData = MouseGetPos()
    $aGuiData   = WinGetPos( $hGui )

    If $aMouseData[0] >= $aGuiData[0] And _
       $aMouseData[1] >= $aGuiData[1] And _
       $aMouseData[0] <= $aGuiData[0] + $aGuiData[2] And _
       $aMouseData[1] <= $aGuiData[1] + $aGuiData[3] Then
       Return True
    EndIf

    Return False
EndFunc

Func _isMouseOnControl( $iXMouse, $iYMouse, $iXControl, $iYControl, $iWidthControl, $iHeightControl )
    If $iXMouse >= $iXControl And _
       $iYMouse >= $iYControl And _
       $iXMouse <= $iXControl + $iWidthControl  And _
       $iYMouse <= $iYControl + $iHeightControl Then
       Return True
    Else
        Return False
    EndIf
EndFunc

Func _hoverActions()
    If _isMouseOnGui( $aGui[$eHandle]) Then
        Select
            Case _hoverCloseX()
                GUICtrlSetBkColor( $aCloseX[$eBackground], $aColor[$eRed] )
                GUICtrlSetBkColor( $aCloseX[$eLabel], $aColor[$eRed] )
                GUICtrlSetColor( $aCloseX[$eLabel], $aColor[$eWhite] )

            Case _hoverTagOne()
                _setBorderColor( $aTagOne, $aColor[$eBlue] )

            Case _hoverTagTwo()
                _setBorderColor( $aTagTwo, $aColor[$eBlue] )

            Case _hoverButtonBrowse()
                _setBorderColor( $aButtonBrowse, $aColor[$eBlue] )

            Case _hoverButtonCreate()
                _setBorderColor( $aButtonCreate, $aColor[$eBlue] )

            Case Else
                GUICtrlSetBkColor( $aCloseX[$eBackground], $aCloseX[$eBackgroundColor] )
                GUICtrlSetBkColor( $aCloseX[$eLabel], $aCloseX[$eBackgroundColor] )
                GUICtrlSetColor( $aCloseX[$eLabel], $aCloseX[$eFontColor] )

                If StringLower( $bHtmlProject ) == 'true' Then _setBorderColor( $aTagOne, $aTagOne[$eBorderColor] )
                If StringLower( $bHtmlProject ) == 'false' Then _setBorderColor( $aTagTwo, $aTagTwo[$eBorderColor] )

                _setBorderColor( $aButtonBrowse, $aButtonBrowse[$eBorderColor] )
                _setBorderColor( $aButtonCreate, $aButtonCreate[$eBorderColor] )
        EndSelect
    EndIf
EndFunc

Func _hoverCloseX()
    Return _isMouseOnControl( $aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aCloseX[$eXPosition], $aCloseX[$eYPosition], $aCloseX[$eWidth], $aCloseX[$eHeight] )
EndFunc

Func _hoverTagOne()
    Return _isMouseOnControl( $aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aTagOne[$eXPosition], $aTagOne[$eYPosition], $aTagOne[$eWidth], $aTagOne[$eHeight] )
EndFunc

Func _hoverTagTwo()
    Return _isMouseOnControl( $aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aTagTwo[$eXPosition], $aTagTwo[$eYPosition], $aTagTwo[$eWidth], $aTagTwo[$eHeight] )
EndFunc

Func _hoverButtonBrowse()
    Return _isMouseOnControl( $aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eWidth], $aButtonBrowse[$eHeight] )
EndFunc

Func _hoverButtonCreate()
    Return _isMouseOnControl( $aMouseData[0] - $aGuiData[0], $aMouseData[1] - $aGuiData[1], $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition], $aButtonCreate[$eWidth], $aButtonCreate[$eHeight] )
EndFunc

Func _setBorderColor( $aControl, $vBorderColor )
    GUICtrlSetBkColor( $aControl[$eBorderTop], $vBorderColor )
    GUICtrlSetBkColor( $aControl[$eBorderRight], $vBorderColor )
    GUICtrlSetBkColor( $aControl[$eBorderBottom], $vBorderColor )
    GUICtrlSetBkColor( $aControl[$eBorderLeft], $vBorderColor )
EndFunc

Func _setControlFocusWithoutSelectedText( $aControl )
    GUICtrlSetState( $aControl[$eInput], $GUI_FOCUS )
    ControlClick( $aGui[$eHandle], '', $aControl[$eInput] )
EndFunc

Func _toggleInput()
    If StringLower( $bTabIsPressed ) == 'false' Then
        _setControlFocusWithoutSelectedText( $aLocation )
        _setBorderColor( $aProjectName, $aColor[$eBorder] )
        _setBorderColor( $aLocation, $aColor[$eBlue] )
        _setBorderColor( $aGithubUsername, $aColor[$eBorder] )
        _setBorderColor( $aGithubDefaultBranch, $aColor[$eBorder] )
        $bTabIsPressed = True
    Else
        _setControlFocusWithoutSelectedText( $aProjectName )
        _setBorderColor( $aProjectName, $aColor[$eBlue] )
        _setBorderColor( $aLocation, $aColor[$eBorder] )
        _setBorderColor( $aGithubUsername, $aColor[$eBorder] )
        _setBorderColor( $aGithubDefaultBranch, $aColor[$eBorder] )
        $bTabIsPressed = False
    EndIf
EndFunc

Func _toggleCheckboxStart()
    If StringLower( $bCheckboxStartIsChecked ) == 'true' Then
        GUICtrlSetData( $aCheckboxStart[$eCheckbox], Chr( 163 ) )
        $bCheckboxStartIsChecked = False
    Else
        GUICtrlSetData( $aCheckboxStart[$eCheckbox], Chr( 82 ) )
        $bCheckboxStartIsChecked = True
    EndIf
EndFunc

Func _toggleCheckboxGithub()
    If StringLower( $bCheckboxGithubIsChecked ) == 'true' Then
        GUICtrlSetData( $aCheckboxGithub[$eCheckbox], Chr( 163 ) )
        _hideInputGithubUsername()
        _hideInputGithubDefaultBranch()
        $bCheckboxGithubIsChecked = False
    Else
        GUICtrlSetData( $aCheckboxGithub[$eCheckbox], Chr( 82 ) )
        _showInputGithubUsername()
        _showInputGithubDefaultBranch()
        $bCheckboxGithubIsChecked = True
    EndIf
EndFunc

Func _hideInputGithubUsername()
    GUICtrlSetState( $aGithubUsername[$eLabel], $GUI_HIDE )
    GUICtrlSetState( $aGithubUsername[$eBackground], $GUI_HIDE )
    GUICtrlSetState( $aGithubUsername[$eInput], $GUI_HIDE )
    GUICtrlSetState( $aGithubUsername[$eBorderTop], $GUI_HIDE )
    GUICtrlSetState( $aGithubUsername[$eBorderRight], $GUI_HIDE )
    GUICtrlSetState( $aGithubUsername[$eBorderBottom], $GUI_HIDE )
    GUICtrlSetState( $aGithubUsername[$eBorderLeft], $GUI_HIDE )
EndFunc

Func _showInputGithubUsername()
    GUICtrlSetState( $aGithubUsername[$eLabel], $GUI_SHOW )
    GUICtrlSetState( $aGithubUsername[$eBackground], $GUI_SHOW )
    GUICtrlSetState( $aGithubUsername[$eInput], $GUI_SHOW )
    GUICtrlSetState( $aGithubUsername[$eBorderTop], $GUI_SHOW )
    GUICtrlSetState( $aGithubUsername[$eBorderRight], $GUI_SHOW )
    GUICtrlSetState( $aGithubUsername[$eBorderBottom], $GUI_SHOW )
    GUICtrlSetState( $aGithubUsername[$eBorderLeft], $GUI_SHOW )
EndFunc

Func _hideInputGithubDefaultBranch()
    GUICtrlSetState( $aGithubDefaultBranch[$eLabel], $GUI_HIDE )
    GUICtrlSetState( $aGithubDefaultBranch[$eBackground], $GUI_HIDE )
    GUICtrlSetState( $aGithubDefaultBranch[$eInput], $GUI_HIDE )
    GUICtrlSetState( $aGithubDefaultBranch[$eBorderTop], $GUI_HIDE )
    GUICtrlSetState( $aGithubDefaultBranch[$eBorderRight], $GUI_HIDE )
    GUICtrlSetState( $aGithubDefaultBranch[$eBorderBottom], $GUI_HIDE )
    GUICtrlSetState( $aGithubDefaultBranch[$eBorderLeft], $GUI_HIDE )
EndFunc

Func _showInputGithubDefaultBranch()
    GUICtrlSetState( $aGithubDefaultBranch[$eLabel], $GUI_SHOW )
    GUICtrlSetState( $aGithubDefaultBranch[$eBackground], $GUI_SHOW )
    GUICtrlSetState( $aGithubDefaultBranch[$eInput], $GUI_SHOW )
    GUICtrlSetState( $aGithubDefaultBranch[$eBorderTop], $GUI_SHOW )
    GUICtrlSetState( $aGithubDefaultBranch[$eBorderRight], $GUI_SHOW )
    GUICtrlSetState( $aGithubDefaultBranch[$eBorderBottom], $GUI_SHOW )
    GUICtrlSetState( $aGithubDefaultBranch[$eBorderLeft], $GUI_SHOW )
EndFunc
