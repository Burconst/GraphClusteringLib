# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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
CMAKE_SOURCE_DIR = /run/media/konstantin/NameD/Home/git/GraphClusteringLib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /run/media/konstantin/NameD/Home/git/GraphClusteringLib

# Include any dependencies generated for this target.
include test/build/CMakeFiles/LeidenTests.dir/depend.make

# Include the progress variables for this target.
include test/build/CMakeFiles/LeidenTests.dir/progress.make

# Include the compile flags for this target's objects.
include test/build/CMakeFiles/LeidenTests.dir/flags.make

test/build/CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.o: test/build/CMakeFiles/LeidenTests.dir/flags.make
test/build/CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.o: test/GraphClustering/Leiden/LeidenTests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/run/media/konstantin/NameD/Home/git/GraphClusteringLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/build/CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.o"
	cd /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.o -c /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/GraphClustering/Leiden/LeidenTests.cpp

test/build/CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.i"
	cd /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/GraphClustering/Leiden/LeidenTests.cpp > CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.i

test/build/CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.s"
	cd /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/GraphClustering/Leiden/LeidenTests.cpp -o CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.s

test/build/CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.o: test/build/CMakeFiles/LeidenTests.dir/flags.make
test/build/CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.o: src/Leiden.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/run/media/konstantin/NameD/Home/git/GraphClusteringLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/build/CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.o"
	cd /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.o -c /run/media/konstantin/NameD/Home/git/GraphClusteringLib/src/Leiden.cpp

test/build/CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.i"
	cd /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /run/media/konstantin/NameD/Home/git/GraphClusteringLib/src/Leiden.cpp > CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.i

test/build/CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.s"
	cd /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /run/media/konstantin/NameD/Home/git/GraphClusteringLib/src/Leiden.cpp -o CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.s

# Object files for target LeidenTests
LeidenTests_OBJECTS = \
"CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.o" \
"CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.o"

# External object files for target LeidenTests
LeidenTests_EXTERNAL_OBJECTS =

test/build/LeidenTests: test/build/CMakeFiles/LeidenTests.dir/__/GraphClustering/Leiden/LeidenTests.cpp.o
test/build/LeidenTests: test/build/CMakeFiles/LeidenTests.dir/__/__/src/Leiden.cpp.o
test/build/LeidenTests: test/build/CMakeFiles/LeidenTests.dir/build.make
test/build/LeidenTests: src/build/libGraphClustering.a
test/build/LeidenTests: test/build/CMakeFiles/LeidenTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/run/media/konstantin/NameD/Home/git/GraphClusteringLib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable LeidenTests"
	cd /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LeidenTests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/build/CMakeFiles/LeidenTests.dir/build: test/build/LeidenTests

.PHONY : test/build/CMakeFiles/LeidenTests.dir/build

test/build/CMakeFiles/LeidenTests.dir/clean:
	cd /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build && $(CMAKE_COMMAND) -P CMakeFiles/LeidenTests.dir/cmake_clean.cmake
.PHONY : test/build/CMakeFiles/LeidenTests.dir/clean

test/build/CMakeFiles/LeidenTests.dir/depend:
	cd /run/media/konstantin/NameD/Home/git/GraphClusteringLib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /run/media/konstantin/NameD/Home/git/GraphClusteringLib /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build /run/media/konstantin/NameD/Home/git/GraphClusteringLib /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build /run/media/konstantin/NameD/Home/git/GraphClusteringLib/test/build/CMakeFiles/LeidenTests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/build/CMakeFiles/LeidenTests.dir/depend
