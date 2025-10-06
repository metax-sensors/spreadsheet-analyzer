include(CPM)
CPMAddPackage(
  NAME fmt
  VERSION 12.0.0
  URL https://github.com/fmtlib/fmt/releases/download/12.0.0/fmt-12.0.0.zip
  URL_HASH SHA256=1c32293203449792bf8e94c7f6699c643887e826f2d66a80869b4f279fb07d25
)

if (fmt_ADDED)
  set_target_properties(fmt PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:fmt,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
