

Func _showGui()
    _gui()
    _guiCloseX()
    _guiHeadline()
    _guiKindOfProject()
    _guiTagOne()
    _guiTagTwo()
    _guiInputProjectName()
    _guiInputLocation()
    _guiCheckboxStart()
    _guiCheckboxGit()
    _guiButtonBrowse()
    _guiButtonCreate()

    GUISetState( @SW_SHOW, $aGui[$eHandle] )

    _guiFadeIn( $aGui[$eHandle] )
EndFunc

Func _gui()
    $aGui[$eHandle] = GUICreate( '', $aGui[$eWidth], $aGui[$eHeight], $aGui[$eXPosition], $aGui[$eYPosition], $WS_POPUP, $WS_EX_TOPMOST )
    GUISetBkColor( $aGui[$eBackgroundColor], $aGui[$eHandle] )
    GUISetFont( $aGui[$eFontSize], $aGui[$eFontWeight], $aGui[$eFontAttribute], $aGui[$eFontName] )
    GUICtrlSetDefColor( $aGui[$eFontColor] )

    $aGui[$eBorderTop]    = GUICtrlCreateLabel( '', 0, 0, $aGui[$eWidth], $aGui[$eBorderSize] )
    $aGui[$eBorderRight]  = GUICtrlCreateLabel( '', 0 + $aGui[$eWidth] - $aGui[$eBorderSize], 0, $aGui[$eBorderSize], $aGui[$eHeight] )
    $aGui[$eBorderBottom] = GUICtrlCreateLabel( '', 0, 0 + $aGui[$eHeight] - $aGui[$eBorderSize], $aGui[$eWidth], $aGui[$eBorderSize] )
    $aGui[$eBorderLeft]   = GUICtrlCreateLabel( '', 0, 0, $aGui[$eBorderSize], $aGui[$eHeight] )

    _setBorderColor( $aGui, $aColor[$eBorder] )
EndFunc

Func _guiCloseX()
    $aCloseX[$eBackground] = GUICtrlCreateLabel( $aCloseX[$eBackgroundText], $aCloseX[$eXPosition], $aCloseX[$eYPosition], $aCloseX[$eWidth], $aCloseX[$eHeight] )
    GUICtrlSetBkColor( $aCloseX[$eBackground], $aCloseX[$eBackgroundColor] )
    GUICtrlSetCursor( $aCloseX[$eBackground], 0 )

    $aCloseX[$eLabel] = GUICtrlCreateLabel( $aCloseX[$eLabelText], $aCloseX[$eLabelXPosition], $aCloseX[$eLabelYPosition], $aCloseX[$eLabelWidth], $aCloseX[$eLabelHeight] )
    GUICtrlSetBkColor( $aCloseX[$eLabel], $aCloseX[$eBackgroundColor] )
    GUICtrlSetColor( $aCloseX[$eLabel], $aCloseX[$eFontColor] )
    GUICtrlSetFont( $aCloseX[$eLabel], $aCloseX[$eFontSize], $aCloseX[$eFontWeight], $aCloseX[$eFontAttribute], $aCloseX[$eFontName] )
EndFunc

Func _guiHeadline()
    $aHeadline[$eLabel] = GUICtrlCreateLabel( $aHeadline[$eLabelText], $aHeadline[$eLabelXPosition], $aHeadline[$eLabelYPosition], $aHeadline[$eLabelWidth], $aHeadline[$eLabelHeight] )
    GUICtrlSetFont( $aHeadline[$eLabel], $aHeadline[$eFontSize], $aHeadline[$eFontWeight] )
EndFunc

Func _guiKindOfProject()
    $aKindOfProject[$eLabel] = GUICtrlCreateLabel( $aKindOfProject[$eLabelText], $aKindOfProject[$eLabelXPosition], $aKindOfProject[$eLabelYPosition], $aKindOfProject[$eLabelWidth], $aKindOfProject[$eLabelHeight] )
    GUICtrlSetFont( $aKindOfProject[$eLabel], $aKindOfProject[$eFontSize], $aKindOfProject[$eFontWeight] )
