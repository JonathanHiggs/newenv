## Helper functions

# Set window title
function set-title() {
    echo -ne "\033]0;$1 \007"
}


# Run clang-format on *.hpp and *.cpp files in a directory
function clang-format() {
    local dir="$1"
    find "./$dir/" -iname "*.hpp" -o -iname "*.cpp" | xargs "$LOCAL_VS_CLANG_FORMAT_EXE" -i --verbose -style=file
}


# Display shell color map
function colormap() {
    for ((i = 0; i <= 255; i++)); do
        printf "\e[48;5;%sm  \e[0m\e[38;5;%sm%03d\e[0m " "$i" "$i" "$i"
        if ((i % 6 == 3)); then
            echo
        fi
    done
}


## Visual Studio

# Launch Visual Studio in current directoy
function vs() {
    local launch_dir=`pwd`
    echo Launching Visual Studio $LOCAL_VS_YEAR $LOCAL_VS_VERSION in $launch_dir

    pushd "$LOCAL_VS_DIR" > /dev/null
    ./devenv.exe "$launch_dir" > /dev/null 2>&1 &
    popd > /dev/null
}

# Run clang-format on the current folder
function vs-clang-format-folder() {
    if [[ -z "$1" ]]; then
        echo "Usage: vs-clang-format-folder <path>"
        return;
    fi
    find "$1" -iname *.hpp -o -iname *.cpp | xargs "$LOCAL_VS_CLANG_FORMAT_EXE" -i
}


## VirtualEnv

# Activate virtual environment
function venv-activate() {
    echo "venv-activate $@"
    local dir="$1"
    if [[ -z "$dir" ]]; then
        dirs=("venv" "env" ".venv" ".env")
        for test_dir in "${dirs[@]}"; do
            echo "try: ./$test_dir"
            if [ -d "$test_dir" ]; then
                echo "found ./$test_dir"
                dir=$test_dir
                break
            fi
        done
    fi

    if [ ! -d "./$dir" ]; then
        echo "Directory does not exist: ./$dir"
        return
    fi

    echo "activating: ./$dir"
	source "./$dir/Scripts/activate"
}

# Create virtual environment
function venv-create() {
    local env_name="${1:-.venv}"
    if [ -z "$env_name" ]; then
        echo "No env name supplied"
        echo "Usage: venv-create [env-name]"
        return
    fi

    python -m venv --upgrade-deps "$env_name"
}

function venv() {
    echo "venv $@"
    case $1 in
        -c | create )
            shift
            venv-create "${@}"
            ;;
        -a | activate | source )
            shift
            venv-activate "${@}"
            ;;
        *)
            echo "Usage:"
            echo "  venv create <env-name>"
            echo "  venv activate <env-name>"
            ;;
    esac
}


##  Nuget  ##

function nuget-add-dev() {
	nuget add $1 -Source=$NUGET_DEV
}

function nuget-add-network() {
	nuget add $1 -Source=$NUGET_NETWORK
}


##  Projects  ##

# Change directory to a mift worktree
function cd-mift() {
    local worktree="$1"

    test -z "$worktree" && worktree="main"

    worktree_dir="$MIFT_DIR/$worktree"

    if [[ ! -d "$worktree_dir" ]]; then
        echo "Worktree not found: $worktree_dir"
        worktree="main"
        worktree_dir="$MIFT_DIR/main"
    fi

    echo "Switching to MIFT - $worktree: $worktree_dir"

    cd $worktree_dir
    set-title "MIFT - $worktree"
}


function parent-name() {
    local dirpath="$(dirname `git rev-parse --show-toplevel`)"
    basename $dirpath
}