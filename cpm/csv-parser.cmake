include(CPM)
CPMAddPackage(
  NAME csv-parser
  VERSION 2.3.0
  URL https://github.com/vincentlaucsb/csv-parser/archive/refs/tags/2.3.0.zip
  URL_HASH SHA256=17eb8e1a4f2f8cdc6679329e4626de608bb33a830d5614184a21b5d8838bbbb0
)

if (csv-parser_ADDED)
  set_target_properties(csv PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:csv,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
