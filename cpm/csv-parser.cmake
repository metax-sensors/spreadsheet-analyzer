include(CPM)
CPMAddPackage(
  NAME csv-parser
  VERSION 3.2.0
  URL https://github.com/vincentlaucsb/csv-parser/archive/refs/tags/3.2.0.zip
  URL_HASH SHA256=5775eb28b0a0eaaf4ca9e55cf8226f1949ed03f4cba79fee9f2eb4ec5be461e7
)

if (csv-parser_ADDED)
  set_target_properties(csv PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:csv,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