EndFunc

Func _guiTagOne()
    $aTagOne[$eBackground] = GUICtrlCreateLabel( $aTagOne[$eBackgroundText], $aTagOne[$eXPosition], $aTagOne[$eYPosition], $aTagOne[$eWidth], $aTagOne[$eHeight] )
    GUICtrlSetBkColor( $aTagOne[$eBackground], $aTagOne[$eBackgroundColor] )
    GUICtrlSetCursor( $aTagOne[$eBackground], 0 )

    $aTagOne[$eLabel] = GUICtrlCreateLabel( $aTagOne[$eLabelText], $aTagOne[$eLabelXPosition], $aTagOne[$eLabelYPosition], $aTagOne[$eLabelWidth], $aTagOne[$eLabelHeight] )
    GUICtrlSetBkColor( $aTagOne[$eLabel], $aTagOne[$eBackgroundColor] )
    GUICtrlSetFont( $aTagOne[$eLabel], $aTagOne[$eFontSize] )

    $aTagOne[$eBorderTop]    = GUICtrlCreateLabel( '', $aTagOne[$eXPosition], $aTagOne[$eYPosition], $aTagOne[$eWidth], $aTagOne[$eBorderSize] )
    $aTagOne[$eBorderRight]  = GUICtrlCreateLabel( '', $aTagOne[$eXPosition] + $aTagOne[$eWidth] - $aTagOne[$eBorderSize], $aTagOne[$eYPosition], $aTagOne[$eBorderSize], $aTagOne[$eHeight] )
    $aTagOne[$eBorderBottom] = GUICtrlCreateLabel( '', $aTagOne[$eXPosition], $aTagOne[$eYPosition] + $aTagOne[$eHeight] - $aTagOne[$eBorderSize], $aTagOne[$eWidth], $aTagOne[$eBorderSize] )
    $aTagOne[$eBorderLeft]   = GUICtrlCreateLabel( '', $aTagOne[$eXPosition], $aTagOne[$eYPosition], $aTagOne[$eBorderSize], $aTagOne[$eHeight] )

    _setBorderColor( $aTagOne, $aColor[$eBlue] )
EndFunc

Func _guiTagTwo()
    $aTagTwo[$eBackground] = GUICtrlCreateLabel( $aTagTwo[$eBackgroundText], $aTagTwo[$eXPosition], $aTagTwo[$eYPosition], $aTagTwo[$eWidth], $aTagTwo[$eHeight] )
    GUICtrlSetBkColor( $aTagTwo[$eBackground], $aTagTwo[$eBackgroundColor] )
    GUICtrlSetCursor( $aTagTwo[$eBackground], 0 )

    $aTagTwo[$eLabel] = GUICtrlCreateLabel( $aTagTwo[$eLabelText], $aTagTwo[$eLabelXPosition], $aTagTwo[$eLabelYPosition], $aTagTwo[$eLabelWidth], $aTagTwo[$eLabelHeight] )
    GUICtrlSetBkColor( $aTagTwo[$eLabel], $aTagTwo[$eBackgroundColor] )
    GUICtrlSetFont( $aTagTwo[$eLabel], $aTagTwo[$eFontSize] )

    $aTagTwo[$eBorderTop]    = GUICtrlCreateLabel( '', $aTagTwo[$eXPosition], $aTagTwo[$eYPosition], $aTagTwo[$eWidth], $aTagTwo[$eBorderSize] )
    $aTagTwo[$eBorderRight]  = GUICtrlCreateLabel( '', $aTagTwo[$eXPosition] + $aTagTwo[$eWidth] - $aTagTwo[$eBorderSize], $aTagTwo[$eYPosition], $aTagTwo[$eBorderSize], $aTagTwo[$eHeight] )
    $aTagTwo[$eBorderBottom] = GUICtrlCreateLabel( '', $aTagTwo[$eXPosition], $aTagTwo[$eYPosition] + $aTagTwo[$eHeight] - $aTagTwo[$eBorderSize], $aTagTwo[$eWidth], $aTagTwo[$eBorderSize] )
    $aTagTwo[$eBorderLeft]   = GUICtrlCreateLabel( '', $aTagTwo[$eXPosition], $aTagTwo[$eYPosition], $aTagTwo[$eBorderSize], $aTagTwo[$eHeight] )

    _setBorderColor( $aTagTwo, $aTagTwo[$eBorderColor] )
