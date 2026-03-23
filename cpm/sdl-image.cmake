include(CPM)
include(sdl)
CPMAddPackage(
  NAME sdl_image
  VERSION 3.4.0
  URL https://github.com/libsdl-org/SDL_image/archive/refs/tags/release-3.4.0.zip
  URL_HASH SHA256=4d07b2cdb5c048db97c5027022e15329881752f0e442cbca9612bce703401a9d
  OPTIONS
    "BUILD_SHARED_LIBS OFF"
)

if (sdl_image_ADDED)
  set_target_properties(SDL3_image-static PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:SDL3_image-static,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
