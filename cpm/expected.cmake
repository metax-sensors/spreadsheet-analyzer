include(CPM)
CPMAddPackage(
  NAME expected
  VERSION 1.3.1
  URL https://github.com/TartanLlama/expected/archive/refs/tags/v1.3.1.zip
  URL_HASH SHA256=68bbfd81a6d312c4518b5a1831f465fa03811355af9aa9c7403348545d1d2a56
)

if (expected_ADDED)
  set_target_properties(expected PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:expected,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
