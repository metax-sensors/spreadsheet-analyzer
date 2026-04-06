include(CPM)
include(sdl)
CPMAddPackage(
  NAME sdl_image
  VERSION 3.4.2
  URL https://github.com/libsdl-org/SDL_image/archive/refs/tags/release-3.4.2.zip
  URL_HASH SHA256=bf89f4dd5aa5420b6a7cd70341b61f1f76e310f621a1d1ccd14ca2597c922478
  OPTIONS
    "BUILD_SHARED_LIBS OFF"
)

if (sdl_image_ADDED)
  set_target_properties(SDL3_image-static PROPERTIES
    C_STANDARD 17
    C_STANDARD_REQUIRED ON
    C_EXTENSIONS OFF
  )
  set_target_properties(SDL3_image-static PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:SDL3_image-static,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
