CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

#ADD_SUBDIRECTORY(googletest)

SET(CMAKE_CXX_STANDARD 11)


ADD_EXECUTABLE(VerseShell
        src/main.cpp
	src/parse.cpp
	src/indParen.cpp
	src/andParen.cpp
	src/orParen.cpp
)

#ADD_EXECUTABLE(test
#	unit_tests/unit_tests.cpp 
#)


#TARGET_LINK_LIBRARIES(test gtest)

#TARGET_COMPILE_DEFINITIONS(test PRIVATE gtest_disable_pthreads=ON)
