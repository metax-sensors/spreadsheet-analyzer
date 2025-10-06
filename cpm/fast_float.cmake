include(CPM)
CPMAddPackage(
  NAME FastFloat
  VERSION 8.1.0
  URL https://github.com/fastfloat/fast_float/archive/refs/tags/v8.1.0.zip
  URL_HASH SHA256=88bf28ffb0ece2045a028f264329cfedd0ec54c86b94708705bc707077753f6c
)

if (FastFloat_ADDED)
  set_target_properties(fast_float PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:fast_float,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
