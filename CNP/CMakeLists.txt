cmake_minimum_required(VERSION 2.8.11)
project(CNP)

# Find includes in corresponding build directories
set(CMAKE_INCLUDE_CURRENT_DIR ON)
# Instruct CMake to run moc automatically when needed.
set(CMAKE_AUTOMOC ON)

# Find the QtWidgets library
find_package(Qt5Widgets)

set(CNP_SOURCES Main.cpp Application.cpp)
set(CNP_HEADERS Application.h)

# add the executable
add_executable(PunchCard ${CNP_SOURCES})
target_link_libraries(PunchCard Qt5::Widgets)

# build a CPack driven installer package
include (InstallRequiredSystemLibraries)
set (CPACK_RESOURCE_FILE_LICENSE  
     "${CMAKE_CURRENT_SOURCE_DIR}/License.txt")
include (CPack)