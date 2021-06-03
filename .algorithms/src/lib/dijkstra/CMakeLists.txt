add_library(
    "dijkstra"
    "./src/dijkstra.hpp"
    "./src/dijkstra.cpp"
)


target_include_directories("dijkstra" PUBLIC "${CMAKE_CURRENT_SOURCE_DIR}/src")