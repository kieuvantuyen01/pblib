#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PBlib::pblib" for configuration ""
set_property(TARGET PBlib::pblib APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(PBlib::pblib PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "${_IMPORT_PREFIX}/lib/libpb.a"
  )

list(APPEND _cmake_import_check_targets PBlib::pblib )
list(APPEND _cmake_import_check_files_for_PBlib::pblib "${_IMPORT_PREFIX}/lib/libpb.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