EndFunc

Func _guiInputProjectName()
    $aProjectName[$eLabel] = GUICtrlCreateLabel( $aProjectName[$eLabelText], $aProjectName[$eLabelXPosition], $aProjectName[$eLabelYPosition], $aProjectName[$eLabelWidth], $aProjectName[$eLabelHeight] )
    GUICtrlSetFont( $aProjectName[$eLabel], $aProjectName[$eLabelFontSize] )

    $aProjectName[$eBackground] = GUICtrlCreateLabel( $aProjectName[$eBackgroundText], $aProjectName[$eXPosition], $aProjectName[$eYPosition], $aProjectName[$eWidth], $aProjectName[$eHeight] )
    GUICtrlSetBkColor( $aProjectName[$eBackground], $aProjectName[$eBackgroundColor] )

    $aProjectName[$eInput] = GUICtrlCreateInput( $aProjectName[$eInputText], $aProjectName[$eInputXPosition], $aProjectName[$eInputYPosition], $aProjectName[$eInputWidth], $aProjectName[$eInputHeight], -1, $WS_EX_TOOLWINDOW )
    GUICtrlSetBkColor( $aProjectName[$eInput], $aProjectName[$eInputColor] )
    GUICtrlSetFont( $aProjectName[$eInput], $aProjectName[$eFontSize] )

    $aProjectName[$eBorderTop]    = GUICtrlCreateLabel( '', $aProjectName[$eXPosition], $aProjectName[$eYPosition], $aProjectName[$eWidth], $aProjectName[$eBorderSize] )
    $aProjectName[$eBorderRight]  = GUICtrlCreateLabel( '', $aProjectName[$eXPosition] + $aProjectName[$eWidth] - $aProjectName[$eBorderSize], $aProjectName[$eYPosition], $aProjectName[$eBorderSize], $aProjectName[$eHeight] )
    $aProjectName[$eBorderBottom] = GUICtrlCreateLabel( '', $aProjectName[$eXPosition], $aProjectName[$eYPosition] + $aProjectName[$eHeight] - $aProjectName[$eBorderSize], $aProjectName[$eWidth], $aProjectName[$eBorderSize] )
    $aProjectName[$eBorderLeft]   = GUICtrlCreateLabel( '', $aProjectName[$eXPosition], $aProjectName[$eYPosition], $aProjectName[$eBorderSize], $aProjectName[$eHeight] )

    _setBorderColor( $aProjectName, $aProjectName[$eBorderColor] )
    _setControlFocusWithoutSelectedText( $aProjectName )
EndFunc

Func _guiInputLocation()
    $aLocation[$eLabel] = GUICtrlCreateLabel( $aLocation[$eLabelText], $aLocation[$eLabelXPosition], $aLocation[$eLabelYPosition], $aLocation[$eLabelWidth], $aLocation[$eLabelHeight] )
    GUICtrlSetFont( $aLocation[$eLabel], $aLocation[$eLabelFontSize] )

    $aLocation[$eBackground] = GUICtrlCreateLabel( $aLocation[$eBackgroundText], $aLocation[$eXPosition], $aLocation[$eYPosition], $aLocation[$eWidth], $aLocation[$eHeight] )
    GUICtrlSetBkColor( $aLocation[$eBackground], $aLocation[$eBackgroundColor] )

    $aLocation[$eInput] = GUICtrlCreateInput( $aLocation[$eInputText], $aLocation[$eInputXPosition], $aLocation[$eInputYPosition], $aLocation[$eInputWidth], $aLocation[$eInputHeight], -1, $WS_EX_TOOLWINDOW )
    GUICtrlSetBkColor( $aLocation[$eInput], $aLocation[$eInputColor] )
    GUICtrlSetFont( $aLocation[$eInput], $aLocation[$eFontSize] )

    $aLocation[$eBorderTop]    = GUICtrlCreateLabel( '', $aLocation[$eXPosition], $aLocation[$eYPosition], $aLocation[$eWidth], $aLocation[$eBorderSize] )
    $aLocation[$eBorderRight]  = GUICtrlCreateLabel( '', $aLocation[$eXPosition] + $aLocation[$eWidth] - $aLocation[$eBorderSize], $aLocation[$eYPosition], $aLocation[$eBorderSize], $aLocation[$eHeight] )
    $aLocation[$eBorderBottom] = GUICtrlCreateLabel( '', $aLocation[$eXPosition], $aLocation[$eYPosition] + $aLocation[$eHeight] - $aLocation[$eBorderSize], $aLocation[$eWidth], $aLocation[$eBorderSize] )
    $aLocation[$eBorderLeft]   = GUICtrlCreateLabel( '', $aLocation[$eXPosition], $aLocation[$eYPosition], $aLocation[$eBorderSize], $aLocation[$eHeight] )

    _setBorderColor( $aLocation, $aLocation[$eBorderColor] )
