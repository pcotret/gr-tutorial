INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_EX1 ex1)

FIND_PATH(
    EX1_INCLUDE_DIRS
    NAMES ex1/api.h
    HINTS $ENV{EX1_DIR}/include
        ${PC_EX1_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    EX1_LIBRARIES
    NAMES gnuradio-ex1
    HINTS $ENV{EX1_DIR}/lib
        ${PC_EX1_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(EX1 DEFAULT_MSG EX1_LIBRARIES EX1_INCLUDE_DIRS)
MARK_AS_ADVANCED(EX1_LIBRARIES EX1_INCLUDE_DIRS)

