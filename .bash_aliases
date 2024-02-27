# Basic Aliases
alias la='ls -lart'

# Config
# GIT_EXE='/mingw64/bin/git'
# CONFIG_BRANCH='desktop02'
# alias config='"$GIT_EXE" --git-dir=$HOME/.myconf/ --work-tree=$HOME'

# Location [Dev]
alias cd-dev='cd $DEV_DIR'
alias cd-archive='cd $DEV_ARCHIVE_DIR'
alias cd-docs='cd $DEV_DOCS_DIR'
alias cd-projects='cd $DEV_PROJECTS_DIR'
alias cd-temp='cd $DEV_TEMP_DIR'
alias cd-third-party='cd $DEV_THIRD_PARTY_DIR'
alias cd-tools='cd $DEV_TOOLS_DIR'
alias cd-vcpkg='cd $VCPKG_ROOT'

# Locations [Projects]
# alias cd-mift='cd $DEV_PROJECTS_DIR/graphics/mift/main'

# Programs
alias bash='/c/Program\ Files/Git/bin/bash.exe'
alias gish='/c/Program\ Files/Git/git-bash.exe'
alias cloc='$DEV_TOOLS_DIR/cloc-1.98.exe'
# alias cmake='"$LOCAL_VS_CMAKE_EXE"'
alias gource='/c/Program\ Files/Gource/cmd/gource'
alias python='winpty python.exe'
alias pyhton='python'
alias depends='$DEV_TOOLS_DIR/depends/depends.exe > /dev/null 2>&1 &'
alias fzf='$DEV_TOOLS_DIR/fzf.exe'
# alias glslViewer='$GLSL_VIEWER_DIR/bin/x64/Release/glslViewer.exe'
alias rg='"$DEV_TOOLS_DIR/ripgrep/rg.exe"'
alias ssh='/c/Windows/System32/OpenSSH/ssh.exe'     # gitbash ssh has issues, use win OpenSSH instead
alias starship='$DEV_TOOLS_DIR/starship/starship.exe'
alias vcpkg='"$VCPKG_ROOT/vcpkg.exe"'
alias vs-cmake='"$LOCAL_VS_CMAKE_EXE"'
alias vs-clang-format='"$LOCAL_VS_CLANG_FORMAT_EXE"'
alias zoomit='$DEV_TOOLS_DIR/ZoomIt64.exe > /dev/null 2>&1 &'

# Cake Build
alias ps-build='powershell "./build.ps1" --settings_skippackageversioncheck=true --local=True'
alias ps-build-release='powershell "./build.ps1" --settings_skippackageversioncheck=true --local=False --nuget-source=github'

