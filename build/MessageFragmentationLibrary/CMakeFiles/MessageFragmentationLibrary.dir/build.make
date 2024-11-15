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
include MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/compiler_depend.make

# Include the progress variables for this target.
include MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/progress.make

# Include the compile flags for this target's objects.
include MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/flags.make

MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/codegen:
.PHONY : MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/codegen

MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.obj: MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/flags.make
MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.obj: MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/includes_CXX.rsp
MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.obj: C:/Users/MASSAWE/cpp-libraries/MessageFragmentationLibrary/src/message_fragmenter.cpp
MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.obj: MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\MASSAWE\cpp-libraries\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.obj"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.obj -MF CMakeFiles\MessageFragmentationLibrary.dir\src\message_fragmenter.cpp.obj.d -o CMakeFiles\MessageFragmentationLibrary.dir\src\message_fragmenter.cpp.obj -c C:\Users\MASSAWE\cpp-libraries\MessageFragmentationLibrary\src\message_fragmenter.cpp

MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.i"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\MASSAWE\cpp-libraries\MessageFragmentationLibrary\src\message_fragmenter.cpp > CMakeFiles\MessageFragmentationLibrary.dir\src\message_fragmenter.cpp.i

MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.s"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\MASSAWE\cpp-libraries\MessageFragmentationLibrary\src\message_fragmenter.cpp -o CMakeFiles\MessageFragmentationLibrary.dir\src\message_fragmenter.cpp.s

# Object files for target MessageFragmentationLibrary
MessageFragmentationLibrary_OBJECTS = \
"CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.obj"

# External object files for target MessageFragmentationLibrary
MessageFragmentationLibrary_EXTERNAL_OBJECTS =

MessageFragmentationLibrary/libMessageFragmentationLibrary.a: MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/src/message_fragmenter.cpp.obj
MessageFragmentationLibrary/libMessageFragmentationLibrary.a: MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/build.make
MessageFragmentationLibrary/libMessageFragmentationLibrary.a: MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\MASSAWE\cpp-libraries\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libMessageFragmentationLibrary.a"
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && $(CMAKE_COMMAND) -P CMakeFiles\MessageFragmentationLibrary.dir\cmake_clean_target.cmake
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\MessageFragmentationLibrary.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/build: MessageFragmentationLibrary/libMessageFragmentationLibrary.a
.PHONY : MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/build

MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/clean:
	cd /d C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary && $(CMAKE_COMMAND) -P CMakeFiles\MessageFragmentationLibrary.dir\cmake_clean.cmake
.PHONY : MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/clean

MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\MASSAWE\cpp-libraries C:\Users\MASSAWE\cpp-libraries\MessageFragmentationLibrary C:\Users\MASSAWE\cpp-libraries\build C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary C:\Users\MASSAWE\cpp-libraries\build\MessageFragmentationLibrary\CMakeFiles\MessageFragmentationLibrary.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : MessageFragmentationLibrary/CMakeFiles/MessageFragmentationLibrary.dir/depend

