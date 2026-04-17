include(CPM)
CPMAddPackage(
  NAME FastFloat
  VERSION 8.2.5
  URL https://github.com/fastfloat/fast_float/archive/refs/tags/v8.2.5.zip
  URL_HASH SHA256=360ff7b9ae8986017d6a304ea9d5dea9044656dc8c98b19f9d56e61defa03060
)

if (FastFloat_ADDED)
  set_target_properties(fast_float PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:fast_float,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
