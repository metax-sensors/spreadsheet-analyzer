## 1.1.1 (unreleased)
* fix generation of unique file titles to work on more circumstances
* update imgui to v1.92.6 (https://github.com/ocornut/imgui/releases/tag/v1.92.6)
* update SDL to v3.4.2 (https://github.com/libsdl-org/SDL/releases/tag/release-3.4.2)
* update SDL_image to v3.4.0 (https://github.com/libsdl-org/SDL_image/releases/tag/release-3.4.0)
* update spdlog to v1.17.0 (https://github.com/gabime/spdlog/releases/tag/v1.17.0)
* update fmt to v12.1.0 (https://github.com/fmtlib/fmt/releases/tag/12.1.0)
* update cxxopts to v3.3.1 (https://github.com/jarro2783/cxxopts/releases/tag/v3.3.1)
* update expected to v1.3.1 (https://github.com/TartanLlama/expected/releases/tag/v1.3.1)
* update fast_float to v8.2.4 (https://github.com/fastfloat/fast_float/releases/tag/v8.2.4)
* update implot to v0.17

## 1.1.0 (14.03.2025)
* move configuration of maximum displayed data points to settings menu
* fix crash if reduction factor > sample count
* change shade color to text cursor color when switching to min/max
* use one shared plot for up to two columns, automatically switch to subplots on more
* automatically rescale x axis when changing to another measurement which time range is completely out of view
* add scrollbar to measurement list box
* fix id error when column is present in data set with and without a unit specified
* fix floating point parsing on some locales
* use system locale for anything except file parsing
* show annotations at cursor to show next y-value
* allow duplicating of already loaded data sets
* change global x-link and force subplots to be a individual window settings

## 1.0.0 (05.03.2025)
* initial release