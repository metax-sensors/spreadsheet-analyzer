include(CPM)
CPMAddPackage(
  NAME spdlog
  VERSION 1.15.2
  OPTIONS
    "SPDLOG_FMT_EXTERNAL ON"
  URL https://github.com/gabime/spdlog/archive/refs/tags/v1.15.2.tar.gz
  URL_HASH MD5=a1af96dd8b13d65f02686f31936a6684
)
