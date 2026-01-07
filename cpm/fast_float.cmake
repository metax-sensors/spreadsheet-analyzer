include(CPM)
CPMAddPackage(
  NAME FastFloat
  VERSION 8.2.2
  URL https://github.com/fastfloat/fast_float/archive/refs/tags/v8.2.2.zip
  URL_HASH SHA256=5c90ad15c11bd4ba9940434b479fbfde5c52b43610314c710c77abb044f8742b
)

if (FastFloat_ADDED)
  set_target_properties(fast_float PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:fast_float,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
