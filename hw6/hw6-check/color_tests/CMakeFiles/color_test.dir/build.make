# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check"

# Include any dependencies generated for this target.
include color_tests/CMakeFiles/color_test.dir/depend.make

# Include the progress variables for this target.
include color_tests/CMakeFiles/color_test.dir/progress.make

# Include the compile flags for this target's objects.
include color_tests/CMakeFiles/color_test.dir/flags.make

color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o: color_tests/CMakeFiles/color_test.dir/flags.make
color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o: color_tests/color_utils.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o"
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color_test.dir/color_utils.cpp.o -c "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests/color_utils.cpp"

color_tests/CMakeFiles/color_test.dir/color_utils.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_test.dir/color_utils.cpp.i"
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests/color_utils.cpp" > CMakeFiles/color_test.dir/color_utils.cpp.i

color_tests/CMakeFiles/color_test.dir/color_utils.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_test.dir/color_utils.cpp.s"
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests/color_utils.cpp" -o CMakeFiles/color_test.dir/color_utils.cpp.s

color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o.requires:

.PHONY : color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o.requires

color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o.provides: color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o.requires
	$(MAKE) -f color_tests/CMakeFiles/color_test.dir/build.make color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o.provides.build
.PHONY : color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o.provides

color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o.provides.build: color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o


color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o: color_tests/CMakeFiles/color_test.dir/flags.make
color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o: color_tests/color_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o"
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/color_test.dir/color_tests.cpp.o -c "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests/color_tests.cpp"

color_tests/CMakeFiles/color_test.dir/color_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_test.dir/color_tests.cpp.i"
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests/color_tests.cpp" > CMakeFiles/color_test.dir/color_tests.cpp.i

color_tests/CMakeFiles/color_test.dir/color_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_test.dir/color_tests.cpp.s"
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests/color_tests.cpp" -o CMakeFiles/color_test.dir/color_tests.cpp.s

color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o.requires:

.PHONY : color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o.requires

color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o.provides: color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o.requires
	$(MAKE) -f color_tests/CMakeFiles/color_test.dir/build.make color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o.provides.build
.PHONY : color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o.provides

color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o.provides.build: color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o


# Object files for target color_test
color_test_OBJECTS = \
"CMakeFiles/color_test.dir/color_utils.cpp.o" \
"CMakeFiles/color_test.dir/color_tests.cpp.o"

# External object files for target color_test
color_test_EXTERNAL_OBJECTS =

color_tests/color_test: color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o
color_tests/color_test: color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o
color_tests/color_test: color_tests/CMakeFiles/color_test.dir/build.make
color_tests/color_test: testing_utils/libtesting_utils.a
color_tests/color_test: /usr/lib/libgtest.a
color_tests/color_test: testing_utils/kwsys/libkwsys.a
color_tests/color_test: testing_utils/libperf/libperf.a
color_tests/color_test: /usr/lib/libgtest_main.a
color_tests/color_test: color_tests/CMakeFiles/color_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable color_test"
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/color_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
color_tests/CMakeFiles/color_test.dir/build: color_tests/color_test

.PHONY : color_tests/CMakeFiles/color_test.dir/build

color_tests/CMakeFiles/color_test.dir/requires: color_tests/CMakeFiles/color_test.dir/color_utils.cpp.o.requires
color_tests/CMakeFiles/color_test.dir/requires: color_tests/CMakeFiles/color_test.dir/color_tests.cpp.o.requires

.PHONY : color_tests/CMakeFiles/color_test.dir/requires

color_tests/CMakeFiles/color_test.dir/clean:
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" && $(CMAKE_COMMAND) -P CMakeFiles/color_test.dir/cmake_clean.cmake
.PHONY : color_tests/CMakeFiles/color_test.dir/clean

color_tests/CMakeFiles/color_test.dir/depend:
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/color_tests/CMakeFiles/color_test.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : color_tests/CMakeFiles/color_test.dir/depend

