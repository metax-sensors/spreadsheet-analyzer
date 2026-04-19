include(CPM)
CPMAddPackage(
  NAME csv-parser
  VERSION 3.4.1
  URL https://github.com/vincentlaucsb/csv-parser/archive/refs/tags/3.4.1.zip
  URL_HASH SHA256=7e77197bc0931a1b6f0668492e0d8c848bf5a6c407336fa26bfb204577eb8335
)

if (csv-parser_ADDED)
  set_target_properties(csv PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:csv,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
