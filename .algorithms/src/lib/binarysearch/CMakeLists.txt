add_library(
    "binarysearch"
    "./src/binarysearch.hpp"
    "./src/binarysearch.cpp"
)

target_include_directories(
    "binarysearch" PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src"
)