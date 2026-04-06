include(CPM)
CPMAddPackage(
  NAME SDL3
  VERSION 3.4.4
  URL https://github.com/libsdl-org/SDL/archive/refs/tags/release-3.4.4.zip
  URL_HASH SHA256=490f8c3ba605edafa0b9dd826958782fa0a0921cb70ae92460be8ef0e483c17c
  OPTIONS
    "SDL_STATIC ON"
    "SDL_SHARED OFF"
)

if (SDL3_ADDED)
  set_target_properties(SDL3-static PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:SDL3-static,INTERFACE_INCLUDE_DIRECTORIES>)
endif()