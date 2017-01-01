#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "MR" for configuration "Debug"
set_property(TARGET MR APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(MR PROPERTIES
  IMPORTED_LOCATION_DEBUG "/usr/local/lib/libMR.so"
  IMPORTED_SONAME_DEBUG "libMR.so"
  )

list(APPEND _IMPORT_CHECK_TARGETS MR )
list(APPEND _IMPORT_CHECK_FILES_FOR_MR "/usr/local/lib/libMR.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
