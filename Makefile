# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.12

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /run/media/konstantin/NameD/Home/git/GraphClusteringLib/CMakeFiles /run/media/konstantin/NameD/Home/git/GraphClusteringLib/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /run/media/konstantin/NameD/Home/git/GraphClusteringLib/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named GraphClustering

# Build rule for target.
GraphClustering: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 GraphClustering
.PHONY : GraphClustering

# fast build rule for target.
GraphClustering/fast:
	$(MAKE) -f src/build/CMakeFiles/GraphClustering.dir/build.make src/build/CMakeFiles/GraphClustering.dir/build
.PHONY : GraphClustering/fast

#=============================================================================
# Target rules for targets named GraphTests

# Build rule for target.
GraphTests: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 GraphTests
.PHONY : GraphTests

# fast build rule for target.
GraphTests/fast:
	$(MAKE) -f test/build/CMakeFiles/GraphTests.dir/build.make test/build/CMakeFiles/GraphTests.dir/build
.PHONY : GraphTests/fast

#=============================================================================
# Target rules for targets named PartitionTests

# Build rule for target.
PartitionTests: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 PartitionTests
.PHONY : PartitionTests

# fast build rule for target.
PartitionTests/fast:
	$(MAKE) -f test/build/CMakeFiles/PartitionTests.dir/build.make test/build/CMakeFiles/PartitionTests.dir/build
.PHONY : PartitionTests/fast

#=============================================================================
# Target rules for targets named LouvainTests

# Build rule for target.
LouvainTests: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LouvainTests
.PHONY : LouvainTests

# fast build rule for target.
LouvainTests/fast:
	$(MAKE) -f test/build/CMakeFiles/LouvainTests.dir/build.make test/build/CMakeFiles/LouvainTests.dir/build
.PHONY : LouvainTests/fast

#=============================================================================
# Target rules for targets named LeidenTests

# Build rule for target.
LeidenTests: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 LeidenTests
.PHONY : LeidenTests

# fast build rule for target.
LeidenTests/fast:
	$(MAKE) -f test/build/CMakeFiles/LeidenTests.dir/build.make test/build/CMakeFiles/LeidenTests.dir/build
.PHONY : LeidenTests/fast

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... GraphClustering"
	@echo "... GraphTests"
	@echo "... PartitionTests"
	@echo "... LouvainTests"
	@echo "... LeidenTests"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

