include(CPM)
include(sdl)
CPMAddPackage(
  NAME sdl_image
  VERSION 3.2.4
  URL https://github.com/libsdl-org/SDL_image/archive/refs/tags/release-3.2.4.zip
  URL_HASH MD5=a31a141909842ed08abff75534d64bf9
  OPTIONS
    "BUILD_SHARED_LIBS OFF"
)

if (sdl_image_ADDED)
  set_target_properties(SDL3_image-static PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:SDL3_image-static,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
