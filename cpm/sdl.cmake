include(CPM)
CPMAddPackage(
  NAME SDL3
  VERSION 3.4.0
  URL https://github.com/libsdl-org/SDL/archive/refs/tags/release-3.4.0.zip
  URL_HASH SHA256=459ee5fe2ae55857eb14c36380ffafcc64e5ddf87ade80fdf30f3f40189c9ed3
  OPTIONS
    "SDL_STATIC ON"
    "SDL_SHARED OFF"
)

if (SDL3_ADDED)
  set_target_properties(SDL3-static PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:SDL3-static,INTERFACE_INCLUDE_DIRECTORIES>)
endif()