EndFunc

Func _guiCheckboxStart()
    $aCheckboxStart[$eCheckbox] = GUICtrlCreateLabel( $aCheckboxStart[$eCheckboxText], $aCheckboxStart[$eXPosition], $aCheckboxStart[$eYPosition], $aCheckboxStart[$eWidth], $aCheckboxStart[$eHeight] )
    GUICtrlSetCursor( $aCheckboxStart[$eCheckbox], 0 )
    GUICtrlSetColor( $aCheckboxStart[$eCheckbox], $aCheckboxStart[$eFontColor] )
    GUICtrlSetFont( $aCheckboxStart[$eCheckbox], $aCheckboxStart[$eFontSize], $aCheckboxStart[$eFontWeight], $aCheckboxStart[$eFontAttribute], $aCheckboxStart[$eFontName] )

    $aCheckboxStart[$eLabel] = GUICtrlCreateLabel( $aCheckboxStart[$eLabelText], $aCheckboxStart[$eLabelXPosition], $aCheckboxStart[$eLabelYPosition], $aCheckboxStart[$eLabelWidth], $aCheckboxStart[$eLabelHeight] )
    GUICtrlSetCursor( $aCheckboxStart[$eLabel], 0 )
    GUICtrlSetColor( $aCheckboxStart[$eLabel], $aCheckboxStart[$eFontColor] )
EndFunc

Func _guiCheckboxGit()
    $aCheckboxGithub[$eCheckbox] = GUICtrlCreateLabel( $aCheckboxGithub[$eCheckboxText], $aCheckboxGithub[$eXPosition], $aCheckboxGithub[$eYPosition], $aCheckboxGithub[$eWidth], $aCheckboxGithub[$eHeight] )
    GUICtrlSetCursor( $aCheckboxGithub[$eCheckbox], 0 )
    GUICtrlSetColor( $aCheckboxGithub[$eCheckbox], $aCheckboxGithub[$eFontColor] )
    GUICtrlSetFont( $aCheckboxGithub[$eCheckbox], $aCheckboxGithub[$eFontSize], $aCheckboxGithub[$eFontWeight], $aCheckboxGithub[$eFontAttribute], $aCheckboxGithub[$eFontName] )

    $aCheckboxGithub[$eLabel] = GUICtrlCreateLabel( $aCheckboxGithub[$eLabelText], $aCheckboxGithub[$eLabelXPosition], $aCheckboxGithub[$eLabelYPosition], $aCheckboxGithub[$eLabelWidth], $aCheckboxGithub[$eLabelHeight] )
    GUICtrlSetCursor( $aCheckboxGithub[$eLabel], 0 )
    GUICtrlSetColor( $aCheckboxGithub[$eLabel], $aCheckboxGithub[$eFontColor] )
EndFunc

