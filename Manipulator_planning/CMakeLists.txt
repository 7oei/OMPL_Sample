cmake_minimum_required(VERSION 2.8)

ADD_DEFINITIONS(
  -Wall
  -g
  -O2
  -std=c++11
)

project(Manipulator_planning)

find_package(ompl REQUIRED)

include_directories(${OMPL_INCLUDE_DIRS})
link_directories(${OMPL_LIBRARY_DIRS})
add_definitions(${OMPL_DEFINITIONS})

FIND_PACKAGE(Boost COMPONENTS system REQUIRED)
include_directories(${Boost_INCLUDE_DIR})

# For Eigen
find_package(Eigen3 REQUIRED)
include_directories(${EIGEN3_INCLUDE_DIR})

add_executable (Manipulator_planning main.cpp MotionPlanner.cpp)
target_link_libraries (Manipulator_planning ${Boost_LIBRARIES} ${OMPL_LIBRARIES} ${Boost_PROGRAM_OPTIONS_LIBRARY})