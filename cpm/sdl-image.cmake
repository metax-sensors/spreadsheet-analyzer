include(CPM)
include(sdl)
CPMAddPackage(
  NAME sdl_image
  VERSION 3.2.6
  URL https://github.com/libsdl-org/SDL_image/archive/refs/tags/release-3.2.6.zip
  URL_HASH SHA256=b3e5049194cae564eacab5c06d5341ef4e831e952271c3cada2f39c3a352ab58
  OPTIONS
    "BUILD_SHARED_LIBS OFF"
)

if (sdl_image_ADDED)
  set_target_properties(SDL3_image-static PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:SDL3_image-static,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