Func _guiButtonBrowse()
    $aButtonBrowse[$eBackground] = GUICtrlCreateLabel( $aButtonBrowse[$eBackgroundText], $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eWidth], $aButtonBrowse[$eHeight] )
    GUICtrlSetBkColor( $aButtonBrowse[$eBackground], $aButtonBrowse[$eBackgroundColor] )
    GUICtrlSetCursor( $aButtonBrowse[$eBackground], 0 )

    $aButtonBrowse[$eLabel] = GUICtrlCreateLabel( $aButtonBrowse[$eLabelText], $aButtonBrowse[$eLabelXPosition], $aButtonBrowse[$eLabelYPosition], $aButtonBrowse[$eLabelWidth], $aButtonBrowse[$eLabelHeight] )
    GUICtrlSetBkColor( $aButtonBrowse[$eLabel], $aButtonBrowse[$eBackgroundColor] )
    GUICtrlSetFont( $aButtonBrowse[$eLabel], $aButtonBrowse[$eFontSize] )

    $aButtonBrowse[$eBorderTop]    = GUICtrlCreateLabel( '', $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eWidth], $aButtonBrowse[$eBorderSize] )
    $aButtonBrowse[$eBorderRight]  = GUICtrlCreateLabel( '', $aButtonBrowse[$eXPosition] + $aButtonBrowse[$eWidth] - $aButtonBrowse[$eBorderSize], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eBorderSize], $aButtonBrowse[$eHeight] )
    $aButtonBrowse[$eBorderBottom] = GUICtrlCreateLabel( '', $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition] + $aButtonBrowse[$eHeight] - $aButtonBrowse[$eBorderSize], $aButtonBrowse[$eWidth], $aButtonBrowse[$eBorderSize] )
    $aButtonBrowse[$eBorderLeft]   = GUICtrlCreateLabel( '', $aButtonBrowse[$eXPosition], $aButtonBrowse[$eYPosition], $aButtonBrowse[$eBorderSize], $aButtonBrowse[$eHeight] )

    _setBorderColor( $aButtonBrowse, $aButtonBrowse[$eBorderColor] )
EndFunc

Func _guiButtonCreate()
    $aButtonCreate[$eBackground] = GUICtrlCreateLabel( $aButtonCreate[$eBackgroundText], $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition], $aButtonCreate[$eWidth], $aButtonCreate[$eHeight] )
    GUICtrlSetBkColor( $aButtonCreate[$eBackground], $aButtonCreate[$eBackgroundColor] )
    GUICtrlSetCursor( $aButtonCreate[$eBackground], 0 )

    $aButtonCreate[$eLabel] = GUICtrlCreateLabel( $aButtonCreate[$eLabelText], $aButtonCreate[$eLabelXPosition], $aButtonCreate[$eLabelYPosition], $aButtonCreate[$eLabelWidth], $aButtonCreate[$eLabelHeight] )
    GUICtrlSetBkColor( $aButtonCreate[$eLabel], $aButtonCreate[$eBackgroundColor] )
    GUICtrlSetFont( $aButtonCreate[$eLabel], $aButtonCreate[$eFontSize] )

    $aButtonCreate[$eBorderTop]    = GUICtrlCreateLabel( '', $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition], $aButtonCreate[$eWidth], $aButtonCreate[$eBorderSize] )
    $aButtonCreate[$eBorderRight]  = GUICtrlCreateLabel( '', $aButtonCreate[$eXPosition] + $aButtonCreate[$eWidth] - $aButtonCreate[$eBorderSize], $aButtonCreate[$eYPosition], $aButtonCreate[$eBorderSize], $aButtonCreate[$eHeight] )
    $aButtonCreate[$eBorderBottom] = GUICtrlCreateLabel( '', $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition] + $aButtonCreate[$eHeight] - $aButtonCreate[$eBorderSize], $aButtonCreate[$eWidth], $aButtonCreate[$eBorderSize] )
    $aButtonCreate[$eBorderLeft]   = GUICtrlCreateLabel( '', $aButtonCreate[$eXPosition], $aButtonCreate[$eYPosition], $aButtonCreate[$eBorderSize], $aButtonCreate[$eHeight] )

    _setBorderColor( $aButtonCreate, $aButtonCreate[$eBorderColor] )
EndFunc
