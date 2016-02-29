CXX=g++
CXXFLAGS=-DIB_USE_STD_STRING -Wall -Wno-switch
ROOT_DIR=/Users/hits/projects/IB/myIB
#ROOT_DIR=/Users/hits/projects/IBJts/testPosix/
TEST_DIR=${ROOT_DIR}/
BASE_SRC_DIR=${ROOT_DIR}/PosixSocketClient/src
INCLUDES=-I${ROOT_DIR}/Shared/ -I${BASE_SRC_DIR}
TARGET=PosixSocketClientTest

$(TARGET):
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o EClientSocketBase.o -c $(BASE_SRC_DIR)/EClientSocketBase.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o EPosixClientSocket.o -c $(BASE_SRC_DIR)/EPosixClientSocket.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o PosixTestClient.o -c ${TEST_DIR}/PosixTestClient.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o Main.o -c ${TEST_DIR}/Main.cpp
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o $@ EClientSocketBase.o EPosixClientSocket.o PosixTestClient.o Main.o

clean:
	rm -f $(TARGET) *.o

