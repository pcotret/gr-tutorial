INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_EX2 ex2)

FIND_PATH(
    EX2_INCLUDE_DIRS
    NAMES ex2/api.h
    HINTS $ENV{EX2_DIR}/include
        ${PC_EX2_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    EX2_LIBRARIES
    NAMES gnuradio-ex2
    HINTS $ENV{EX2_DIR}/lib
        ${PC_EX2_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(EX2 DEFAULT_MSG EX2_LIBRARIES EX2_INCLUDE_DIRS)
MARK_AS_ADVANCED(EX2_LIBRARIES EX2_INCLUDE_DIRS)

