# Locations
export DEV_DIR="/d"
export DEV_ARCHIVE_DIR="$DEV_DIR/archive"
export DEV_DOCS_DIR="$DEV_DIR/docs"
export DEV_PROJECTS_DIR="$DEV_DIR/projects"
export DEV_TEMP_DIR="$DEV_DIR/temp"
export DEV_THIRD_PARTY_DIR="$DEV_DIR/third-party"
export DEV_TOOLS_DIR="$DEV_DIR/tools"

export VCPKG_ROOT="$DEV_THIRD_PARTY_DIR/vcpkg"
export VCPKG_DEFAULT_TRIPLET="x64-windows"
# export GLSL_VIEWER_DIR="$DEV_THIRD_PARTY_DIR/glslViewer"


# Projects
export MIFT_DIR="$DEV_PROJECTS_DIR/graphics/mift"


# Visual Studio
export LOCAL_VS_YEAR="2022"
export LOCAL_VS_VERSION="Community"
export LOCAL_VS_ROOT="/c/Program Files/Microsoft Visual Studio/$LOCAL_VS_YEAR/$LOCAL_VS_VERSION"
export LOCAL_VS_DIR="$LOCAL_VS_ROOT/Common7/IDE"
export LOCAL_VS_EXE="$LOCAL_VS_DIR/devenv.exe"

vs_cmake="$LOCAL_VS_DIR/CommonExtensions/Microsoft/CMake/CMake/bin"
export LOCAL_VS_CMAKE_EXE="$vs_cmake/cmake.exe"
export LOCAL_VS_CPACK_EXE="$vs_cmake/cpack.exe"
export LOCAL_VS_CTEST_EXE="$vs_cmake/ctest.exe"

vs_clang="$LOCAL_VS_ROOT/VC/Tools/Llvm/x64/bin"
export LOCAL_VS_CLANG_FORMAT_EXE="$vs_clang/clang-format.exe"
export LOCAL_VS_CLANG_TIDY_EXE="$vs_clang/clang-tidy.exe"


# Path
export PATH="$HOME/.local/bin:$PATH"