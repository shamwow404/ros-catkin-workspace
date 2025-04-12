# Install script for directory: /root/catkin_ws/src/pepper_meshes

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/root/catkin_ws/build/pepper_meshes/catkin_generated/installspace/pepper_meshes.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pepper_meshes/cmake" TYPE FILE FILES
    "/root/catkin_ws/build/pepper_meshes/catkin_generated/installspace/pepper_meshesConfig.cmake"
    "/root/catkin_ws/build/pepper_meshes/catkin_generated/installspace/pepper_meshesConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pepper_meshes" TYPE FILE FILES "/root/catkin_ws/src/pepper_meshes/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  
# uncompress the archive
message(STATUS "using /root/catkin_ws/devel/tmp/installer.run to decompress to /root/catkin_ws/devel/tmp")
execute_process(COMMAND /root/catkin_ws/devel/tmp/installer.run --mode unattended --prefix /root/catkin_ws/devel/tmp
                OUTPUT_VARIABLE OUT
                ERROR_VARIABLE ERROR
                RESULT_VARIABLE RESULT
)
message(STATUS "intall out: ${OUT}")
message(STATUS "install error: ${ERROR}")
message(STATUS "install result: ${RESULT}")

execute_process(COMMAND ls
                WORKING_DIRECTORY /root/catkin_ws/devel/tmp
                OUTPUT_VARIABLE OUT_LS
                ERROR_VARIABLE ERROR_LS
                RESULT_VARIABLE RESULT_LS
)
message(STATUS "ls out: ${OUT_LS}")
message(STATUS "ls error: ${ERROR_LS}")
message(STATUS "ls result: ${RESULT_LS}")

execute_process(COMMAND file /root/catkin_ws/devel/tmp/installer.run
                OUTPUT_VARIABLE OUT_FILE
                ERROR_VARIABLE ERROR_FILE_CMD
                RESULT_VARIABLE RESULT_FILE
)
message(STATUS "file out: ${OUT_FILE}")
message(STATUS "file error: ${ERROR_FILE_CMD}")
message(STATUS "file result: ${RESULT_FILE}")

endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pepper_meshes//" TYPE DIRECTORY FILES "/root/catkin_ws/devel/tmp/meshes")
endif()

