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

# Utility rule file for user_makefile.

# Include the progress variables for this target.
include CMakeFiles/user_makefile.dir/progress.make

CMakeFiles/user_makefile: /home/cs104/cs104~/hw-wenbeiwa/hw6/search


/home/cs104/cs104~/hw-wenbeiwa/hw6/search: heap_tests/heap_tests.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: search_tests/search_tests.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: search_tests/search_utils.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: color_tests/color_utils.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: color_tests/color_tests.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: CMakeFiles/3.5.1/CompilerIdCXX/CMakeCXXCompilerId.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/user_code_runner.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/misc_utils.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/runtime_evaluator.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/random_generator.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: /home/cs104/cs104~/hw-wenbeiwa/hw6/coloring.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: /home/cs104/cs104~/hw-wenbeiwa/hw6/test.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: /home/cs104/cs104~/hw-wenbeiwa/hw6/search.cpp
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: search_tests/search_utils.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: color_tests/color_utils.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/misc_utils.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/libperf/libperf.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/random_generator.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/generated_headers/kwsys/Configure.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/generated_headers/kwsys/System.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/generated_headers/kwsys/Process.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/generated_headers/kwsys/Encoding.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/generated_headers/kwsys/SharedForward.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/kwsys/kwsysPrivate.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/runtime_evaluator.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/rang.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: testing_utils/user_code_runner.h
/home/cs104/cs104~/hw-wenbeiwa/hw6/search: /home/cs104/cs104~/hw-wenbeiwa/hw6/MinHeap.h
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir="/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Running make in hw6 directory..."
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6" && make

user_makefile: CMakeFiles/user_makefile
user_makefile: /home/cs104/cs104~/hw-wenbeiwa/hw6/search
user_makefile: CMakeFiles/user_makefile.dir/build.make

.PHONY : user_makefile

# Rule to build all files generated by this target.
CMakeFiles/user_makefile.dir/build: user_makefile

.PHONY : CMakeFiles/user_makefile.dir/build

CMakeFiles/user_makefile.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/user_makefile.dir/cmake_clean.cmake
.PHONY : CMakeFiles/user_makefile.dir/clean

CMakeFiles/user_makefile.dir/depend:
	cd "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check" "/home/cs104/cs104~/hw-wenbeiwa/hw6/hw6-check/CMakeFiles/user_makefile.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/user_makefile.dir/depend

