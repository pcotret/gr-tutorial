INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_CPYT cpyt)

FIND_PATH(
    CPYT_INCLUDE_DIRS
    NAMES cpyt/api.h
    HINTS $ENV{CPYT_DIR}/include
        ${PC_CPYT_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    CPYT_LIBRARIES
    NAMES gnuradio-cpyt
    HINTS $ENV{CPYT_DIR}/lib
        ${PC_CPYT_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(CPYT DEFAULT_MSG CPYT_LIBRARIES CPYT_INCLUDE_DIRS)
MARK_AS_ADVANCED(CPYT_LIBRARIES CPYT_INCLUDE_DIRS)

