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
CMAKE_SOURCE_DIR = /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src

# Include any dependencies generated for this target.
include CMakeFiles/Waldo.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Waldo.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Waldo.dir/flags.make

CMakeFiles/Waldo.dir/Waldo.cpp.o: CMakeFiles/Waldo.dir/flags.make
CMakeFiles/Waldo.dir/Waldo.cpp.o: Waldo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Waldo.dir/Waldo.cpp.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Waldo.dir/Waldo.cpp.o -c /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src/Waldo.cpp

CMakeFiles/Waldo.dir/Waldo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Waldo.dir/Waldo.cpp.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src/Waldo.cpp > CMakeFiles/Waldo.dir/Waldo.cpp.i

CMakeFiles/Waldo.dir/Waldo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Waldo.dir/Waldo.cpp.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src/Waldo.cpp -o CMakeFiles/Waldo.dir/Waldo.cpp.s

CMakeFiles/Waldo.dir/Waldo.cpp.o.requires:

.PHONY : CMakeFiles/Waldo.dir/Waldo.cpp.o.requires

CMakeFiles/Waldo.dir/Waldo.cpp.o.provides: CMakeFiles/Waldo.dir/Waldo.cpp.o.requires
	$(MAKE) -f CMakeFiles/Waldo.dir/build.make CMakeFiles/Waldo.dir/Waldo.cpp.o.provides.build
.PHONY : CMakeFiles/Waldo.dir/Waldo.cpp.o.provides

CMakeFiles/Waldo.dir/Waldo.cpp.o.provides.build: CMakeFiles/Waldo.dir/Waldo.cpp.o


# Object files for target Waldo
Waldo_OBJECTS = \
"CMakeFiles/Waldo.dir/Waldo.cpp.o"

# External object files for target Waldo
Waldo_EXTERNAL_OBJECTS =

Waldo: CMakeFiles/Waldo.dir/Waldo.cpp.o
Waldo: CMakeFiles/Waldo.dir/build.make
Waldo: /usr/local/lib/libopencv_shape.so.3.2.0
Waldo: /usr/local/lib/libopencv_stitching.so.3.2.0
Waldo: /usr/local/lib/libopencv_superres.so.3.2.0
Waldo: /usr/local/lib/libopencv_videostab.so.3.2.0
Waldo: /usr/local/lib/libopencv_objdetect.so.3.2.0
Waldo: /usr/local/lib/libopencv_calib3d.so.3.2.0
Waldo: /usr/local/lib/libopencv_features2d.so.3.2.0
Waldo: /usr/local/lib/libopencv_flann.so.3.2.0
Waldo: /usr/local/lib/libopencv_highgui.so.3.2.0
Waldo: /usr/local/lib/libopencv_ml.so.3.2.0
Waldo: /usr/local/lib/libopencv_photo.so.3.2.0
Waldo: /usr/local/lib/libopencv_video.so.3.2.0
Waldo: /usr/local/lib/libopencv_videoio.so.3.2.0
Waldo: /usr/local/lib/libopencv_imgcodecs.so.3.2.0
Waldo: /usr/local/lib/libopencv_imgproc.so.3.2.0
Waldo: /usr/local/lib/libopencv_core.so.3.2.0
Waldo: CMakeFiles/Waldo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Waldo"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Waldo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Waldo.dir/build: Waldo

.PHONY : CMakeFiles/Waldo.dir/build

CMakeFiles/Waldo.dir/requires: CMakeFiles/Waldo.dir/Waldo.cpp.o.requires

.PHONY : CMakeFiles/Waldo.dir/requires

CMakeFiles/Waldo.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Waldo.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Waldo.dir/clean

CMakeFiles/Waldo.dir/depend:
	cd /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src /home/aswanth/Desktop/Sem6/CG/MiniProject/WaldoPuzzle/src/CMakeFiles/Waldo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Waldo.dir/depend

