include(CPM)
CPMAddPackage(
  NAME SDL3
  VERSION 3.4.2
  URL https://github.com/libsdl-org/SDL/archive/refs/tags/release-3.4.2.zip
  URL_HASH SHA256=0af8409d8ccde8c46382b78c2a5a11658362f3b4def7532e9d0658af4d7c6a7e
  OPTIONS
    "SDL_STATIC ON"
    "SDL_SHARED OFF"
)

if (SDL3_ADDED)
  set_target_properties(SDL3-static PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:SDL3-static,INTERFACE_INCLUDE_DIRECTORIES>)
endif()