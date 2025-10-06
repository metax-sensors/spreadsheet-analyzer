include(CPM)
CPMAddPackage(
  NAME SDL3
  VERSION 3.2.24
  URL https://github.com/libsdl-org/SDL/archive/refs/tags/release-3.2.24.zip
  URL_HASH SHA256=a8d7517c2e8b9eab777bd0d78bda15dfc7f61538853d19600be876bd20c939df
  OPTIONS
    "SDL_STATIC ON"
    "SDL_SHARED OFF"
)

if (SDL3_ADDED)
  set_target_properties(SDL3-static PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:SDL3-static,INTERFACE_INCLUDE_DIRECTORIES>)
endif()