add_library(
    "lis"
    "./src/lis.hpp"
    "./src/lis.cpp"
)

target_include_directories("lis" PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src")