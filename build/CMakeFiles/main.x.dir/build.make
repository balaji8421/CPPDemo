# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vboxuser/Desktop/Demo/CPPDemo

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vboxuser/Desktop/Demo/CPPDemo/build

# Include any dependencies generated for this target.
include CMakeFiles/main.x.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/main.x.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/main.x.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/main.x.dir/flags.make

CMakeFiles/main.x.dir/main.cpp.o: CMakeFiles/main.x.dir/flags.make
CMakeFiles/main.x.dir/main.cpp.o: ../main.cpp
CMakeFiles/main.x.dir/main.cpp.o: CMakeFiles/main.x.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vboxuser/Desktop/Demo/CPPDemo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/main.x.dir/main.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/main.x.dir/main.cpp.o -MF CMakeFiles/main.x.dir/main.cpp.o.d -o CMakeFiles/main.x.dir/main.cpp.o -c /home/vboxuser/Desktop/Demo/CPPDemo/main.cpp

CMakeFiles/main.x.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/main.x.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vboxuser/Desktop/Demo/CPPDemo/main.cpp > CMakeFiles/main.x.dir/main.cpp.i

CMakeFiles/main.x.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/main.x.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vboxuser/Desktop/Demo/CPPDemo/main.cpp -o CMakeFiles/main.x.dir/main.cpp.s

# Object files for target main.x
main_x_OBJECTS = \
"CMakeFiles/main.x.dir/main.cpp.o"

# External object files for target main.x
main_x_EXTERNAL_OBJECTS =

main.x: CMakeFiles/main.x.dir/main.cpp.o
main.x: CMakeFiles/main.x.dir/build.make
main.x: CMakeFiles/main.x.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vboxuser/Desktop/Demo/CPPDemo/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable main.x"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/main.x.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/main.x.dir/build: main.x
.PHONY : CMakeFiles/main.x.dir/build

CMakeFiles/main.x.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/main.x.dir/cmake_clean.cmake
.PHONY : CMakeFiles/main.x.dir/clean

CMakeFiles/main.x.dir/depend:
	cd /home/vboxuser/Desktop/Demo/CPPDemo/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vboxuser/Desktop/Demo/CPPDemo /home/vboxuser/Desktop/Demo/CPPDemo /home/vboxuser/Desktop/Demo/CPPDemo/build /home/vboxuser/Desktop/Demo/CPPDemo/build /home/vboxuser/Desktop/Demo/CPPDemo/build/CMakeFiles/main.x.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/main.x.dir/depend

