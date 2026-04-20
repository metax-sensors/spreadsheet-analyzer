include(CPM)
CPMAddPackage(
  NAME csv-parser
  VERSION 3.5.1
  URL https://github.com/vincentlaucsb/csv-parser/archive/refs/tags/3.5.1.zip
  URL_HASH SHA256=77507b24868e9610dac9a1aed284e01d98fd4af73dce449980216056248d14a8
)

if (csv-parser_ADDED)
  set_target_properties(csv PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:csv,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
