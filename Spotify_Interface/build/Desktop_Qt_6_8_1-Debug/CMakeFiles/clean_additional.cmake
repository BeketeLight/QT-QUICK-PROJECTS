# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appSpotify_Interface_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appSpotify_Interface_autogen.dir/ParseCache.txt"
  "appSpotify_Interface_autogen"
  )
endif()
