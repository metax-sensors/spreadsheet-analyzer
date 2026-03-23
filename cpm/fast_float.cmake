include(CPM)
CPMAddPackage(
  NAME FastFloat
  VERSION 8.2.4
  URL https://github.com/fastfloat/fast_float/archive/refs/tags/v8.2.4.zip
  URL_HASH SHA256=a66ea29b70d7b501ee748b8313d215d2fcdaca8d94c4f7978029e9eb6f238064
)

if (FastFloat_ADDED)
  set_target_properties(fast_float PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:fast_float,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
