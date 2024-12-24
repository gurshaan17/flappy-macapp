# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.31

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
CMAKE_COMMAND = /opt/homebrew/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/gurshaansinghdult/Desktop/flappy-bird

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/gurshaansinghdult/Desktop/flappy-bird/build

# Include any dependencies generated for this target.
include CMakeFiles/FlappyBird.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/FlappyBird.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/FlappyBird.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/FlappyBird.dir/flags.make

CMakeFiles/FlappyBird.dir/codegen:
.PHONY : CMakeFiles/FlappyBird.dir/codegen

FlappyBird.app/Contents/Resources/bird.png: /Users/gurshaansinghdult/Desktop/flappy-bird/bird.png
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Copying OS X content FlappyBird.app/Contents/Resources/bird.png"
	$(CMAKE_COMMAND) -E copy /Users/gurshaansinghdult/Desktop/flappy-bird/bird.png FlappyBird.app/Contents/Resources/bird.png

FlappyBird.app/Contents/Resources/arial.ttf: /Users/gurshaansinghdult/Desktop/flappy-bird/arial.ttf
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Copying OS X content FlappyBird.app/Contents/Resources/arial.ttf"
	$(CMAKE_COMMAND) -E copy /Users/gurshaansinghdult/Desktop/flappy-bird/arial.ttf FlappyBird.app/Contents/Resources/arial.ttf

CMakeFiles/FlappyBird.dir/game.cpp.o: CMakeFiles/FlappyBird.dir/flags.make
CMakeFiles/FlappyBird.dir/game.cpp.o: /Users/gurshaansinghdult/Desktop/flappy-bird/game.cpp
CMakeFiles/FlappyBird.dir/game.cpp.o: CMakeFiles/FlappyBird.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/gurshaansinghdult/Desktop/flappy-bird/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/FlappyBird.dir/game.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/FlappyBird.dir/game.cpp.o -MF CMakeFiles/FlappyBird.dir/game.cpp.o.d -o CMakeFiles/FlappyBird.dir/game.cpp.o -c /Users/gurshaansinghdult/Desktop/flappy-bird/game.cpp

CMakeFiles/FlappyBird.dir/game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/FlappyBird.dir/game.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/gurshaansinghdult/Desktop/flappy-bird/game.cpp > CMakeFiles/FlappyBird.dir/game.cpp.i

CMakeFiles/FlappyBird.dir/game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/FlappyBird.dir/game.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/gurshaansinghdult/Desktop/flappy-bird/game.cpp -o CMakeFiles/FlappyBird.dir/game.cpp.s

# Object files for target FlappyBird
FlappyBird_OBJECTS = \
"CMakeFiles/FlappyBird.dir/game.cpp.o"

# External object files for target FlappyBird
FlappyBird_EXTERNAL_OBJECTS =

FlappyBird.app/Contents/MacOS/FlappyBird: CMakeFiles/FlappyBird.dir/game.cpp.o
FlappyBird.app/Contents/MacOS/FlappyBird: CMakeFiles/FlappyBird.dir/build.make
FlappyBird.app/Contents/MacOS/FlappyBird: /opt/homebrew/lib/libsfml-graphics.2.6.2.dylib
FlappyBird.app/Contents/MacOS/FlappyBird: /opt/homebrew/lib/libsfml-window.2.6.2.dylib
FlappyBird.app/Contents/MacOS/FlappyBird: /opt/homebrew/lib/libsfml-system.2.6.2.dylib
FlappyBird.app/Contents/MacOS/FlappyBird: CMakeFiles/FlappyBird.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/gurshaansinghdult/Desktop/flappy-bird/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable FlappyBird.app/Contents/MacOS/FlappyBird"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/FlappyBird.dir/link.txt --verbose=$(VERBOSE)
	/opt/homebrew/bin/cmake -E copy /opt/homebrew/lib/libsfml-graphics.2.6.2.dylib /Users/gurshaansinghdult/Desktop/flappy-bird/build/FlappyBird.app/Contents/Frameworks/libsfml-graphics.framework
	/opt/homebrew/bin/cmake -E copy /opt/homebrew/lib/libsfml-system.2.6.2.dylib /Users/gurshaansinghdult/Desktop/flappy-bird/build/FlappyBird.app/Contents/Frameworks/libsfml-system.framework
	/opt/homebrew/bin/cmake -E copy /opt/homebrew/lib/libsfml-window.2.6.2.dylib /Users/gurshaansinghdult/Desktop/flappy-bird/build/FlappyBird.app/Contents/Frameworks/libsfml-window.framework

# Rule to build all files generated by this target.
CMakeFiles/FlappyBird.dir/build: FlappyBird.app/Contents/MacOS/FlappyBird
CMakeFiles/FlappyBird.dir/build: FlappyBird.app/Contents/Resources/arial.ttf
CMakeFiles/FlappyBird.dir/build: FlappyBird.app/Contents/Resources/bird.png
.PHONY : CMakeFiles/FlappyBird.dir/build

CMakeFiles/FlappyBird.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/FlappyBird.dir/cmake_clean.cmake
.PHONY : CMakeFiles/FlappyBird.dir/clean

CMakeFiles/FlappyBird.dir/depend:
	cd /Users/gurshaansinghdult/Desktop/flappy-bird/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/gurshaansinghdult/Desktop/flappy-bird /Users/gurshaansinghdult/Desktop/flappy-bird /Users/gurshaansinghdult/Desktop/flappy-bird/build /Users/gurshaansinghdult/Desktop/flappy-bird/build /Users/gurshaansinghdult/Desktop/flappy-bird/build/CMakeFiles/FlappyBird.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/FlappyBird.dir/depend
