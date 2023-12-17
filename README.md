[![Powered by - fuzzy-finder](https://img.shields.io/badge/Powered_by-fuzzy--finder-b0e1bd)](https://github.com/junegunn/fzf)
[![Licence - Apache 2.0](https://img.shields.io/badge/Licence-Apache_2.0-ffb90e)](https://www.apache.org/licenses/LICENSE-2.0)


# Pandommit-cli - commit command line utility

**_Pandommit-cli_** is a command-line tool designed to create Git commits using standardized naming conventions. It aims to structure commit messages in a consistent and intuitive way.




## Demo

*(soon)*


## Features

- Simplifies the creation of standardized commit messages (e.g., Conventional Commits).
- Interactive interface for selecting commit types, adding a scope, a message, and linking to GitHub issues.
- Supports adding emojis and issue references in commit messages.


## Installation

Install the package with [Homebrew](https://brew.sh/).

```bash
brew tap yunas10/tap
brew install pandommit-cli
```
    
## Usage/Examples

Instead of doing a `git commit -m` do this command:
```bash
pco
```
This command launch the commit type selector:

```bash
🌟 feat: New feature
🐛 fix: Bug fix
📚 docs: Documentation changes
🪄 style: Code style changes
🚀 perf: Performance improvements
✅ test: Adding missing tests
🛠️ refactor: Code refactoring
📦 chore: Changes to build process
🔧 build: Affecting build system
🎢 ci: CI configuration changes
🛟 deps: Update/add dependencies
```
And follow the steps.


## Authors

- Yuna S --> [@yunas10](https://github.com/yunas10)


## License

[Apache 2.0](http://www.apache.org/licenses/LICENSE-2.0)

Copyright © 2023 Yuna S

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

