include(CPM)
CPMAddPackage(
  NAME csv-parser
  VERSION 3.1.0
  URL https://github.com/vincentlaucsb/csv-parser/archive/refs/tags/3.1.0.zip
  URL_HASH SHA256=8e4a3bf7a0f09f2a751857657e91bd3ee1382d3f2b36873a499abbd58ab172f2
)

if (csv-parser_ADDED)
  set_target_properties(csv PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:csv,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
