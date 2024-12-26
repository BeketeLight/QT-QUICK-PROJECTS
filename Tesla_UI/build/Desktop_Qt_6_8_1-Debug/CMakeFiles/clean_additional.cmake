# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appTesla_UI_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appTesla_UI_autogen.dir/ParseCache.txt"
  "appTesla_UI_autogen"
  )
endif()
