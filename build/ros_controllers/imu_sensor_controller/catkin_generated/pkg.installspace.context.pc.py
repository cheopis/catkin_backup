# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "controller_interface;hardware_interface;realtime_tools;roscpp;sensor_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-limu_sensor_controller".split(';') if "-limu_sensor_controller" != "" else []
PROJECT_NAME = "imu_sensor_controller"
PROJECT_SPACE_DIR = "/home/ariele/catkin_ws/install"
PROJECT_VERSION = "0.19.0"
