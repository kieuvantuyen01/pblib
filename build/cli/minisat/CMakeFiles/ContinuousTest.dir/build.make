# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /mnt/1C4070F24070D3CC/Master/pblib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/1C4070F24070D3CC/Master/pblib/build

# Utility rule file for ContinuousTest.

# Include any custom commands dependencies for this target.
include cli/minisat/CMakeFiles/ContinuousTest.dir/compiler_depend.make

# Include the progress variables for this target.
include cli/minisat/CMakeFiles/ContinuousTest.dir/progress.make

cli/minisat/CMakeFiles/ContinuousTest:
	cd /mnt/1C4070F24070D3CC/Master/pblib/build/cli/minisat && /usr/bin/ctest -D ContinuousTest

ContinuousTest: cli/minisat/CMakeFiles/ContinuousTest
ContinuousTest: cli/minisat/CMakeFiles/ContinuousTest.dir/build.make
.PHONY : ContinuousTest

# Rule to build all files generated by this target.
cli/minisat/CMakeFiles/ContinuousTest.dir/build: ContinuousTest
.PHONY : cli/minisat/CMakeFiles/ContinuousTest.dir/build

cli/minisat/CMakeFiles/ContinuousTest.dir/clean:
	cd /mnt/1C4070F24070D3CC/Master/pblib/build/cli/minisat && $(CMAKE_COMMAND) -P CMakeFiles/ContinuousTest.dir/cmake_clean.cmake
.PHONY : cli/minisat/CMakeFiles/ContinuousTest.dir/clean

cli/minisat/CMakeFiles/ContinuousTest.dir/depend:
	cd /mnt/1C4070F24070D3CC/Master/pblib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/1C4070F24070D3CC/Master/pblib /mnt/1C4070F24070D3CC/Master/pblib/cli/minisat /mnt/1C4070F24070D3CC/Master/pblib/build /mnt/1C4070F24070D3CC/Master/pblib/build/cli/minisat /mnt/1C4070F24070D3CC/Master/pblib/build/cli/minisat/CMakeFiles/ContinuousTest.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : cli/minisat/CMakeFiles/ContinuousTest.dir/depend

