# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_SOURCE_DIR = /root/workspace/lmac-ila

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/workspace/lmac-ila/build

# Include any dependencies generated for this target.
include CMakeFiles/lmac.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/lmac.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/lmac.dir/flags.make

CMakeFiles/lmac.dir/app/main.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/app/main.cc.o: ../app/main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/lmac.dir/app/main.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/app/main.cc.o -c /root/workspace/lmac-ila/app/main.cc

CMakeFiles/lmac.dir/app/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/app/main.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/app/main.cc > CMakeFiles/lmac.dir/app/main.cc.i

CMakeFiles/lmac.dir/app/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/app/main.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/app/main.cc -o CMakeFiles/lmac.dir/app/main.cc.s

CMakeFiles/lmac.dir/app/main.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/app/main.cc.o.requires

CMakeFiles/lmac.dir/app/main.cc.o.provides: CMakeFiles/lmac.dir/app/main.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/app/main.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/app/main.cc.o.provides

CMakeFiles/lmac.dir/app/main.cc.o.provides.build: CMakeFiles/lmac.dir/app/main.cc.o


CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o: ../src/core2/eqcheck.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o -c /root/workspace/lmac-ila/src/core2/eqcheck.cc

CMakeFiles/lmac.dir/src/core2/eqcheck.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/eqcheck.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/eqcheck.cc > CMakeFiles/lmac.dir/src/core2/eqcheck.cc.i

CMakeFiles/lmac.dir/src/core2/eqcheck.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/eqcheck.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/eqcheck.cc -o CMakeFiles/lmac.dir/src/core2/eqcheck.cc.s

CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o.requires

CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o.provides: CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o.provides

CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o


CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o: ../src/core2/eqcheck_reg.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o -c /root/workspace/lmac-ila/src/core2/eqcheck_reg.cc

CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/eqcheck_reg.cc > CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.i

CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/eqcheck_reg.cc -o CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.s

CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o.requires

CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o.provides: CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o.provides

CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o


CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o: ../src/core2/eqcheck_tx.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o -c /root/workspace/lmac-ila/src/core2/eqcheck_tx.cc

CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/eqcheck_tx.cc > CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.i

CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/eqcheck_tx.cc -o CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.s

CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o.requires

CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o.provides: CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o.provides

CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o


CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o: ../src/core2/lmac_core_top.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o -c /root/workspace/lmac-ila/src/core2/lmac_core_top.cc

CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/lmac_core_top.cc > CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.i

CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/lmac_core_top.cc -o CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.s

CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o.requires

CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o.provides: CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o.provides

CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o


CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o: ../src/core2/lmac_top_interface.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o -c /root/workspace/lmac-ila/src/core2/lmac_top_interface.cc

CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/lmac_top_interface.cc > CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.i

CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/lmac_top_interface.cc -o CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.s

CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o.requires

CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o.provides: CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o.provides

CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o


CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o: ../src/core2/tx_instr.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o -c /root/workspace/lmac-ila/src/core2/tx_instr.cc

CMakeFiles/lmac.dir/src/core2/tx_instr.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/tx_instr.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/tx_instr.cc > CMakeFiles/lmac.dir/src/core2/tx_instr.cc.i

CMakeFiles/lmac.dir/src/core2/tx_instr.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/tx_instr.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/tx_instr.cc -o CMakeFiles/lmac.dir/src/core2/tx_instr.cc.s

CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o.requires

CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o.provides: CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o.provides

CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o


CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o: ../src/core2/mmio_regs.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o -c /root/workspace/lmac-ila/src/core2/mmio_regs.cc

CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/mmio_regs.cc > CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.i

CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/mmio_regs.cc -o CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.s

CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o.requires

CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o.provides: CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o.provides

CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o


CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o: ../src/core2/reg_instr.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o -c /root/workspace/lmac-ila/src/core2/reg_instr.cc

CMakeFiles/lmac.dir/src/core2/reg_instr.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/reg_instr.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/reg_instr.cc > CMakeFiles/lmac.dir/src/core2/reg_instr.cc.i

CMakeFiles/lmac.dir/src/core2/reg_instr.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/reg_instr.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/reg_instr.cc -o CMakeFiles/lmac.dir/src/core2/reg_instr.cc.s

CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o.requires

CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o.provides: CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o.provides

CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o


CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o: ../src/core2/reg_interface.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o -c /root/workspace/lmac-ila/src/core2/reg_interface.cc

CMakeFiles/lmac.dir/src/core2/reg_interface.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/reg_interface.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/reg_interface.cc > CMakeFiles/lmac.dir/src/core2/reg_interface.cc.i

CMakeFiles/lmac.dir/src/core2/reg_interface.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/reg_interface.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/reg_interface.cc -o CMakeFiles/lmac.dir/src/core2/reg_interface.cc.s

CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o.requires

CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o.provides: CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o.provides

CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o


CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o: ../src/core2/rx_interface.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o -c /root/workspace/lmac-ila/src/core2/rx_interface.cc

CMakeFiles/lmac.dir/src/core2/rx_interface.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/rx_interface.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/rx_interface.cc > CMakeFiles/lmac.dir/src/core2/rx_interface.cc.i

CMakeFiles/lmac.dir/src/core2/rx_interface.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/rx_interface.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/rx_interface.cc -o CMakeFiles/lmac.dir/src/core2/rx_interface.cc.s

CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o.requires

CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o.provides: CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o.provides

CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o


CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o: ../src/core2/tx_interface.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building CXX object CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o -c /root/workspace/lmac-ila/src/core2/tx_interface.cc

