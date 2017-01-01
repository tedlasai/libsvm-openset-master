# Install script for directory: /home/tedlasai/Dropbox/SAITEDLA/School/UCCS/Lab/2015/LIBSVm/libsvm-openset-master/libMR/examples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bin")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/wbl-test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/wbl-test")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/wbl-test"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/wbl-test")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/home/tedlasai/Dropbox/SAITEDLA/School/UCCS/Lab/2015/LIBSVm/libsvm-openset-master/libMR/libMR/build/examples/wbl-test")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/wbl-test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/wbl-test")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/wbl-test"
         OLD_RPATH "/home/tedlasai/Dropbox/SAITEDLA/School/UCCS/Lab/2015/LIBSVm/libsvm-openset-master/libMR/libMR/build/libMR:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/wbl-test")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bin")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mr-test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mr-test")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}/usr/local/bin/mr-test"
         RPATH "")
  endif()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/usr/local/bin/mr-test")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/usr/local/bin" TYPE EXECUTABLE FILES "/home/tedlasai/Dropbox/SAITEDLA/School/UCCS/Lab/2015/LIBSVm/libsvm-openset-master/libMR/libMR/build/examples/mr-test")
  if(EXISTS "$ENV{DESTDIR}/usr/local/bin/mr-test" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/usr/local/bin/mr-test")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/usr/local/bin/mr-test"
         OLD_RPATH "/home/tedlasai/Dropbox/SAITEDLA/School/UCCS/Lab/2015/LIBSVm/libsvm-openset-master/libMR/libMR/build/libMR:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/usr/local/bin/mr-test")
    endif()
  endif()
endif()

