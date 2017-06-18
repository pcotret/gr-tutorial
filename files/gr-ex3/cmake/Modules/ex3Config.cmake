INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_EX3 ex3)

FIND_PATH(
    EX3_INCLUDE_DIRS
    NAMES ex3/api.h
    HINTS $ENV{EX3_DIR}/include
        ${PC_EX3_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    EX3_LIBRARIES
    NAMES gnuradio-ex3
    HINTS $ENV{EX3_DIR}/lib
        ${PC_EX3_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(EX3 DEFAULT_MSG EX3_LIBRARIES EX3_INCLUDE_DIRS)
MARK_AS_ADVANCED(EX3_LIBRARIES EX3_INCLUDE_DIRS)

