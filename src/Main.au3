; compiler information for AutoIt
#pragma compile(CompanyName, © SOLVE SMART)
#pragma compile(FileVersion, 1.10.0)
#pragma compile(LegalCopyright, © Sven Seyfert)
#pragma compile(ProductName, Au3NewProject)
#pragma compile(ProductVersion, 1.10.0 - 2022-08-02)

#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y
#AutoIt3Wrapper_Icon=..\media\icons\favicon.ico
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



; modules ----------------------------------------------------------------------
#include "Enum.au3"
#include "GuiDeclaration.au3"
#include "Gui.au3"
#include "Declaration.au3"
#include "GuiFunctions.au3"
#include "Functions.au3"
#include "BasicFunctions.au3"



; processing -------------------------------------------------------------------
_ShowGui()

AdlibRegister('_HoverActions', 150)
HotKeySet('+{TAB}', '_ToggleInput')
HotKeySet('{TAB}', '_ToggleInput')

While True
    Switch GUIGetMsg()
        Case $aCloseX[$eBackground]
            _Exit()

        Case $aTagOne[$eBackground]
            $bHtmlProject = False
            _SetBorderColor($aTagTwo, $aTagTwo[$eBorderColor])
            GUICtrlSetData($aKindOfProject[$eLabel], 'AutoIt App (Default)')

        Case $aTagTwo[$eBackground]
            $bHtmlProject = True
            _SetBorderColor($aTagOne, $aTagOne[$eBorderColor])
            GUICtrlSetData($aKindOfProject[$eLabel], 'AutoIt App (with Web structure)')

        Case $GUI_EVENT_PRIMARYUP
            Switch GUIGetCursorInfo()[4]
                Case $aProjectName[$eInput], $aProjectName[$eBackground]
                    _SetControlFocusWithoutSelectedText($aProjectName)
                    _SetBorderColor($aProjectName, $aColor[$eBlue])
                    _SetBorderColor($aLocation, $aColor[$eBorder])
                    _SetBorderColor($aGithubUsername, $aColor[$eBorder])
                    _SetBorderColor($aGithubDefaultBranch, $aColor[$eBorder])

                Case $aLocation[$eInput]
                    _SetControlFocusWithoutSelectedText($aLocation)
                    _SetBorderColor($aProjectName, $aColor[$eBorder])
                    _SetBorderColor($aLocation, $aColor[$eBlue])
                    _SetBorderColor($aGithubUsername, $aColor[$eBorder])
                    _SetBorderColor($aGithubDefaultBranch, $aColor[$eBorder])

                Case $aGithubUsername[$eInput]
                    _SetControlFocusWithoutSelectedText($aGithubUsername)
                    _SetBorderColor($aProjectName, $aColor[$eBorder])
                    _SetBorderColor($aLocation, $aColor[$eBorder])
                    _SetBorderColor($aGithubUsername, $aColor[$eBlue])
                    _SetBorderColor($aGithubDefaultBranch, $aColor[$eBorder])

                Case $aGithubDefaultBranch[$eInput]
                    _SetControlFocusWithoutSelectedText($aGithubDefaultBranch)
                    _SetBorderColor($aProjectName, $aColor[$eBorder])
                    _SetBorderColor($aLocation, $aColor[$eBorder])
                    _SetBorderColor($aGithubUsername, $aColor[$eBorder])
                    _SetBorderColor($aGithubDefaultBranch, $aColor[$eBlue])
            EndSwitch

        Case $aCheckboxStart[$eCheckbox], $aCheckboxStart[$eLabel]
            _ToggleCheckboxStart()

        Case $aCheckboxGithub[$eCheckbox], $aCheckboxGithub[$eLabel]
            _ToggleCheckboxGithub()

        Case $aButtonBrowse[$eBackground]
            _ToggleInput()
            WinSetOnTop($aGui[$eHandle], '', 0)
            GUICtrlSetData($aLocation[$eInput], FileSelectFolder('Choose folder', @DesktopDir))
            WinSetOnTop($aGui[$eHandle], '', 1)

        Case $aButtonCreate[$eBackground]
            If FileExists(GUICtrlRead($aLocation[$eInput])) Then
                If Not _ExistsNotAllowedCharacters(GUICtrlRead($aProjectName[$eInput])) Then
                    _SetupPaths()
                    _SetupFiles()
                    _SetupContent()

                    _CreateFolders()
                    _CreateFiles()
                    _FillProjectFiles()
                    _FillGithubRelatedFiles()
                    _OpenInVisualStudioCode()

                    _Exit()
                EndIf
            EndIf
    EndSwitch
WEnd
