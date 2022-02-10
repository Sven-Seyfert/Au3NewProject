; compiler information for AutoIt
#pragma compile(CompanyName, © SOLVE SMART)
#pragma compile(FileVersion, 1.5.0)
#pragma compile(LegalCopyright, © Sven Seyfert)
#pragma compile(ProductName, Au3NewProject)
#pragma compile(ProductVersion, 1.5.0 - 2022-02-10)

#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\media\favicon.ico
#AutoIt3Wrapper_Outfile_x64=..\build\Au3NewProject.exe
#AutoIt3Wrapper_UseUpx=n
#AutoIt3Wrapper_UseX64=y



; opt and just singleton -------------------------------------------------------
Opt('MustDeclareVars', 1)
Global $aInst = ProcessList('Au3NewProject.exe')
If $aInst[0][0] > 1 Then Exit



; includes ---------------------------------------------------------------------
#include-once
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>



; references -------------------------------------------------------------------
#include "Enum.au3"
#include "GuiDeclaration.au3"
#include "Gui.au3"
#include "Declaration.au3"
#include "GuiFunctions.au3"
#include "Functions.au3"
#include "BasicFunctions.au3"



; processing -------------------------------------------------------------------
_showGui()

AdlibRegister('_hoverActions', 150)
HotKeySet('+{TAB}', '_toggleInput')
HotKeySet('{TAB}', '_toggleInput')

While 1
    Switch GUIGetMsg()
        Case $aCloseX[$eBackground]
            _exit()

        Case $aTagOne[$eBackground]
            $bHtmlProject = False
            _setBorderColor($aTagTwo, $aTagTwo[$eBorderColor])
            GUICtrlSetData($aKindOfProject[$eLabel], 'AutoIt App (Default)')

        Case $aTagTwo[$eBackground]
            $bHtmlProject = True
            _setBorderColor($aTagOne, $aTagOne[$eBorderColor])
            GUICtrlSetData($aKindOfProject[$eLabel], 'AutoIt App (with Web structure)')

        Case $GUI_EVENT_PRIMARYUP
            Switch GUIGetCursorInfo()[4]
                Case $aProjectName[$eInput], $aProjectName[$eBackground]
                    _setControlFocusWithoutSelectedText($aProjectName)
                    _setBorderColor($aProjectName, $aColor[$eBlue])
                    _setBorderColor($aLocation, $aColor[$eBorder])
                    _setBorderColor($aGithubUsername, $aColor[$eBorder])
                    _setBorderColor($aGithubDefaultBranch, $aColor[$eBorder])

                Case $aLocation[$eInput]
                    _setControlFocusWithoutSelectedText($aLocation)
                    _setBorderColor($aProjectName, $aColor[$eBorder])
                    _setBorderColor($aLocation, $aColor[$eBlue])
                    _setBorderColor($aGithubUsername, $aColor[$eBorder])
                    _setBorderColor($aGithubDefaultBranch, $aColor[$eBorder])

                Case $aGithubUsername[$eInput]
                    _setControlFocusWithoutSelectedText($aGithubUsername)
                    _setBorderColor($aProjectName, $aColor[$eBorder])
                    _setBorderColor($aLocation, $aColor[$eBorder])
                    _setBorderColor($aGithubUsername, $aColor[$eBlue])
                    _setBorderColor($aGithubDefaultBranch, $aColor[$eBorder])

                Case $aGithubDefaultBranch[$eInput]
                    _setControlFocusWithoutSelectedText($aGithubDefaultBranch)
                    _setBorderColor($aProjectName, $aColor[$eBorder])
                    _setBorderColor($aLocation, $aColor[$eBorder])
                    _setBorderColor($aGithubUsername, $aColor[$eBorder])
                    _setBorderColor($aGithubDefaultBranch, $aColor[$eBlue])
            EndSwitch

        Case $aCheckboxStart[$eCheckbox], $aCheckboxStart[$eLabel]
            _toggleCheckboxStart()

        Case $aCheckboxGithub[$eCheckbox], $aCheckboxGithub[$eLabel]
            _toggleCheckboxGithub()

        Case $aButtonBrowse[$eBackground]
            _toggleInput()
            WinSetOnTop($aGui[$eHandle], '', 0)
            GUICtrlSetData($aLocation[$eInput], FileSelectFolder('Choose folder', @DesktopDir))
            WinSetOnTop($aGui[$eHandle], '', 1)

        Case $aButtonCreate[$eBackground]
            If FileExists(GUICtrlRead($aLocation[$eInput])) Then
                If Not _existsNotAllowedCharacters(GUICtrlRead($aProjectName[$eInput])) Then
                    _setupPaths()
                    _setupFiles()
                    _setupContent()

                    _createFolders()
                    _createFiles()
                    _fillProjectFile()
                    _fillGithubRelatedFiles()
                    _openInVisualStudioCode()

                    _exit()
                EndIf
            EndIf
    EndSwitch
WEnd
