add_library(
    "kadane"
    "./src/kadane.hpp"
    "./src/kadane.cpp"
)

target_include_directories("kadane" PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src")