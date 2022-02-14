# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "youbot: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(youbot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv" NAME_WE)
add_custom_target(_youbot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "youbot" "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(youbot
  "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/youbot
)

### Generating Module File
_generate_module_cpp(youbot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/youbot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(youbot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(youbot_generate_messages youbot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv" NAME_WE)
add_dependencies(youbot_generate_messages_cpp _youbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(youbot_gencpp)
add_dependencies(youbot_gencpp youbot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS youbot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(youbot
  "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/youbot
)

### Generating Module File
_generate_module_eus(youbot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/youbot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(youbot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(youbot_generate_messages youbot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv" NAME_WE)
add_dependencies(youbot_generate_messages_eus _youbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(youbot_geneus)
add_dependencies(youbot_geneus youbot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS youbot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(youbot
  "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/youbot
)

### Generating Module File
_generate_module_lisp(youbot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/youbot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(youbot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(youbot_generate_messages youbot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv" NAME_WE)
add_dependencies(youbot_generate_messages_lisp _youbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(youbot_genlisp)
add_dependencies(youbot_genlisp youbot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS youbot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(youbot
  "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/youbot
)

### Generating Module File
_generate_module_nodejs(youbot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/youbot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(youbot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(youbot_generate_messages youbot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv" NAME_WE)
add_dependencies(youbot_generate_messages_nodejs _youbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(youbot_gennodejs)
add_dependencies(youbot_gennodejs youbot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS youbot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(youbot
  "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot
)

### Generating Module File
_generate_module_py(youbot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(youbot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(youbot_generate_messages youbot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ariele/catkin_ws/src/ros101/toy_rosject/youbot/srv/ControlCommand.srv" NAME_WE)
add_dependencies(youbot_generate_messages_py _youbot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(youbot_genpy)
add_dependencies(youbot_genpy youbot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS youbot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/youbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/youbot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(youbot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/youbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/youbot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(youbot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/youbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/youbot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(youbot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/youbot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/youbot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(youbot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/youbot/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(youbot_generate_messages_py std_msgs_generate_messages_py)
endif()
