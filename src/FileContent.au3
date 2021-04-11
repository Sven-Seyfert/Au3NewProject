Func _setupContent()
    $aContent[$eFileProject] = _
        '; compiler information for AutoIt' & @CRLF & _
        '#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y' & @CRLF & _
        '#AutoIt3Wrapper_Icon=..\media\favicon.ico' & @CRLF & _
        '#AutoIt3Wrapper_Outfile_x64=..\build\' & GUICtrlRead( $aProjectName[$eInput] ) & @CRLF & _
        '#AutoIt3Wrapper_Res_Description=' & GUICtrlRead( $aProjectName[$eInput] ) & ' (' & @YEAR & '-' & @MON & '-' & @MDAY & ')' & @CRLF & _
        '#AutoIt3Wrapper_Res_Fileversion=0.1' & @CRLF & _
        '#AutoIt3Wrapper_UseUpx=n' & @CRLF & _
        '#AutoIt3Wrapper_UseX64=y' & @CRLF & _
        @CRLF & _
        @CRLF & _
        @CRLF & _
        '; opt and just singleton -------------------------------------------------------' & @CRLF & _
        'Opt( ''MustDeclareVars'', 1 )' & @CRLF & _
        'Global $aInst = ProcessList( ''' & GUICtrlRead( $aProjectName[$eInput] ) & '.exe'' )' & @CRLF & _
        'If $aInst[0][0] > 1 Then Exit' & @CRLF & _
        @CRLF & _
        @CRLF & _
        @CRLF & _
        '; includes ---------------------------------------------------------------------' & @CRLF & _
        '#include-once' & @CRLF & _
        '#include <GuiConstantsEx.au3>' & @CRLF & _
        '#include <WindowsConstants.au3>' & @CRLF & _
        @CRLF & _
        @CRLF & _
        @CRLF & _
        '; references -------------------------------------------------------------------' & @CRLF & _
        '#include "Enum.au3"' & @CRLF & _
        '#include "Init.au3"' & @CRLF & _
        '#include "Declaration.au3"' & @CRLF & _
        '#include "Gui.au3"' & @CRLF & _
        '#include "GuiFunctions.au3"' & @CRLF & _
        '#include "Functions.au3"' & @CRLF & _
        '#include "BasicFunctions.au3"' & @CRLF & _
        @CRLF & _
        @CRLF & _
        @CRLF & _
        '; processing -------------------------------------------------------------------' & @CRLF & _
        'While 1' & @CRLF & _
        '    Switch GUIGetMsg()' & @CRLF & _
        '        Case -3' & @CRLF & _
        '            Exit' & @CRLF & _
        '    EndSwitch' & @CRLF & _
        'WEnd'

    $aContent[$eFileBugReport] = _
        '---' & @CRLF & _
        'name: Bug report' & @CRLF & _
        'about: Create a report to help to improve the project' & @CRLF & _
        'title: ''''' & @CRLF & _
        'labels: ''''' & @CRLF & _
        'assignees: ''''' & @CRLF & _
        @CRLF & _
        '---' & @CRLF & _
        @CRLF & _
        '**Describe the bug**' & @CRLF & _
        'A clear and concise description of what the bug is.' & @CRLF & _
        @CRLF & _
        '**To Reproduce**' & @CRLF & _
        'Steps to reproduce the behavior:' & @CRLF & _
        '1. Go to ''...''' & @CRLF & _
        '2. Click on ''....''' & @CRLF & _
        '3. Scroll down to ''....''' & @CRLF & _
        '4. See error' & @CRLF & _
        @CRLF & _
        '**Expected behavior**' & @CRLF & _
        'A clear and concise description of what you expected to happen.' & @CRLF & _
        @CRLF & _
        '**Screenshots**' & @CRLF & _
        'If applicable, add screenshots to help explain your problem.' & @CRLF & _
        @CRLF & _
        '**SUT (system under test)**' & @CRLF & _
        'Please execute the following function and copy the console result here.' & @CRLF & _
        @CRLF & _
        '``` au3' & @CRLF & _
        'Func _getSystemInfos()' & @CRLF & _
        '    ConsoleWrite( ''@AutoItExe:      '' & @AutoItExe     & @CRLF )' & @CRLF & _
        '    ConsoleWrite( ''@AutoItVersion:  '' & @AutoItVersion & @CRLF )' & @CRLF & _
        '    ConsoleWrite( ''@CPUArch:        '' & @CPUArch       & @CRLF )' & @CRLF & _
        '    ConsoleWrite( ''@OSArch:         '' & @OSArch        & @CRLF )' & @CRLF & _
        '    ConsoleWrite( ''@OSVersion:      '' & @OSVersion     & @CRLF )' & @CRLF & _
        'EndFunc' & @CRLF & _
        '_getSystemInfos()' & @CRLF & _
        '```' & @CRLF & _
        @CRLF & _
        '**Additional context**' & @CRLF & _
        'Add any other context about the problem here.'& @CRLF

    $aContent[$eFileCodeOfConduct] = _
        '# Contributor Covenant Code of Conduct' & @CRLF & _
        @CRLF & _
        '## Our Pledge' & @CRLF & _
        @CRLF & _
        'In the interest of fostering an open and welcoming environment, we as' & @CRLF & _
        'contributors and maintainers pledge to making participation in our project and' & @CRLF & _
        'our community a harassment-free experience for everyone, regardless of age, body' & @CRLF & _
        'size, disability, ethnicity, sex characteristics, gender identity and expression,' & @CRLF & _
        'level of experience, education, socio-economic status, nationality, personal' & @CRLF & _
        'appearance, race, religion, or sexual identity and orientation.' & @CRLF & _
        @CRLF & _
        '## Our Standards' & @CRLF & _
        @CRLF & _
        'Examples of behavior that contributes to creating a positive environment' & @CRLF & _
        'include:' & @CRLF & _
        @CRLF & _
        '* Using welcoming and inclusive language' & @CRLF & _
        '* Being respectful of differing viewpoints and experiences' & @CRLF & _
        '* Gracefully accepting constructive criticism' & @CRLF & _
        '* Focusing on what is best for the community' & @CRLF & _
        '* Showing empathy towards other community members' & @CRLF & _
        @CRLF & _
        'Examples of unacceptable behavior by participants include:' & @CRLF & _
        @CRLF & _
        '* The use of sexualized language or imagery and unwelcome sexual attention or' & @CRLF & _
        ' advances' & @CRLF & _
        '* Trolling, insulting/derogatory comments, and personal or political attacks' & @CRLF & _
        '* Public or private harassment' & @CRLF & _
        '* Publishing others'' private information, such as a physical or electronic' & @CRLF & _
        ' address, without explicit permission' & @CRLF & _
        '* Other conduct which could reasonably be considered inappropriate in a' & @CRLF & _
        ' professional setting' & @CRLF & _
        @CRLF & _
        '## Our Responsibilities' & @CRLF & _
        @CRLF & _
        'Project maintainers are responsible for clarifying the standards of acceptable' & @CRLF & _
        'behavior and are expected to take appropriate and fair corrective action in' & @CRLF & _
        'response to any instances of unacceptable behavior.' & @CRLF & _
        @CRLF & _
        'Project maintainers have the right and responsibility to remove, edit, or' & @CRLF & _
        'reject comments, commits, code, wiki edits, issues, and other contributions' & @CRLF & _
        'that are not aligned to this Code of Conduct, or to ban temporarily or' & @CRLF & _
        'permanently any contributor for other behaviors that they deem inappropriate,' & @CRLF & _
        'threatening, offensive, or harmful.' & @CRLF & _
        @CRLF & _
        '## Scope' & @CRLF & _
        @CRLF & _
        'This Code of Conduct applies both within project spaces and in public spaces' & @CRLF & _
        'when an individual is representing the project or its community. Examples of' & @CRLF & _
        'representing a project or community include using an official project e-mail' & @CRLF & _
        'address, posting via an official social media account, or acting as an appointed' & @CRLF & _
        'representative at an online or offline event. Representation of a project may be' & @CRLF & _
        'further defined and clarified by project maintainers.' & @CRLF & _
        @CRLF & _
        '## Enforcement' & @CRLF & _
        @CRLF & _
        'Instances of abusive, harassing, or otherwise unacceptable behavior may be' & @CRLF & _
        'reported by contacting the project team at info@sven-seyfert.de. All' & @CRLF & _
        'complaints will be reviewed and investigated and will result in a response that' & @CRLF & _
        'is deemed necessary and appropriate to the circumstances. The project team is' & @CRLF & _
        'obligated to maintain confidentiality with regard to the reporter of an incident.' & @CRLF & _
        'Further details of specific enforcement policies may be posted separately.' & @CRLF & _
        @CRLF & _
        'Project maintainers who do not follow or enforce the Code of Conduct in good' & @CRLF & _
        'faith may face temporary or permanent repercussions as determined by other' & @CRLF & _
        'members of the project''s leadership.' & @CRLF & _
        @CRLF & _
        '## Attribution' & @CRLF & _
        @CRLF & _
        'This Code of Conduct is adapted from the [Contributor Covenant][homepage], version 1.4,' & @CRLF & _
        'available at https://www.contributor-covenant.org/version/1/4/code-of-conduct.html' & @CRLF & _
        @CRLF & _
        '[homepage]: https://www.contributor-covenant.org' & @CRLF & _
        @CRLF & _
        'For answers to common questions about this code of conduct, see' & @CRLF & _
        'https://www.contributor-covenant.org/faq' & @CRLF

    $aContent[$eFileContributing] = _
        '# Contributing' & @CRLF & _
        @CRLF & _
        '> First off, thanks for taking the time to contribute, I appreciate it.' & @CRLF & _
        @CRLF & _
        '## Preparing' & @CRLF & _
        @CRLF & _
        '- Please ensure that you have read and noticed the [CODE OF CONDUCT](https://github.com/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '/blob/' & GUICtrlRead( $aGithubDefaultBranch[$eInput] ) & '/docs/CODE_OF_CONDUCT.md) document.' & @CRLF & _
        '- Please also notice that I try to use some Clean Code aspects for my code. So if it''s possible for you, please also keep that in mind, thanks. If you have questions about it, please contact me.' & @CRLF & _
        @CRLF & _
        '## Contribution' & @CRLF & _
        @CRLF & _
        '- Check out the code, leave feedback and requests (for various topics, see types below).' & @CRLF & _
        '- Please fork the repository and contribute using pull requests.' & @CRLF & _
        @CRLF & _
        '## Pull request type' & @CRLF & _
        @CRLF & _
        'Commonly your pull request should be one of the following types:' & @CRLF & _
        '- Bugfix' & @CRLF & _
        '- Feature' & @CRLF & _
        '- Code style update (formatting, renaming)' & @CRLF & _
        '- Refactoring (functional, structural)' & @CRLF & _
        '- Documentation content changes' & @CRLF & _
        @CRLF & _
        'If it''s another type, please describe.' & @CRLF & _
        @CRLF & _
        '> Thank you!' & @CRLF

    $aContent[$eFileFeatureRequest] = _
        '---' & @CRLF & _
        'name: Feature request' & @CRLF & _
        'about: Suggest an idea for this project' & @CRLF & _
        'title: ''''' & @CRLF & _
        'labels: ''''' & @CRLF & _
        'assignees: ''''' & @CRLF & _
        @CRLF & _
        '---' & @CRLF & _
        @CRLF & _
        '**Is your feature request related to a problem? Please describe.**' & @CRLF & _
        'A clear and concise description of what the problem is. Ex. I''m always frustrated when [...]' & @CRLF & _
        @CRLF & _
        '**Describe the solution you''d like**' & @CRLF & _
        'A clear and concise description of what you want to happen.' & @CRLF & _
        @CRLF & _
        '**Describe alternatives you''ve considered**' & @CRLF & _
        'A clear and concise description of any alternative solutions or features you''ve considered.' & @CRLF & _
        @CRLF & _
        '**Additional context**' & @CRLF & _
        'Add any other context or screenshots about the feature request here.' & @CRLF

    $aContent[$eFilePullRequestTemplate] = _
        '## Proposed changes' & @CRLF & _
        @CRLF & _
        'Describe the big picture of your changes here to communicate to the maintainers why we should accept this pull request. Please ensure you have read and noticed the checklist below.' & @CRLF & _
        @CRLF & _
        '## Pull request checklist' & @CRLF & _
        @CRLF & _
        'Put an `x` in the boxes that apply. If you''re unsure about any of them, don''t hesitate to ask. I''m here to help! This is simply a reminder of what we are going to look for before merging your code.' & @CRLF & _
        @CRLF & _
        '- [ ] I have read and noticed the [CODE OF CONDUCT](https://github.com/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '/blob/' & GUICtrlRead( $aGithubDefaultBranch[$eInput] ) & '/docs/CODE_OF_CONDUCT.md) document' & @CRLF & _
        '- [ ] I have read and noticed the [CONTRIBUTING](https://github.com/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '/blob/' & GUICtrlRead( $aGithubDefaultBranch[$eInput] ) & '/docs/CONTRIBUTING.md) document' & @CRLF & _
        '- [ ] I have added necessary documentation or screenshots (if appropriate)' & @CRLF & _
        @CRLF & _
        '## Pull request type' & @CRLF & _
        @CRLF & _
        'Please check the type of change your PR introduces:' & @CRLF & _
        '- [ ] Bugfix' & @CRLF & _
        '- [ ] Feature' & @CRLF & _
        '- [ ] Code style update (formatting, renaming)' & @CRLF & _
        '- [ ] Refactoring (functional, structural)' & @CRLF & _
        '- [ ] Documentation content changes' & @CRLF & _
        '- [ ] Other (please describe):' & @CRLF & _
        @CRLF & _
        '## What is the current behavior?' & @CRLF & _
        @CRLF & _
        'Please describe the current behavior that you are modifying, or link to a relevant issue.' & @CRLF & _
        @CRLF & _
        '## What is the new behavior?' & @CRLF & _
        @CRLF & _
        'Please describe the behavior or changes that are being added by this PR.' & @CRLF & _
        @CRLF & _
        '## What is your SUT (system under test)?' & @CRLF & _
        @CRLF & _
        'Please execute the following function and copy the console result here. Just to ensure your changes won''t affect other versions negatively.' & @CRLF & _
        @CRLF & _
        '``` au3' & @CRLF & _
        'Func _getSystemInfos()' & @CRLF & _
        '    ConsoleWrite( ''@AutoItExe:      '' & @AutoItExe     & @CRLF )' & @CRLF & _
        '    ConsoleWrite( ''@AutoItVersion:  '' & @AutoItVersion & @CRLF )' & @CRLF & _
        '    ConsoleWrite( ''@CPUArch:        '' & @CPUArch       & @CRLF )' & @CRLF & _
        '    ConsoleWrite( ''@OSArch:         '' & @OSArch        & @CRLF )' & @CRLF & _
        '    ConsoleWrite( ''@OSVersion:      '' & @OSVersion     & @CRLF )' & @CRLF & _
        'EndFunc' & @CRLF & _
        '_getSystemInfos()' & @CRLF & _
        '```' & @CRLF & _
        @CRLF & _
        '## Further information' & @CRLF & _
        @CRLF & _
        'If this is a relatively large or complex change, kick off the discussion by explaining why you chose the solution you did and what alternatives you considered, etc. Thanks!' & @CRLF

    $aContent[$eFileGitIgnore] = _
        '# ignore folder _tryouts' & @CRLF & _
        '# _tryouts' & @CRLF

    $aContent[$eFileLicense] = _
        '## MIT License' & @CRLF & _
        @CRLF & _
        '#### Copyright (c) ' & @YEAR & ' Sven Seyfert' & @CRLF & _
        @CRLF & _
        '| Permissions                                                                  | Conditions                                                                                 | Limitations                                                             |' & @CRLF & _
        '| ---------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------ | ----------------------------------------------------------------------- |' & @CRLF & _
        '| ![#3DC637](https://via.placeholder.com/8/3DC637/000000?text=+) &nbsp;Commercial use | ![#0099D6](https://via.placeholder.com/8/0099D6/000000?text=+) &nbsp;License and copyright notice | ![#C6403D](https://via.placeholder.com/8/C6403D/000000?text=+) &nbsp;Liability |' & @CRLF & _
        '| ![#3DC637](https://via.placeholder.com/8/3DC637/000000?text=+) &nbsp;Distribution   |                                                                                            | ![#C6403D](https://via.placeholder.com/8/C6403D/000000?text=+) &nbsp;Warranty  |' & @CRLF & _
        '| ![#3DC637](https://via.placeholder.com/8/3DC637/000000?text=+) &nbsp;Modification   |                                                                                            |                                                                         |' & @CRLF & _
        '| ![#3DC637](https://via.placeholder.com/8/3DC637/000000?text=+) &nbsp;Private use    |                                                                                            |                                                                         |' & @CRLF & _
        @CRLF & _
        '#### License description' & @CRLF & _
        @CRLF & _
        '> Permission is hereby granted, free of charge, to any person obtaining a copy' & @CRLF & _
        '> of this software and associated documentation files (the "Software"), to deal' & @CRLF & _
        '> in the Software without restriction, including without limitation the rights' & @CRLF & _
        '> to use, copy, modify, merge, publish, distribute, sublicense, and/or sell' & @CRLF & _
        '> copies of the Software, and to permit persons to whom the Software is' & @CRLF & _
        '> furnished to do so, subject to the following conditions:' & @CRLF & _
        '>' & @CRLF & _
        '> The above copyright notice and this permission notice shall be included in all' & @CRLF & _
        '> copies or substantial portions of the Software.' & @CRLF & _
        '>' & @CRLF & _
        '> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR' & @CRLF & _
        '> IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,' & @CRLF & _
        '> FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE' & @CRLF & _
        '> AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER' & @CRLF & _
        '> LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,' & @CRLF & _
        '> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE' & @CRLF & _
        '> SOFTWARE.' & @CRLF

    $aContent[$eFileReadme] = _
        '#####' & @CRLF & _
        @CRLF & _
        '<p align="center">' & @CRLF & _
        '    <img src="https://github.com/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '/blob/' & GUICtrlRead( $aGithubDefaultBranch[$eInput] ) & '/media/favicon.ico" width="80" />' & @CRLF & _
        '    <h2 align="center">Welcome to <code>' & GUICtrlRead( $aProjectName[$eInput] ) & '</code>【ツ】</h2>' & @CRLF & _
        '</p>' & @CRLF & _
        @CRLF & _
        '![license](https://img.shields.io/badge/license-MIT-ff69b4.svg?style=flat-square&logo=spdx)' & @CRLF & _
        '![contributors](https://img.shields.io/github/contributors/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '.svg?style=flat-square&logo=github)' & @CRLF & _
        '![repo size](https://img.shields.io/github/repo-size/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '.svg?style=flat-square&logo=github)' & @CRLF & _
        '![last commit](https://img.shields.io/github/last-commit/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '.svg?style=flat-square&logo=github)' & @CRLF & _
        '![release](https://img.shields.io/github/release/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '.svg?style=flat-square&logo=github)' & @CRLF & _
        '![os](https://img.shields.io/badge/os-windows-yellow.svg?style=flat-square&logo=windows)' & @CRLF & _
        '![editor](https://img.shields.io/badge/editor-VSCode-blueviolet.svg?style=flat-square&logo=visual-studio-code)' & @CRLF & _
        @CRLF & _
        '[Description](#description) | [Features](#features) | [Getting started](#getting-started) | [Configuration](#configuration) | [Keyboard shortcuts](#keyboard-shortcuts) | [Contributing](#contributing) | [License](#license) | [Acknowledgements](#acknowledgements)' & @CRLF & _
        @CRLF & _
        '## Description' & @CRLF & _
        @CRLF & _
        '' & GUICtrlRead( $aProjectName[$eInput] ) & ' [...] description [...].' & @CRLF & _
        @CRLF & _
        '## Features' & @CRLF & _
        @CRLF & _
        'To be defined [...]' & @CRLF & _
        @CRLF & _
        '## Getting started' & @CRLF & _
        @CRLF & _
        '#### *Preconditions*' & @CRLF & _
        @CRLF & _
        'To be defined [...]' & @CRLF & _
        @CRLF & _
        '#### *Installation*' & @CRLF & _
        @CRLF & _
        'To be defined [...]' & @CRLF & _
        @CRLF & _
        '## Configuration' & @CRLF & _
        @CRLF & _
        'To be defined [...]' & @CRLF & _
        @CRLF & _
        '## Keyboard shortcuts' & @CRLF & _
        @CRLF & _
        '| Action | Shortcut |' & @CRLF & _
        '| :------| :------- |' & @CRLF & _
        '| ...    | ...      |' & @CRLF & _
        '| ...    | ...      |' & @CRLF & _
        @CRLF & _
        '## Contributing' & @CRLF & _
        @CRLF & _
        'Just look at [CONTRIBUTING](https://github.com/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '/blob/' & GUICtrlRead( $aGithubDefaultBranch[$eInput] ) & '/docs/CONTRIBUTING.md), thank you!' & @CRLF & _
        @CRLF & _
        '## License' & @CRLF & _
        @CRLF & _
        'Distributed under the MIT License. See [LICENSE](https://github.com/' & GUICtrlRead( $aGithubUsername[$eInput] ) & '/' & GUICtrlRead( $aProjectName[$eInput] ) & '/blob/' & GUICtrlRead( $aGithubDefaultBranch[$eInput] ) & '/LICENSE.md) for more information.' & @CRLF & _
        @CRLF & _
        '## Acknowledgements' & @CRLF & _
        @CRLF & _
        '- Opportunity by [GitHub](https://github.com)' & @CRLF & _
        '- Badges by [Shields](https://shields.io)' & @CRLF & _
        '- Utilities components by' & @CRLF & _
        '  - none' & @CRLF & _
        @CRLF & _
        '##' & @CRLF & _
        @CRLF & _
        '[To the top](#)' & @CRLF
EndFunc
