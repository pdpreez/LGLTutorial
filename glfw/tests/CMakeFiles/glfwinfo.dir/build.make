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
include tests/CMakeFiles/glfwinfo.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/glfwinfo.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/glfwinfo.dir/flags.make

tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o: tests/CMakeFiles/glfwinfo.dir/flags.make
tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o: tests/glfwinfo.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/goinfre/ppreez/Desktop/glfw-3.3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/glfwinfo.c.o   -c /goinfre/ppreez/Desktop/glfw-3.3/tests/glfwinfo.c

tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/glfwinfo.c.i"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /goinfre/ppreez/Desktop/glfw-3.3/tests/glfwinfo.c > CMakeFiles/glfwinfo.dir/glfwinfo.c.i

tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/glfwinfo.c.s"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /goinfre/ppreez/Desktop/glfw-3.3/tests/glfwinfo.c -o CMakeFiles/glfwinfo.dir/glfwinfo.c.s

tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o: tests/CMakeFiles/glfwinfo.dir/flags.make
tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o: deps/getopt.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/goinfre/ppreez/Desktop/glfw-3.3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o   -c /goinfre/ppreez/Desktop/glfw-3.3/deps/getopt.c

tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /goinfre/ppreez/Desktop/glfw-3.3/deps/getopt.c > CMakeFiles/glfwinfo.dir/__/deps/getopt.c.i

tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /goinfre/ppreez/Desktop/glfw-3.3/deps/getopt.c -o CMakeFiles/glfwinfo.dir/__/deps/getopt.c.s

tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o: tests/CMakeFiles/glfwinfo.dir/flags.make
tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o: deps/glad_gl.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/goinfre/ppreez/Desktop/glfw-3.3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o   -c /goinfre/ppreez/Desktop/glfw-3.3/deps/glad_gl.c

tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.i"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /goinfre/ppreez/Desktop/glfw-3.3/deps/glad_gl.c > CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.i

tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.s"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /goinfre/ppreez/Desktop/glfw-3.3/deps/glad_gl.c -o CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.s

tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o: tests/CMakeFiles/glfwinfo.dir/flags.make
tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o: deps/glad_vulkan.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/goinfre/ppreez/Desktop/glfw-3.3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o   -c /goinfre/ppreez/Desktop/glfw-3.3/deps/glad_vulkan.c

tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.i"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /goinfre/ppreez/Desktop/glfw-3.3/deps/glad_vulkan.c > CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.i

tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.s"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /goinfre/ppreez/Desktop/glfw-3.3/deps/glad_vulkan.c -o CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.s

# Object files for target glfwinfo
glfwinfo_OBJECTS = \
"CMakeFiles/glfwinfo.dir/glfwinfo.c.o" \
"CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o" \
"CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o" \
"CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o"

# External object files for target glfwinfo
glfwinfo_EXTERNAL_OBJECTS =

tests/glfwinfo: tests/CMakeFiles/glfwinfo.dir/glfwinfo.c.o
tests/glfwinfo: tests/CMakeFiles/glfwinfo.dir/__/deps/getopt.c.o
tests/glfwinfo: tests/CMakeFiles/glfwinfo.dir/__/deps/glad_gl.c.o
tests/glfwinfo: tests/CMakeFiles/glfwinfo.dir/__/deps/glad_vulkan.c.o
tests/glfwinfo: tests/CMakeFiles/glfwinfo.dir/build.make
tests/glfwinfo: src/libglfw3.a
tests/glfwinfo: tests/CMakeFiles/glfwinfo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/goinfre/ppreez/Desktop/glfw-3.3/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable glfwinfo"
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/glfwinfo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/glfwinfo.dir/build: tests/glfwinfo

.PHONY : tests/CMakeFiles/glfwinfo.dir/build

tests/CMakeFiles/glfwinfo.dir/clean:
	cd /goinfre/ppreez/Desktop/glfw-3.3/tests && $(CMAKE_COMMAND) -P CMakeFiles/glfwinfo.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/glfwinfo.dir/clean

tests/CMakeFiles/glfwinfo.dir/depend:
	cd /goinfre/ppreez/Desktop/glfw-3.3 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /goinfre/ppreez/Desktop/glfw-3.3 /goinfre/ppreez/Desktop/glfw-3.3/tests /goinfre/ppreez/Desktop/glfw-3.3 /goinfre/ppreez/Desktop/glfw-3.3/tests /goinfre/ppreez/Desktop/glfw-3.3/tests/CMakeFiles/glfwinfo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/glfwinfo.dir/depend

