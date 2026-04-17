include(CPM)
CPMAddPackage(
  NAME csv-parser
  VERSION 3.4.0
  URL https://github.com/vincentlaucsb/csv-parser/archive/refs/tags/3.4.0.zip
  URL_HASH SHA256=36b9b56f401faf25e89f75932ec9960aaf509e2260ef62b938ed721672b7dacb
)

if (csv-parser_ADDED)
  set_target_properties(csv PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:csv,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
