Func _setupContent()
    $aContent[$eFileProject] = _
        '; compiler information for AutoIt' & @CRLF & _
        '#pragma compile(CompanyName, © SOLVE SMART)' & @CRLF & _
        '#pragma compile(FileVersion, 1.0.0)' & @CRLF & _
        '#pragma compile(LegalCopyright, © Sven Seyfert)' & @CRLF & _
        '#pragma compile(ProductName, ' & GUICtrlRead($aProjectName[$eInput]) & ')' & @CRLF & _
        '#pragma compile(ProductVersion, 1.0.0 - ' & @YEAR & '-' & @MON & '-' & @MDAY & ')' & @CRLF & _
        @CRLF & _
        '#AutoIt3Wrapper_AU3Check_Stop_OnWarning=y' & @CRLF & _
        '#AutoIt3Wrapper_Icon=..\media\favicon.ico' & @CRLF & _
        '#AutoIt3Wrapper_Outfile_x64=..\build\' & GUICtrlRead($aProjectName[$eInput]) & '.exe' & @CRLF & _
        '#AutoIt3Wrapper_UseUpx=n' & @CRLF & _
        '#AutoIt3Wrapper_UseX64=y' & @CRLF & _
        @CRLF & _
        @CRLF & _
        @CRLF & _
        '; opt and just singleton -------------------------------------------------------' & @CRLF & _
        'Opt(''MustDeclareVars'', 1)' & @CRLF & _
        'Global $aInst = ProcessList(''' & GUICtrlRead($aProjectName[$eInput]) & '.exe'')' & @CRLF & _
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
        '    ConsoleWrite(''@AutoItExe:      '' & @AutoItExe     & @CRLF)' & @CRLF & _
        '    ConsoleWrite(''@AutoItVersion:  '' & @AutoItVersion & @CRLF)' & @CRLF & _
        '    ConsoleWrite(''@CPUArch:        '' & @CPUArch       & @CRLF)' & @CRLF & _
        '    ConsoleWrite(''@OSArch:         '' & @OSArch        & @CRLF)' & @CRLF & _
        '    ConsoleWrite(''@OSVersion:      '' & @OSVersion     & @CRLF)' & @CRLF & _
        'EndFunc' & @CRLF & _
        '_getSystemInfos()' & @CRLF & _
        '```' & @CRLF & _
        @CRLF & _
        '**Additional context**' & @CRLF & _
        'Add any other context about the problem here.'& @CRLF

    Local $sContactAddress = 'info@sven-seyfert.de'

    $aContent[$eFileCodeOfConduct] = _
        @CRLF & _
        '# Contributor Covenant Code of Conduct' & @CRLF & _
        @CRLF & _
        '## Our Pledge' & @CRLF & _
        @CRLF & _
        'We as members, contributors, and leaders pledge to make participation in our' & @CRLF & _
        'community a harassment-free experience for everyone, regardless of age, body' & @CRLF & _
        'size, visible or invisible disability, ethnicity, sex characteristics, gender' & @CRLF & _
        'identity and expression, level of experience, education, socio-economic status,' & @CRLF & _
        'nationality, personal appearance, race, caste, color, religion, or sexual' & @CRLF & _
        'identity and orientation.' & @CRLF & _
        @CRLF & _
        'We pledge to act and interact in ways that contribute to an open, welcoming,' & @CRLF & _
        'diverse, inclusive, and healthy community.' & @CRLF & _
        @CRLF & _
        '## Our Standards' & @CRLF & _
        @CRLF & _
        'Examples of behavior that contributes to a positive environment for our' & @CRLF & _
        'community include:' & @CRLF & _
        @CRLF & _
        '* Demonstrating empathy and kindness toward other people' & @CRLF & _
        '* Being respectful of differing opinions, viewpoints, and experiences' & @CRLF & _
        '* Giving and gracefully accepting constructive feedback' & @CRLF & _
        '* Accepting responsibility and apologizing to those affected by our mistakes,' & @CRLF & _
        '  and learning from the experience' & @CRLF & _
        '* Focusing on what is best not just for us as individuals, but for the overall' & @CRLF & _
        '  community' & @CRLF & _
        @CRLF & _
        'Examples of unacceptable behavior include:' & @CRLF & _
        @CRLF & _
        '* The use of sexualized language or imagery, and sexual attention or advances of' & @CRLF & _
        '  any kind' & @CRLF & _
        '* Trolling, insulting or derogatory comments, and personal or political attacks' & @CRLF & _
        '* Public or private harassment' & @CRLF & _
        '* Publishing others'' private information, such as a physical or email address,' & @CRLF & _
        '  without their explicit permission' & @CRLF & _
        '* Other conduct which could reasonably be considered inappropriate in a' & @CRLF & _
        '  professional setting' & @CRLF & _
        @CRLF & _
        '## Enforcement Responsibilities' & @CRLF & _
        @CRLF & _
        'Community leaders are responsible for clarifying and enforcing our standards of' & @CRLF & _
        'acceptable behavior and will take appropriate and fair corrective action in' & @CRLF & _
        'response to any behavior that they deem inappropriate, threatening, offensive,' & @CRLF & _
        'or harmful.' & @CRLF & _
        @CRLF & _
        'Community leaders have the right and responsibility to remove, edit, or reject' & @CRLF & _
        'comments, commits, code, wiki edits, issues, and other contributions that are' & @CRLF & _
        'not aligned to this Code of Conduct, and will communicate reasons for moderation' & @CRLF & _
        'decisions when appropriate.' & @CRLF & _
        @CRLF & _
        '## Scope' & @CRLF & _
        @CRLF & _
        'This Code of Conduct applies within all community spaces, and also applies when' & @CRLF & _
        'an individual is officially representing the community in public spaces.' & @CRLF & _
        'Examples of representing our community include using an official e-mail address,' & @CRLF & _
        'posting via an official social media account, or acting as an appointed' & @CRLF & _
        'representative at an online or offline event.' & @CRLF & _
        @CRLF & _
        '## Enforcement' & @CRLF & _
        @CRLF & _
        'Instances of abusive, harassing, or otherwise unacceptable behavior may be' & @CRLF & _
        'reported to the community leaders responsible for enforcement at' & @CRLF & _
        '' & $sContactAddress & '.' & @CRLF & _
        'All complaints will be reviewed and investigated promptly and fairly.' & @CRLF & _
        @CRLF & _
        'All community leaders are obligated to respect the privacy and security of the' & @CRLF & _
        'reporter of any incident.' & @CRLF & _
        @CRLF & _
        '## Enforcement Guidelines' & @CRLF & _
        @CRLF & _
        'Community leaders will follow these Community Impact Guidelines in determining' & @CRLF & _
        'the consequences for any action they deem in violation of this Code of Conduct:' & @CRLF & _
        @CRLF & _
        '### 1. Correction' & @CRLF & _
        @CRLF & _
        '**Community Impact**: Use of inappropriate language or other behavior deemed' & @CRLF & _
        'unprofessional or unwelcome in the community.' & @CRLF & _
        @CRLF & _
        '**Consequence**: A private, written warning from community leaders, providing' & @CRLF & _
        'clarity around the nature of the violation and an explanation of why the' & @CRLF & _
        'behavior was inappropriate. A public apology may be requested.' & @CRLF & _
        @CRLF & _
        '### 2. Warning' & @CRLF & _
        @CRLF & _
        '**Community Impact**: A violation through a single incident or series of' & @CRLF & _
        'actions.' & @CRLF & _
        @CRLF & _
        '**Consequence**: A warning with consequences for continued behavior. No' & @CRLF & _
        'interaction with the people involved, including unsolicited interaction with' & @CRLF & _
        'those enforcing the Code of Conduct, for a specified period of time. This' & @CRLF & _
        'includes avoiding interactions in community spaces as well as external channels' & @CRLF & _
        'like social media. Violating these terms may lead to a temporary or permanent' & @CRLF & _
        'ban.' & @CRLF & _
        @CRLF & _
        '### 3. Temporary Ban' & @CRLF & _
        @CRLF & _
        '**Community Impact**: A serious violation of community standards, including' & @CRLF & _
        'sustained inappropriate behavior.' & @CRLF & _
        @CRLF & _
        '**Consequence**: A temporary ban from any sort of interaction or public' & @CRLF & _
        'communication with the community for a specified period of time. No public or' & @CRLF & _
        'private interaction with the people involved, including unsolicited interaction' & @CRLF & _
        'with those enforcing the Code of Conduct, is allowed during this period.' & @CRLF & _
        'Violating these terms may lead to a permanent ban.' & @CRLF & _
        @CRLF & _
        '### 4. Permanent Ban' & @CRLF & _
        @CRLF & _
        '**Community Impact**: Demonstrating a pattern of violation of community' & @CRLF & _
        'standards, including sustained inappropriate behavior, harassment of an' & @CRLF & _
        'individual, or aggression toward or disparagement of classes of individuals.' & @CRLF & _
        @CRLF & _
        '**Consequence**: A permanent ban from any sort of public interaction within the' & @CRLF & _
        'community.' & @CRLF & _
        @CRLF & _
        '## Attribution' & @CRLF & _
        @CRLF & _
        'This Code of Conduct is adapted from the [Contributor Covenant][homepage],' & @CRLF & _
        'version 2.1, available at' & @CRLF & _
        '[https://www.contributor-covenant.org/version/2/1/code_of_conduct.html][v2.1].' & @CRLF & _
        @CRLF & _
        'Community Impact Guidelines were inspired by' & @CRLF & _
        '[Mozilla''s code of conduct enforcement ladder][Mozilla CoC].' & @CRLF & _
        @CRLF & _
        'For answers to common questions about this code of conduct, see the FAQ at' & @CRLF & _
        '[https://www.contributor-covenant.org/faq][FAQ]. Translations are available at' & @CRLF & _
        '[https://www.contributor-covenant.org/translations][translations].' & @CRLF & _
        @CRLF & _
        '[homepage]: https://www.contributor-covenant.org' & @CRLF & _
        '[v2.1]: https://www.contributor-covenant.org/version/2/1/code_of_conduct.html' & @CRLF & _
        '[Mozilla CoC]: https://github.com/mozilla/diversity' & @CRLF & _
        '[FAQ]: https://www.contributor-covenant.org/faq' & @CRLF & _
        '[translations]: https://www.contributor-covenant.org/translations' & @CRLF

    $aContent[$eFileContributing] = _
        '# Contributing' & @CRLF & _
        @CRLF & _
        '> First off, thanks for taking the time to contribute, I appreciate it.' & @CRLF & _
        @CRLF & _
        '## Preparing' & @CRLF & _
        @CRLF & _
        '- Please ensure that you have read and noticed the [CODE OF CONDUCT](https://github.com/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '/blob/' & GUICtrlRead($aGithubDefaultBranch[$eInput]) & '/docs/CODE_OF_CONDUCT.md) document.' & @CRLF & _
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
        '- [ ] I have read and noticed the [CODE OF CONDUCT](https://github.com/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '/blob/' & GUICtrlRead($aGithubDefaultBranch[$eInput]) & '/docs/CODE_OF_CONDUCT.md) document' & @CRLF & _
        '- [ ] I have read and noticed the [CONTRIBUTING](https://github.com/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '/blob/' & GUICtrlRead($aGithubDefaultBranch[$eInput]) & '/docs/CONTRIBUTING.md) document' & @CRLF & _
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
        '    ConsoleWrite(''@AutoItExe:      '' & @AutoItExe     & @CRLF)' & @CRLF & _
        '    ConsoleWrite(''@AutoItVersion:  '' & @AutoItVersion & @CRLF)' & @CRLF & _
        '    ConsoleWrite(''@CPUArch:        '' & @CPUArch       & @CRLF)' & @CRLF & _
        '    ConsoleWrite(''@OSArch:         '' & @OSArch        & @CRLF)' & @CRLF & _
        '    ConsoleWrite(''@OSVersion:      '' & @OSVersion     & @CRLF)' & @CRLF & _
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

    $aContent[$eFileChangelog] = _
        '#####' & @CRLF & _
        @CRLF & _
        '# Changelog' & @CRLF & _
        @CRLF & _
        'All notable changes to "' & GUICtrlRead($aProjectName[$eInput]) & '" will be documented in this file.' & @CRLF & _
        @CRLF & _
        'The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),' & @CRLF & _
        'and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).' & @CRLF & _
        @CRLF & _
        'Go to [legend](#legend---types-of-changes) for further information about the types of changes.' & @CRLF & _
        @CRLF & _
        '## [1.0.0] - ' & @YEAR & '-' & @MON & '-' & @MDAY & @CRLF & _
        @CRLF & _
        '### Added' & @CRLF & _
        @CRLF & _
        '- All repository data and dependencies.' & @CRLF & _
        @CRLF & _
        '[1.0.0]: https://github.com/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '/releases/tag/v1.0.0' & @CRLF & _
        @CRLF & _
        '---' & @CRLF & _
        @CRLF & _
        '### Legend - Types of changes' & @CRLF & _
        @CRLF & _
        '- `Added` for new features.' & @CRLF & _
        '- `Changed` for changes in existing functionality.' & @CRLF & _
        '- `Deprecated` for soon-to-be removed features.' & @CRLF & _
        '- `Fixed` for any bug fixes.' & @CRLF & _
        '- `Removed` for now removed features.' & @CRLF & _
        '- `Security` in case of vulnerabilities.' & @CRLF & _
        @CRLF & _
        '##' & @CRLF & _
        @CRLF & _
        '[To the top](#)' & @CRLF

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
        '    <img src="images/icon.png" width="80" />' & @CRLF & _
        '    <h2 align="center">Welcome to <code>' & GUICtrlRead($aProjectName[$eInput]) & '</code>【ツ】</h2>' & @CRLF & _
        '</p>' & @CRLF & _
        @CRLF & _
        '![license](https://img.shields.io/badge/license-MIT-ff69b4.svg?style=flat-square&logo=spdx)' & @CRLF & _
        '![contributors](https://img.shields.io/github/contributors/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '.svg?style=flat-square&logo=github)' & @CRLF & _
        '![repo size](https://img.shields.io/github/repo-size/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '.svg?style=flat-square&logo=github)' & @CRLF & _
        '![last commit](https://img.shields.io/github/last-commit/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '.svg?style=flat-square&logo=github)' & @CRLF & _
        '![release](https://img.shields.io/github/release/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '.svg?style=flat-square&logo=github)' & @CRLF & _
        '![os](https://img.shields.io/badge/os-windows-yellow.svg?style=flat-square&logo=windows)' & @CRLF & _
        '![editor](https://img.shields.io/badge/editor-VSCode-blueviolet.svg?style=flat-square&logo=visual-studio-code)' & @CRLF & _
        @CRLF & _
        '[Description](#description) | [Features](#features) | [Getting started](#getting-started) | [Configuration](#configuration) | [Keyboard shortcuts](#keyboard-shortcuts) | [Contributing](#contributing) | [License](#license) | [Acknowledgements](#acknowledgements)' & @CRLF & _
        @CRLF & _
        '## Description' & @CRLF & _
        @CRLF & _
        '' & GUICtrlRead($aProjectName[$eInput]) & ' [...] description [...].' & @CRLF & _
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
        '**Variant 1 - Run the EXE**' & @CRLF & _
        @CRLF & _
        'Starting the EXE `build\' & GUICtrlRead($aProjectName[$eInput]) & '.exe` which is compiled with `#AutoIt3Wrapper_UseX64=y` and `#AutoIt3Wrapper_UseUpx=n` (the default expected system is x64).' & @CRLF & _
        @CRLF & _
        '**Variant 2 - Compile it on your own**' & @CRLF & _
        @CRLF & _
        'Open file `src\' & GUICtrlRead($aProjectName[$eInput]) & '.au3`, adjust the *#AutoIt3Wrapper compiler information* if you want to. For example you could change `#AutoIt3Wrapper_UseUpx=n` from no (n) to yes (y), etc.' & @CRLF & _
        'Then, run or compile the program.' & @CRLF & _
        @CRLF & _
        '#### *Usage*' & @CRLF & _
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
        '| :---   | :---     |' & @CRLF & _
        '| ...    | ...      |' & @CRLF & _
        '| ...    | ...      |' & @CRLF & _
        @CRLF & _
        '## Contributing' & @CRLF & _
        @CRLF & _
        'Just look at [CONTRIBUTING](https://github.com/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '/blob/' & GUICtrlRead($aGithubDefaultBranch[$eInput]) & '/docs/CONTRIBUTING.md), thank you!' & @CRLF & _
        @CRLF & _
        '## License' & @CRLF & _
        @CRLF & _
        'Distributed under the MIT License. See [LICENSE](https://github.com/' & GUICtrlRead($aGithubUsername[$eInput]) & '/' & GUICtrlRead($aProjectName[$eInput]) & '/blob/' & GUICtrlRead($aGithubDefaultBranch[$eInput]) & '/LICENSE.md) for more information.' & @CRLF & _
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
