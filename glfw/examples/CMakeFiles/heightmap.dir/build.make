# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /goinfre/ppreez/Desktop/cmake-3.14.5/bin/cmake

# The command to remove a file.
RM = /goinfre/ppreez/Desktop/cmake-3.14.5/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /goinfre/ppreez/Desktop/glfw-3.3

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /goinfre/ppreez/Desktop/glfw-3.3

# Include any dependencies generated for this target.
include examples/CMakeFiles/heightmap.dir/depend.make

# Include the progress variables for this target.
include examples/CMakeFiles/heightmap.dir/progress.make

# Include the compile flags for this target's objects.
include examples/CMakeFiles/heightmap.dir/flags.make

examples/heightmap.app/Contents/Resources/glfw.icns: examples/glfw.icns
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Copying OS X content examples/heightmap.app/Contents/Resources/glfw.icns"
	$(CMAKE_COMMAND) -E copy /goinfre/ppreez/Desktop/glfw-3.3/examples/glfw.icns examples/heightmap.app/Contents/Resources/glfw.icns

examples/CMakeFiles/heightmap.dir/heightmap.c.o: examples/CMakeFiles/heightmap.dir/flags.make
examples/CMakeFiles/heightmap.dir/heightmap.c.o: examples/heightmap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/goinfre/ppreez/Desktop/glfw-3.3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/CMakeFiles/heightmap.dir/heightmap.c.o"
	cd /goinfre/ppreez/Desktop/glfw-3.3/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/heightmap.dir/heightmap.c.o   -c /goinfre/ppreez/Desktop/glfw-3.3/examples/heightmap.c

examples/CMakeFiles/heightmap.dir/heightmap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heightmap.dir/heightmap.c.i"
	cd /goinfre/ppreez/Desktop/glfw-3.3/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /goinfre/ppreez/Desktop/glfw-3.3/examples/heightmap.c > CMakeFiles/heightmap.dir/heightmap.c.i

examples/CMakeFiles/heightmap.dir/heightmap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heightmap.dir/heightmap.c.s"
	cd /goinfre/ppreez/Desktop/glfw-3.3/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /goinfre/ppreez/Desktop/glfw-3.3/examples/heightmap.c -o CMakeFiles/heightmap.dir/heightmap.c.s

examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o: examples/CMakeFiles/heightmap.dir/flags.make
examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o: deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/goinfre/ppreez/Desktop/glfw-3.3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o"
	cd /goinfre/ppreez/Desktop/glfw-3.3/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o   -c /goinfre/ppreez/Desktop/glfw-3.3/deps/glad_gl.c

examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/heightmap.dir/__/deps/glad_gl.c.i"
	cd /goinfre/ppreez/Desktop/glfw-3.3/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /goinfre/ppreez/Desktop/glfw-3.3/deps/glad_gl.c > CMakeFiles/heightmap.dir/__/deps/glad_gl.c.i

examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/heightmap.dir/__/deps/glad_gl.c.s"
	cd /goinfre/ppreez/Desktop/glfw-3.3/examples && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /goinfre/ppreez/Desktop/glfw-3.3/deps/glad_gl.c -o CMakeFiles/heightmap.dir/__/deps/glad_gl.c.s

# Object files for target heightmap
heightmap_OBJECTS = \
"CMakeFiles/heightmap.dir/heightmap.c.o" \
"CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o"

# External object files for target heightmap
heightmap_EXTERNAL_OBJECTS =

examples/heightmap.app/Contents/MacOS/heightmap: examples/CMakeFiles/heightmap.dir/heightmap.c.o
examples/heightmap.app/Contents/MacOS/heightmap: examples/CMakeFiles/heightmap.dir/__/deps/glad_gl.c.o
examples/heightmap.app/Contents/MacOS/heightmap: examples/CMakeFiles/heightmap.dir/build.make
examples/heightmap.app/Contents/MacOS/heightmap: src/libglfw3.a
examples/heightmap.app/Contents/MacOS/heightmap: examples/CMakeFiles/heightmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/goinfre/ppreez/Desktop/glfw-3.3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking C executable heightmap.app/Contents/MacOS/heightmap"
	cd /goinfre/ppreez/Desktop/glfw-3.3/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/heightmap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/CMakeFiles/heightmap.dir/build: examples/heightmap.app/Contents/MacOS/heightmap
examples/CMakeFiles/heightmap.dir/build: examples/heightmap.app/Contents/Resources/glfw.icns

.PHONY : examples/CMakeFiles/heightmap.dir/build

examples/CMakeFiles/heightmap.dir/clean:
	cd /goinfre/ppreez/Desktop/glfw-3.3/examples && $(CMAKE_COMMAND) -P CMakeFiles/heightmap.dir/cmake_clean.cmake
.PHONY : examples/CMakeFiles/heightmap.dir/clean

examples/CMakeFiles/heightmap.dir/depend:
	cd /goinfre/ppreez/Desktop/glfw-3.3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /goinfre/ppreez/Desktop/glfw-3.3 /goinfre/ppreez/Desktop/glfw-3.3/examples /goinfre/ppreez/Desktop/glfw-3.3 /goinfre/ppreez/Desktop/glfw-3.3/examples /goinfre/ppreez/Desktop/glfw-3.3/examples/CMakeFiles/heightmap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/CMakeFiles/heightmap.dir/depend

