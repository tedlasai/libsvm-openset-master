#FIND_PACKAGE(Python)
EXECUTE_PROCESS (
    COMMAND python -c "from distutils import sysconfig;print sysconfig.get_python_lib(0)"
    OUTPUT_VARIABLE PYTHON_INSTALL_PATH
    OUTPUT_STRIP_TRAILING_WHITESPACE
  )
MESSAGE (STATUS "SWIG Python: Python module install path: " ${PYTHON_INSTALL_PATH})
# This example shows how to use python
add_definitions(-std=c99)
FIND_PACKAGE(SWIG REQUIRED)
INCLUDE(${SWIG_USE_FILE})

FIND_PACKAGE(PythonLibs)
INCLUDE_DIRECTORIES(${PYTHON_INCLUDE_PATH})

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})


SET(CMAKE_SWIG_FLAGS "")

#SET_SOURCE_FILES_PROPERTIES(weibull.i PROPERTIES CPLUSPLUS ON)
SET_SOURCE_FILES_PROPERTIES(weibull.i PROPERTIES C ON)
SET_SOURCE_FILES_PROPERTIES(weibull.i PROPERTIES SWIG_FLAGS "-includeall")
SWIG_ADD_MODULE(weibull python  weibull.i )

target_link_libraries(_weibull MR)
SWIG_LINK_LIBRARIES(weibull ${PYTHON_LIBRARIES})
SET_TARGET_PROPERTIES(_weibull PROPERTIES OUTPUT_NAME "_pyweibullw")

IF (NOT WIN32)   
    INSTALL (
      FILES
        ${CMAKE_CURRENT_BINARY_DIR}/pyweibullw.py
        ${CMAKE_CURRENT_BINARY_DIR}/_pyweibullw.so
      DESTINATION ${PYTHON_INSTALL_PATH}
    )
  ELSE(NOT WIN32)
      INSTALL ( FILES 
      ${CMAKE_CURRENT_BINARY_DIR}/pyweibullw.pyd
      DESTINATION share/python
      COMPONENT "python_swig" )
  ENDIF(NOT WIN32)