CMakeFiles/lmac.dir/src/core2/tx_interface.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/tx_interface.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/tx_interface.cc > CMakeFiles/lmac.dir/src/core2/tx_interface.cc.i

CMakeFiles/lmac.dir/src/core2/tx_interface.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/tx_interface.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/tx_interface.cc -o CMakeFiles/lmac.dir/src/core2/tx_interface.cc.s

CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o.requires

CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o.provides: CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o.provides

CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o


CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o: ../src/core2/tx_internal.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building CXX object CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o -c /root/workspace/lmac-ila/src/core2/tx_internal.cc

CMakeFiles/lmac.dir/src/core2/tx_internal.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/tx_internal.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/tx_internal.cc > CMakeFiles/lmac.dir/src/core2/tx_internal.cc.i

CMakeFiles/lmac.dir/src/core2/tx_internal.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/tx_internal.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/tx_internal.cc -o CMakeFiles/lmac.dir/src/core2/tx_internal.cc.s

CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o.requires

CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o.provides: CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o.provides

CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o


CMakeFiles/lmac.dir/src/utils.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/utils.cc.o: ../src/utils.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_14) "Building CXX object CMakeFiles/lmac.dir/src/utils.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/utils.cc.o -c /root/workspace/lmac-ila/src/utils.cc

CMakeFiles/lmac.dir/src/utils.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/utils.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/utils.cc > CMakeFiles/lmac.dir/src/utils.cc.i

CMakeFiles/lmac.dir/src/utils.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/utils.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/utils.cc -o CMakeFiles/lmac.dir/src/utils.cc.s

CMakeFiles/lmac.dir/src/utils.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/utils.cc.o.requires

CMakeFiles/lmac.dir/src/utils.cc.o.provides: CMakeFiles/lmac.dir/src/utils.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/utils.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/utils.cc.o.provides

CMakeFiles/lmac.dir/src/utils.cc.o.provides.build: CMakeFiles/lmac.dir/src/utils.cc.o


CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o: ../src/core2/eqcheck_fifo_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_15) "Building CXX object CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o -c /root/workspace/lmac-ila/src/core2/eqcheck_fifo_test.cc

CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/eqcheck_fifo_test.cc > CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.i

CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/eqcheck_fifo_test.cc -o CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.s

CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o.requires

CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o.provides: CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o.provides

CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o


CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o: CMakeFiles/lmac.dir/flags.make
CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o: ../src/core2/fifo_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_16) "Building CXX object CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o -c /root/workspace/lmac-ila/src/core2/fifo_test.cc

CMakeFiles/lmac.dir/src/core2/fifo_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lmac.dir/src/core2/fifo_test.cc.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/workspace/lmac-ila/src/core2/fifo_test.cc > CMakeFiles/lmac.dir/src/core2/fifo_test.cc.i

CMakeFiles/lmac.dir/src/core2/fifo_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lmac.dir/src/core2/fifo_test.cc.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/workspace/lmac-ila/src/core2/fifo_test.cc -o CMakeFiles/lmac.dir/src/core2/fifo_test.cc.s

CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o.requires:

.PHONY : CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o.requires

CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o.provides: CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o.requires
	$(MAKE) -f CMakeFiles/lmac.dir/build.make CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o.provides.build
.PHONY : CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o.provides

CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o.provides.build: CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o


# Object files for target lmac
lmac_OBJECTS = \
"CMakeFiles/lmac.dir/app/main.cc.o" \
"CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o" \
"CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o" \
"CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o" \
"CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o" \
"CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o" \
"CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o" \
"CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o" \
"CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o" \
"CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o" \
"CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o" \
"CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o" \
"CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o" \
"CMakeFiles/lmac.dir/src/utils.cc.o" \
"CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o" \
"CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o"

# External object files for target lmac
lmac_EXTERNAL_OBJECTS =

lmac: CMakeFiles/lmac.dir/app/main.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o
lmac: CMakeFiles/lmac.dir/src/utils.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o
lmac: CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o
lmac: CMakeFiles/lmac.dir/build.make
lmac: /usr/local/lib/libilang.so
lmac: /usr/local/lib/libglogd.so.0.4.0
lmac: /usr/local/lib/libverilogparser.so
lmac: /usr/local/lib/libvcdparser.so
lmac: /usr/local/lib/libsmtparser.so
lmac: /usr/lib/libz3.so
lmac: CMakeFiles/lmac.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/workspace/lmac-ila/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_17) "Linking CXX executable lmac"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lmac.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/lmac.dir/build: lmac

.PHONY : CMakeFiles/lmac.dir/build

CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/app/main.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/eqcheck.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/eqcheck_reg.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/eqcheck_tx.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/lmac_core_top.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/lmac_top_interface.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/tx_instr.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/mmio_regs.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/reg_instr.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/reg_interface.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/rx_interface.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/tx_interface.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/tx_internal.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/utils.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/eqcheck_fifo_test.cc.o.requires
CMakeFiles/lmac.dir/requires: CMakeFiles/lmac.dir/src/core2/fifo_test.cc.o.requires

.PHONY : CMakeFiles/lmac.dir/requires

CMakeFiles/lmac.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/lmac.dir/cmake_clean.cmake
.PHONY : CMakeFiles/lmac.dir/clean

CMakeFiles/lmac.dir/depend:
	cd /root/workspace/lmac-ila/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/workspace/lmac-ila /root/workspace/lmac-ila /root/workspace/lmac-ila/build /root/workspace/lmac-ila/build /root/workspace/lmac-ila/build/CMakeFiles/lmac.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/lmac.dir/depend

