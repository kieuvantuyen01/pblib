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

# Include any dependencies generated for this target.
include CMakeFiles/fuzzer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/fuzzer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/fuzzer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/fuzzer.dir/flags.make

CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.o: CMakeFiles/fuzzer.dir/flags.make
CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.o: /mnt/1C4070F24070D3CC/Master/pblib/cli/fuzzer.cpp
CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.o: CMakeFiles/fuzzer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/1C4070F24070D3CC/Master/pblib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.o -MF CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.o.d -o CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.o -c /mnt/1C4070F24070D3CC/Master/pblib/cli/fuzzer.cpp

CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/1C4070F24070D3CC/Master/pblib/cli/fuzzer.cpp > CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.i

CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/1C4070F24070D3CC/Master/pblib/cli/fuzzer.cpp -o CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.s

CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.o: CMakeFiles/fuzzer.dir/flags.make
CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.o: /mnt/1C4070F24070D3CC/Master/pblib/cli/BasicSATSolver.cc
CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.o: CMakeFiles/fuzzer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/1C4070F24070D3CC/Master/pblib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.o -MF CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.o.d -o CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.o -c /mnt/1C4070F24070D3CC/Master/pblib/cli/BasicSATSolver.cc

CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/1C4070F24070D3CC/Master/pblib/cli/BasicSATSolver.cc > CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.i

CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/1C4070F24070D3CC/Master/pblib/cli/BasicSATSolver.cc -o CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.s

CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.o: CMakeFiles/fuzzer.dir/flags.make
CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.o: /mnt/1C4070F24070D3CC/Master/pblib/cli/SATSolverClauseDatabase.cpp
CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.o: CMakeFiles/fuzzer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/1C4070F24070D3CC/Master/pblib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.o -MF CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.o.d -o CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.o -c /mnt/1C4070F24070D3CC/Master/pblib/cli/SATSolverClauseDatabase.cpp

CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/1C4070F24070D3CC/Master/pblib/cli/SATSolverClauseDatabase.cpp > CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.i

CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/1C4070F24070D3CC/Master/pblib/cli/SATSolverClauseDatabase.cpp -o CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.s

# Object files for target fuzzer
fuzzer_OBJECTS = \
"CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.o" \
"CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.o" \
"CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.o"

# External object files for target fuzzer
fuzzer_EXTERNAL_OBJECTS =

fuzzer: CMakeFiles/fuzzer.dir/cli/fuzzer.cpp.o
fuzzer: CMakeFiles/fuzzer.dir/cli/BasicSATSolver.cc.o
fuzzer: CMakeFiles/fuzzer.dir/cli/SATSolverClauseDatabase.cpp.o
fuzzer: CMakeFiles/fuzzer.dir/build.make
fuzzer: cli/minisat/libminisat.a
fuzzer: libpb.a
fuzzer: CMakeFiles/fuzzer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/1C4070F24070D3CC/Master/pblib/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable fuzzer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fuzzer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/fuzzer.dir/build: fuzzer
.PHONY : CMakeFiles/fuzzer.dir/build

CMakeFiles/fuzzer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/fuzzer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/fuzzer.dir/clean

CMakeFiles/fuzzer.dir/depend:
	cd /mnt/1C4070F24070D3CC/Master/pblib/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/1C4070F24070D3CC/Master/pblib /mnt/1C4070F24070D3CC/Master/pblib /mnt/1C4070F24070D3CC/Master/pblib/build /mnt/1C4070F24070D3CC/Master/pblib/build /mnt/1C4070F24070D3CC/Master/pblib/build/CMakeFiles/fuzzer.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/fuzzer.dir/depend
