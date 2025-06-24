include(CPM)
CPMAddPackage(
  NAME SDL3
  VERSION 3.2.16
  URL https://github.com/libsdl-org/SDL/archive/refs/tags/release-3.2.16.zip
  URL_HASH SHA256=d72f4e91e4b5ff20da5794478d797a62d5c9f87749ee9d5f0419d2dab8476dee
  OPTIONS
    "SDL_STATIC ON"
    "SDL_SHARED OFF"
)

if (SDL3_ADDED)
  set_target_properties(SDL3-static PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:SDL3-static,INTERFACE_INCLUDE_DIRECTORIES>)
endif()