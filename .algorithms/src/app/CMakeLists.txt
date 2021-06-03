add_executable(
    "dijkstra_e"
    "dijkstra_main.cpp"
)

target_link_libraries("dijkstra_e" PRIVATE "dijkstra")

add_executable(
    "binarysearcher"
    "binarysearcher.cpp"
)

target_link_libraries("binarysearcher" PRIVATE "binarysearch")