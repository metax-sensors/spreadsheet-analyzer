include(CPM)
CPMAddPackage(
  NAME csv-parser
  VERSION 3.0.0
  URL https://github.com/vincentlaucsb/csv-parser/archive/refs/tags/3.0.0.zip
  URL_HASH SHA256=999e20ec008e2ea8e9e643252003b00c141399d95075cbf2c227994eb09533aa
)

if (csv-parser_ADDED)
  set_target_properties(csv PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:csv,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
