
CMAKE_MINIMUM_REQUIRED(VERSION 2.6 FATAL_ERROR)
CMAKE_POLICY(VERSION 2.6)
SET(CMAKE_MODULE_PATH "${CMAKE_SOURCE_DIR}")
FIND_PACKAGE(Torch REQUIRED)
FIND_PACKAGE(Readline)

SET(src readline.c)
SET(luasrc init.lua debugger.lua)

IF(READLINE_FOUND)
    SET(CMAKE_REQUIRED_INCLUDES ${READLINE_INCLUDE_DIR})
    SET(CMAKE_REQUIRED_LIBRARIES ${READLINE_LIBRARIES})
    INCLUDE_DIRECTORIES(${READLINE_INCLUDE_DIR})
    LINK_DIRECTORIES (${READLINE_LIBRARY_DIRS})
    ADD_TORCH_PACKAGE(debugger "${src}" "${luasrc}" "System")
    TARGET_LINK_LIBRARIES(debugger luaT TH ${READLINE_LIBRARIES})
ENDIF(READLINE_FOUND)
