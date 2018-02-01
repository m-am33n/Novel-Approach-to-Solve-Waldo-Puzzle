cmake_minimum_required(VERSION 2.8)
project( Waldo )
find_package( OpenCV REQUIRED )
add_executable( Waldo Waldo.cpp )
target_link_libraries( Waldo ${OpenCV_LIBS} )

