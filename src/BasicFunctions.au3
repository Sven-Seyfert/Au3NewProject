Func _guiFadeIn($hGui, $iSleep = 10)
    For $i = 0 To 255 Step 5
        WinSetTrans($hGui, '', $i)
        Sleep($iSleep)
    Next
EndFunc

Func _guiFadeOut($hGui, $iSleep = 10)
    For $i = 255 To 0 Step -5
        WinSetTrans($hGui, '', $i)
        Sleep($iSleep)
    Next
EndFunc

Func _existsNotAllowedCharacters($sString)
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

Func _writeFile($sFile, $sText)
    Local $hFile = FileOpen($sFile, 2 + 8 + 256)
    FileWrite($hFile, $sText)
    FileClose($hFile)
EndFunc
