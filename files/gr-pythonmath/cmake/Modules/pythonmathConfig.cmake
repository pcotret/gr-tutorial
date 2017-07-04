INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_PYTHONMATH pythonmath)

FIND_PATH(
    PYTHONMATH_INCLUDE_DIRS
    NAMES pythonmath/api.h
    HINTS $ENV{PYTHONMATH_DIR}/include
        ${PC_PYTHONMATH_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    PYTHONMATH_LIBRARIES
    NAMES gnuradio-pythonmath
    HINTS $ENV{PYTHONMATH_DIR}/lib
        ${PC_PYTHONMATH_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PYTHONMATH DEFAULT_MSG PYTHONMATH_LIBRARIES PYTHONMATH_INCLUDE_DIRS)
MARK_AS_ADVANCED(PYTHONMATH_LIBRARIES PYTHONMATH_INCLUDE_DIRS)

