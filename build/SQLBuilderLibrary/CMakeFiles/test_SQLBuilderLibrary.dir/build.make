# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\MASSAWE\cpp-libraries

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\MASSAWE\cpp-libraries\build

# Include any dependencies generated for this target.
include SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/compiler_depend.make

# Include the progress variables for this target.
include SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/progress.make

# Include the compile flags for this target's objects.
include SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/flags.make

SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/codegen:
.PHONY : SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/codegen

SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.obj: SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/flags.make
SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.obj: SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/includes_CXX.rsp
SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.obj: C:/Users/MASSAWE/cpp-libraries/SQLBuilderLibrary/tests/main.cpp
SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.obj: SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\MASSAWE\cpp-libraries\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.obj"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\SQLBuilderLibrary && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.obj -MF CMakeFiles\test_SQLBuilderLibrary.dir\tests\main.cpp.obj.d -o CMakeFiles\test_SQLBuilderLibrary.dir\tests\main.cpp.obj -c C:\Users\MASSAWE\cpp-libraries\SQLBuilderLibrary\tests\main.cpp

SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.i"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\SQLBuilderLibrary && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\MASSAWE\cpp-libraries\SQLBuilderLibrary\tests\main.cpp > CMakeFiles\test_SQLBuilderLibrary.dir\tests\main.cpp.i

SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.s"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\SQLBuilderLibrary && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\MASSAWE\cpp-libraries\SQLBuilderLibrary\tests\main.cpp -o CMakeFiles\test_SQLBuilderLibrary.dir\tests\main.cpp.s

# Object files for target test_SQLBuilderLibrary
test_SQLBuilderLibrary_OBJECTS = \
"CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.obj"

# External object files for target test_SQLBuilderLibrary
test_SQLBuilderLibrary_EXTERNAL_OBJECTS =

SQLBuilderLibrary/test_SQLBuilderLibrary.exe: SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/tests/main.cpp.obj
SQLBuilderLibrary/test_SQLBuilderLibrary.exe: SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/build.make
SQLBuilderLibrary/test_SQLBuilderLibrary.exe: SQLBuilderLibrary/libSQLBuilderLibrary.a
SQLBuilderLibrary/test_SQLBuilderLibrary.exe: SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/linkLibs.rsp
SQLBuilderLibrary/test_SQLBuilderLibrary.exe: SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/objects1.rsp
SQLBuilderLibrary/test_SQLBuilderLibrary.exe: SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\MASSAWE\cpp-libraries\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_SQLBuilderLibrary.exe"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\SQLBuilderLibrary && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\test_SQLBuilderLibrary.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/build: SQLBuilderLibrary/test_SQLBuilderLibrary.exe
.PHONY : SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/build

SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/clean:
	cd /d C:\Users\MASSAWE\cpp-libraries\build\SQLBuilderLibrary && $(CMAKE_COMMAND) -P CMakeFiles\test_SQLBuilderLibrary.dir\cmake_clean.cmake
.PHONY : SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/clean

SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\MASSAWE\cpp-libraries C:\Users\MASSAWE\cpp-libraries\SQLBuilderLibrary C:\Users\MASSAWE\cpp-libraries\build C:\Users\MASSAWE\cpp-libraries\build\SQLBuilderLibrary C:\Users\MASSAWE\cpp-libraries\build\SQLBuilderLibrary\CMakeFiles\test_SQLBuilderLibrary.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : SQLBuilderLibrary/CMakeFiles/test_SQLBuilderLibrary.dir/depend

