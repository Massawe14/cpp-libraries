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
include MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/compiler_depend.make

# Include the progress variables for this target.
include MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/progress.make

# Include the compile flags for this target's objects.
include MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/flags.make

MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/codegen:
.PHONY : MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/codegen

MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.obj: MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/flags.make
MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.obj: MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/includes_CXX.rsp
MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.obj: C:/Users/MASSAWE/cpp-libraries/MessageFragmentationLibrary/tests/main.cpp
MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.obj: MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\MASSAWE\cpp-libraries\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.obj"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.obj -MF CMakeFiles\test_MessageFragmentationLibrary.dir\tests\main.cpp.obj.d -o CMakeFiles\test_MessageFragmentationLibrary.dir\tests\main.cpp.obj -c C:\Users\MASSAWE\cpp-libraries\MessageFragmentationLibrary\tests\main.cpp

MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.i"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\MASSAWE\cpp-libraries\MessageFragmentationLibrary\tests\main.cpp > CMakeFiles\test_MessageFragmentationLibrary.dir\tests\main.cpp.i

MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.s"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\MASSAWE\cpp-libraries\MessageFragmentationLibrary\tests\main.cpp -o CMakeFiles\test_MessageFragmentationLibrary.dir\tests\main.cpp.s

# Object files for target test_MessageFragmentationLibrary
test_MessageFragmentationLibrary_OBJECTS = \
"CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.obj"

# External object files for target test_MessageFragmentationLibrary
test_MessageFragmentationLibrary_EXTERNAL_OBJECTS =

MessageFragmentationLibrary/test_MessageFragmentationLibrary.exe: MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/tests/main.cpp.obj
MessageFragmentationLibrary/test_MessageFragmentationLibrary.exe: MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/build.make
MessageFragmentationLibrary/test_MessageFragmentationLibrary.exe: MessageFragmentationLibrary/libMessageFragmentationLibrary.a
MessageFragmentationLibrary/test_MessageFragmentationLibrary.exe: MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/linkLibs.rsp
MessageFragmentationLibrary/test_MessageFragmentationLibrary.exe: MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/objects1.rsp
MessageFragmentationLibrary/test_MessageFragmentationLibrary.exe: MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\MASSAWE\cpp-libraries\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable test_MessageFragmentationLibrary.exe"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\test_MessageFragmentationLibrary.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/build: MessageFragmentationLibrary/test_MessageFragmentationLibrary.exe
.PHONY : MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/build

MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/clean:
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && $(CMAKE_COMMAND) -P CMakeFiles\test_MessageFragmentationLibrary.dir\cmake_clean.cmake
.PHONY : MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/clean

MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\MASSAWE\cpp-libraries C:\Users\MASSAWE\cpp-libraries\MessageFragmentationLibrary C:\Users\MASSAWE\cpp-libraries\build C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary\CMakeFiles\test_MessageFragmentationLibrary.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : MessageFragmentationLibrary/CMakeFiles/test_MessageFragmentationLibrary.dir/depend
