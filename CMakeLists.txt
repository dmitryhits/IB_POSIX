cmake_minimum_required(VERSION 3.3)
project(IB_POSIX)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -DIB_USE_STD_STRING")
set(MY_SOURCE_DIR
        ~/projects/IBJts/testPosix)
set(SOURCE_FILES
        "PosixSocketClient/src/EClientSocketBase.cpp"
        "PosixSocketClient/src/EPosixClientSocket.cpp"
        "Main.cpp"
        "PosixTestClient.cpp")
include_directories( Shared PosixSocketClient/src)
add_executable(testIB ${SOURCE_FILES})