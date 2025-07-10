include(CPM)
CPMAddPackage(
  NAME imgui_external
  VERSION 1.92.1
  URL https://github.com/ocornut/imgui/archive/refs/tags/v1.92.1-docking.zip
  URL_HASH SHA256=d40c576dad5abcba71329ade529396bdf4f9ccb28049ea883d518faa82fbda20
  DOWNLOAD_ONLY YES
)

if (imgui_external_ADDED)
	include(sdl)

	add_library(imgui
		${imgui_external_SOURCE_DIR}/imgui.cpp
		${imgui_external_SOURCE_DIR}/imgui_draw.cpp
		${imgui_external_SOURCE_DIR}/imgui_tables.cpp
		${imgui_external_SOURCE_DIR}/imgui_widgets.cpp
		${imgui_external_SOURCE_DIR}/imgui_demo.cpp
		${imgui_external_SOURCE_DIR}/backends/imgui_impl_sdl3.cpp
		${imgui_external_SOURCE_DIR}/backends/imgui_impl_sdlrenderer3.cpp
	)
	
	target_include_directories(imgui PUBLIC ${imgui_external_SOURCE_DIR} ${imgui_external_SOURCE_DIR}/misc/cpp)
	target_link_libraries(imgui PUBLIC SDL3::SDL3)

	add_executable(binary_to_compressed
		${imgui_external_SOURCE_DIR}/misc/fonts/binary_to_compressed_c.cpp
	)

	set_target_properties(imgui PROPERTIES INTERFACE_SYSTEM_INCLUDE_DIRECTORIES $<TARGET_PROPERTY:imgui,INTERFACE_INCLUDE_DIRECTORIES>)
endif()
