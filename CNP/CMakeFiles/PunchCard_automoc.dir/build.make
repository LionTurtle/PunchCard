# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list

# Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/mark/Dev/CNP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/mark/Dev/CNP

# Utility rule file for PunchCard_automoc.

# Include the progress variables for this target.
include CMakeFiles/PunchCard_automoc.dir/progress.make

CMakeFiles/PunchCard_automoc:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mark/Dev/CNP/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Automoc for target PunchCard"
	/usr/local/bin/cmake -E cmake_automoc /home/mark/Dev/CNP/CMakeFiles/PunchCard_automoc.dir/

PunchCard_automoc: CMakeFiles/PunchCard_automoc
PunchCard_automoc: CMakeFiles/PunchCard_automoc.dir/build.make
.PHONY : PunchCard_automoc

# Rule to build all files generated by this target.
CMakeFiles/PunchCard_automoc.dir/build: PunchCard_automoc
.PHONY : CMakeFiles/PunchCard_automoc.dir/build

CMakeFiles/PunchCard_automoc.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/PunchCard_automoc.dir/cmake_clean.cmake
.PHONY : CMakeFiles/PunchCard_automoc.dir/clean

CMakeFiles/PunchCard_automoc.dir/depend:
	cd /home/mark/Dev/CNP && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/Dev/CNP /home/mark/Dev/CNP /home/mark/Dev/CNP /home/mark/Dev/CNP /home/mark/Dev/CNP/CMakeFiles/PunchCard_automoc.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PunchCard_automoc.dir/depend

