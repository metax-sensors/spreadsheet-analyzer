include(CPM)
CPMAddPackage(
  NAME implot_external
  VERSION 1.0
  URL https://github.com/epezent/implot/releases/download/v1.0/implot-v1.0.tar.gz
  URL_HASH SHA256=20ca14d5a46f36a650746096c74eba8bea99c9432cd3c877343b96b17a6ae566
)

if (implot_external_ADDED)
  add_library(implot
    ${implot_external_SOURCE_DIR}/implot.cpp
    ${implot_external_SOURCE_DIR}/implot_items.cpp
  )

  target_include_directories(implot PUBLIC ${implot_external_SOURCE_DIR})
  target_link_libraries(implot PRIVATE imgui)
  target_compile_definitions(implot PUBLIC -DIMPLOT_DISABLE_OBSOLETE_FUNCTIONS=1)

  set_target_properties(implot PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:implot,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
