include(CPM)
CPMAddPackage(
  NAME fmt
  VERSION 11.2.0
  URL https://github.com/fmtlib/fmt/releases/download/11.2.0/fmt-11.2.0.zip
  URL_HASH SHA256=203eb4e8aa0d746c62d8f903df58e0419e3751591bb53ff971096eaa0ebd4ec3
)

if (fmt_ADDED)
  set_target_properties(fmt PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:fmt,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
