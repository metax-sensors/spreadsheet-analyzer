include(CPM)
CPMAddPackage(
  NAME stduuid
  VERSION 1.2.3
  URL https://github.com/mariusbancila/stduuid/archive/refs/tags/v1.2.3.zip
  URL_HASH SHA256=0f867768ce55f2d8fa361be82f87f0ea5e51438bc47ca30cd92c9fd8b014e84e
)

if (stduuid_ADDED)
  set_target_properties(stduuid PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:stduuid,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
