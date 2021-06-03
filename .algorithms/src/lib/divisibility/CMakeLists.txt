add_library(
    "divisibility"
    "./src/divisibility.hpp"
    "./src/divisibility.cpp"
)

target_include_directories(
    "divisibility" PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src"
)