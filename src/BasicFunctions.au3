Func _GuiFadeIn($hGui, $iSleep = 10)
    For $i = 0 To 255 Step 5
        WinSetTrans($hGui, '', $i)
        Sleep($iSleep)
    Next
EndFunc

Func _GuiFadeOut($hGui, $iSleep = 10)
    For $i = 255 To 0 Step -5
        WinSetTrans($hGui, '', $i)
        Sleep($iSleep)
    Next
EndFunc

Func _ExistsNotAllowedCharacters($sString)
    If StringInStr($sString, '\') <> 0 Then Return True
    If StringInStr($sString, '/') <> 0 Then Return True
    If StringInStr($sString, ':') <> 0 Then Return True
    If StringInStr($sString, '*') <> 0 Then Return True
    If StringInStr($sString, '?') <> 0 Then Return True
    If StringInStr($sString, '"') <> 0 Then Return True
    If StringInStr($sString, '<') <> 0 Then Return True
    If StringInStr($sString, '>') <> 0 Then Return True
    If StringInStr($sString, '|') <> 0 Then Return True

    Return False
EndFunc

Func _WriteFile($sFile, $sText)
    Local $hFile = FileOpen($sFile, 2 + 8 + 256)
    FileWrite($hFile, $sText)
    FileClose($hFile)
EndFunc
