
file (COPY_FILE ${CARLA_WORKSPACE_PATH}/LICENSE ${CARLA_PACKAGE_ARCHIVE_PATH}/LICENSE)
file (COPY_FILE ${CARLA_WORKSPACE_PATH}/CHANGELOG.md ${CARLA_PACKAGE_ARCHIVE_PATH}/CHANGELOG)
file (COPY_FILE ${CARLA_WORKSPACE_PATH}/Docs/release_readme.md ${CARLA_PACKAGE_ARCHIVE_PATH}/README)
if (WIN32)
    set (EXE_EXT .exe)
else ()
    set (EXE_EXT)
endif ()
make_directory (${CARLA_PACKAGE_ARCHIVE_PATH}/Tools)
# @TODO Temporary hack:
file (COPY_FILE ${CARLA_BUILD_PATH}/_deps/recastnavigation-build/RecastBuilder/RecastBuilder${EXE_EXT} ${CARLA_PACKAGE_ARCHIVE_PATH}/Tools/RecastBuilder${EXE_EXT})

make_directory (${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/carla/dist)
file (GLOB PYTHON_WHL_FILES ${CARLA_BUILD_PATH}/PythonAPI/dist/carla-*.whl)
file (COPY ${PYTHON_WHL_FILES} DESTINATION ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/carla/dist/)
file (COPY_FILE ${CARLA_WORKSPACE_PATH}/Docs/python_api.md ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/python_api.md)
file (COPY ${CARLA_WORKSPACE_PATH}/PythonAPI/carla/agents/ DESTINATION ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/carla/agents/)
file (COPY_FILE ${CARLA_WORKSPACE_PATH}/PythonAPI/carla/scene_layout.py ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/carla/scene_layout.py)
file (COPY_FILE ${CARLA_WORKSPACE_PATH}/PythonAPI/carla/requirements.txt ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/carla/requirements.txt)

make_directory (${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/examples/)
file (GLOB PYTHON_EXAMPLE_FILES ${CARLA_WORKSPACE_PATH}/PythonAPI/examples/*.py ${CARLA_WORKSPACE_PATH}/PythonAPI/examples/*.xml)
file (COPY ${PYTHON_EXAMPLE_FILES} DESTINATION ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/examples/)
# make_directory (${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/examples/rss/)
# file (GLOB PYTHON_EXAMPLE_RSS_FILES ${CARLA_WORKSPACE_PATH}/PythonAPI/examples/rss/*.py)
# file (COPY ${PYTHON_EXAMPLE_RSS_FILES} DESTINATION ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/examples/rss/)
file (COPY_FILE ${CARLA_WORKSPACE_PATH}/PythonAPI/examples/requirements.txt ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/examples/requirements.txt)

make_directory (${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/examples/ros2)
file (GLOB PYTHON_EXAMPLE_ROS2_FILES ${CARLA_WORKSPACE_PATH}/PythonAPI/examples/ros2/*.py ${CARLA_WORKSPACE_PATH}/PythonAPI/examples/ros2/*.json)
file (COPY ${PYTHON_EXAMPLE_ROS2_FILES} DESTINATION ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/examples/ros2)

make_directory (${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/util/)
file (GLOB PYTHON_UTIL_FILES ${CARLA_WORKSPACE_PATH}/PythonAPI/util/*.py)
file (COPY ${PYTHON_UTIL_FILES} DESTINATION ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/util/)
file (COPY_FILE ${CARLA_WORKSPACE_PATH}/PythonAPI/util/requirements.txt ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/util/requirements.txt)
file (COPY ${CARLA_WORKSPACE_PATH}/PythonAPI/util/opendrive/ DESTINATION ${CARLA_PACKAGE_ARCHIVE_PATH}/PythonAPI/util/opendrive/)

# file (COPY ${CARLA_WORKSPACE_PATH}/Co-Simulation/ DESTINATION ${CARLA_PACKAGE_ARCHIVE_PATH}/Co-Simulation/)

# make_directory (${CARLA_PACKAGE_ARCHIVE_PATH}/HDMaps/)
# file (GLOB PYTHON_HDMAP_FILES ${CARLA_WORKSPACE_PATH}/Unreal/CarlaUnreal/Content/Carla/HDMaps/*.pcd)
# file (COPY ${PYTHON_HDMAP_FILES} DESTINATION ${CARLA_PACKAGE_ARCHIVE_PATH}/HDMaps/)
# file (COPY_FILE ${CARLA_WORKSPACE_PATH}/Unreal/CarlaUnreal/Content/Carla/HDMaps/Readme.md ${CARLA_PACKAGE_ARCHIVE_PATH}/HDMaps/README)
