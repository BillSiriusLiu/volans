# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/billliu/trials/volans/src/offboard

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/billliu/trials/volans/build/offboard

# Include any dependencies generated for this target.
include CMakeFiles/offboard_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/offboard_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/offboard_test.dir/flags.make

CMakeFiles/offboard_test.dir/src/main.cpp.o: CMakeFiles/offboard_test.dir/flags.make
CMakeFiles/offboard_test.dir/src/main.cpp.o: /home/billliu/trials/volans/src/offboard/src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/billliu/trials/volans/build/offboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/offboard_test.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/offboard_test.dir/src/main.cpp.o -c /home/billliu/trials/volans/src/offboard/src/main.cpp

CMakeFiles/offboard_test.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/offboard_test.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/billliu/trials/volans/src/offboard/src/main.cpp > CMakeFiles/offboard_test.dir/src/main.cpp.i

CMakeFiles/offboard_test.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/offboard_test.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/billliu/trials/volans/src/offboard/src/main.cpp -o CMakeFiles/offboard_test.dir/src/main.cpp.s

# Object files for target offboard_test
offboard_test_OBJECTS = \
"CMakeFiles/offboard_test.dir/src/main.cpp.o"

# External object files for target offboard_test
offboard_test_EXTERNAL_OBJECTS =

/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: CMakeFiles/offboard_test.dir/src/main.cpp.o
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: CMakeFiles/offboard_test.dir/build.make
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /home/billliu/trials/volans/devel/.private/offboard/lib/libfp.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /home/billliu/trials/volans/devel/.private/offboard/lib/libuav.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /home/billliu/trials/volans/devel/.private/offboard/lib/libul.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libmavros.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libGeographic.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libdiagnostic_updater.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libeigen_conversions.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/liborocos-kdl.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libmavconn.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libtf2_ros.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libactionlib.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libmessage_filters.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libroscpp.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libboost_chrono.so.1.71.0
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libxmlrpcpp.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libtf2.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libroscpp_serialization.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libclass_loader.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libPocoFoundation.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libdl.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/librosconsole.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/librosconsole_log4cxx.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/librosconsole_backend_interface.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libboost_regex.so.1.71.0
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/librostime.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libboost_date_time.so.1.71.0
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libcpp_common.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libboost_thread.so.1.71.0
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so.0.4
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/libroslib.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /opt/ros/noetic/lib/librospack.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libpython3.8.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so.1.71.0
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libboost_program_options.so.1.71.0
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libboost_system.so.1.71.0
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: /usr/lib/x86_64-linux-gnu/libtinyxml2.so
/home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test: CMakeFiles/offboard_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/billliu/trials/volans/build/offboard/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/offboard_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/offboard_test.dir/build: /home/billliu/trials/volans/devel/.private/offboard/lib/offboard/offboard_test

.PHONY : CMakeFiles/offboard_test.dir/build

CMakeFiles/offboard_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/offboard_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/offboard_test.dir/clean

CMakeFiles/offboard_test.dir/depend:
	cd /home/billliu/trials/volans/build/offboard && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/billliu/trials/volans/src/offboard /home/billliu/trials/volans/src/offboard /home/billliu/trials/volans/build/offboard /home/billliu/trials/volans/build/offboard /home/billliu/trials/volans/build/offboard/CMakeFiles/offboard_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/offboard_test.dir/depend

