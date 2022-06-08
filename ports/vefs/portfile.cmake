
vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL ssh://git@mdk-bs-dev02.test-server.ag:2224/native/vefs.git
    REF 8859616bf89f5cfe89d873fde06a46f053965274 # v0.5.0-alpha.3
    HEAD_REF master
)
vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
    OPTIONS
        -DCMAKE_INSTALL_INCLUDEDIR=${CURRENT_PACKAGES_DIR}/include
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/${PORT} RENAME copyright)
