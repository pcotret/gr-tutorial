INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_HELLO hello)

FIND_PATH(
    HELLO_INCLUDE_DIRS
    NAMES hello/api.h
    HINTS $ENV{HELLO_DIR}/include
        ${PC_HELLO_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    HELLO_LIBRARIES
    NAMES gnuradio-hello
    HINTS $ENV{HELLO_DIR}/lib
        ${PC_HELLO_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(HELLO DEFAULT_MSG HELLO_LIBRARIES HELLO_INCLUDE_DIRS)
MARK_AS_ADVANCED(HELLO_LIBRARIES HELLO_INCLUDE_DIRS)

