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

# Include any dependencies generated for this target.
include CMakeFiles/CNP.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/CNP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/CNP.dir/flags.make

CMakeFiles/CNP.dir/Main.cpp.o: CMakeFiles/CNP.dir/flags.make
CMakeFiles/CNP.dir/Main.cpp.o: Main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mark/Dev/CNP/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CNP.dir/Main.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CNP.dir/Main.cpp.o -c /home/mark/Dev/CNP/Main.cpp

CMakeFiles/CNP.dir/Main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CNP.dir/Main.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mark/Dev/CNP/Main.cpp > CMakeFiles/CNP.dir/Main.cpp.i

CMakeFiles/CNP.dir/Main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CNP.dir/Main.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mark/Dev/CNP/Main.cpp -o CMakeFiles/CNP.dir/Main.cpp.s

CMakeFiles/CNP.dir/Main.cpp.o.requires:
.PHONY : CMakeFiles/CNP.dir/Main.cpp.o.requires

CMakeFiles/CNP.dir/Main.cpp.o.provides: CMakeFiles/CNP.dir/Main.cpp.o.requires
	$(MAKE) -f CMakeFiles/CNP.dir/build.make CMakeFiles/CNP.dir/Main.cpp.o.provides.build
.PHONY : CMakeFiles/CNP.dir/Main.cpp.o.provides

CMakeFiles/CNP.dir/Main.cpp.o.provides.build: CMakeFiles/CNP.dir/Main.cpp.o

CMakeFiles/CNP.dir/Application.cpp.o: CMakeFiles/CNP.dir/flags.make
CMakeFiles/CNP.dir/Application.cpp.o: Application.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mark/Dev/CNP/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CNP.dir/Application.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CNP.dir/Application.cpp.o -c /home/mark/Dev/CNP/Application.cpp

CMakeFiles/CNP.dir/Application.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CNP.dir/Application.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mark/Dev/CNP/Application.cpp > CMakeFiles/CNP.dir/Application.cpp.i

CMakeFiles/CNP.dir/Application.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CNP.dir/Application.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mark/Dev/CNP/Application.cpp -o CMakeFiles/CNP.dir/Application.cpp.s

CMakeFiles/CNP.dir/Application.cpp.o.requires:
.PHONY : CMakeFiles/CNP.dir/Application.cpp.o.requires

CMakeFiles/CNP.dir/Application.cpp.o.provides: CMakeFiles/CNP.dir/Application.cpp.o.requires
	$(MAKE) -f CMakeFiles/CNP.dir/build.make CMakeFiles/CNP.dir/Application.cpp.o.provides.build
.PHONY : CMakeFiles/CNP.dir/Application.cpp.o.provides

CMakeFiles/CNP.dir/Application.cpp.o.provides.build: CMakeFiles/CNP.dir/Application.cpp.o

CMakeFiles/CNP.dir/CNP_automoc.cpp.o: CMakeFiles/CNP.dir/flags.make
CMakeFiles/CNP.dir/CNP_automoc.cpp.o: CNP_automoc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/mark/Dev/CNP/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/CNP.dir/CNP_automoc.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/CNP.dir/CNP_automoc.cpp.o -c /home/mark/Dev/CNP/CNP_automoc.cpp

CMakeFiles/CNP.dir/CNP_automoc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/CNP.dir/CNP_automoc.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/mark/Dev/CNP/CNP_automoc.cpp > CMakeFiles/CNP.dir/CNP_automoc.cpp.i

CMakeFiles/CNP.dir/CNP_automoc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/CNP.dir/CNP_automoc.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/mark/Dev/CNP/CNP_automoc.cpp -o CMakeFiles/CNP.dir/CNP_automoc.cpp.s

CMakeFiles/CNP.dir/CNP_automoc.cpp.o.requires:
.PHONY : CMakeFiles/CNP.dir/CNP_automoc.cpp.o.requires

CMakeFiles/CNP.dir/CNP_automoc.cpp.o.provides: CMakeFiles/CNP.dir/CNP_automoc.cpp.o.requires
	$(MAKE) -f CMakeFiles/CNP.dir/build.make CMakeFiles/CNP.dir/CNP_automoc.cpp.o.provides.build
.PHONY : CMakeFiles/CNP.dir/CNP_automoc.cpp.o.provides

CMakeFiles/CNP.dir/CNP_automoc.cpp.o.provides.build: CMakeFiles/CNP.dir/CNP_automoc.cpp.o

# Object files for target CNP
CNP_OBJECTS = \
"CMakeFiles/CNP.dir/Main.cpp.o" \
"CMakeFiles/CNP.dir/Application.cpp.o" \
"CMakeFiles/CNP.dir/CNP_automoc.cpp.o"

# External object files for target CNP
CNP_EXTERNAL_OBJECTS =

CNP: CMakeFiles/CNP.dir/Main.cpp.o
CNP: CMakeFiles/CNP.dir/Application.cpp.o
CNP: CMakeFiles/CNP.dir/CNP_automoc.cpp.o
CNP: CMakeFiles/CNP.dir/build.make
CNP: /home/mark/Qt5.1.0/5.1.0/gcc_64/lib/libQt5Widgets.so.5.1.0
CNP: /home/mark/Qt5.1.0/5.1.0/gcc_64/lib/libQt5Gui.so.5.1.0
CNP: /home/mark/Qt5.1.0/5.1.0/gcc_64/lib/libQt5Core.so.5.1.0
CNP: CMakeFiles/CNP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable CNP"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/CNP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/CNP.dir/build: CNP
.PHONY : CMakeFiles/CNP.dir/build

CMakeFiles/CNP.dir/requires: CMakeFiles/CNP.dir/Main.cpp.o.requires
CMakeFiles/CNP.dir/requires: CMakeFiles/CNP.dir/Application.cpp.o.requires
CMakeFiles/CNP.dir/requires: CMakeFiles/CNP.dir/CNP_automoc.cpp.o.requires
.PHONY : CMakeFiles/CNP.dir/requires

CMakeFiles/CNP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/CNP.dir/cmake_clean.cmake
.PHONY : CMakeFiles/CNP.dir/clean

CMakeFiles/CNP.dir/depend:
	cd /home/mark/Dev/CNP && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/mark/Dev/CNP /home/mark/Dev/CNP /home/mark/Dev/CNP /home/mark/Dev/CNP /home/mark/Dev/CNP/CMakeFiles/CNP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/CNP.dir/depend

