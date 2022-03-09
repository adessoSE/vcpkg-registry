
vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL ssh://git@mdk-bs-dev02.test-server.ag:2224/native/vefs.git
    REF 7181195ee9ccbc8997de69732fe2969eb1f8129e # v0.4.1-alpha.2
    HEAD_REF master
)
vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/vefs)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/vefs RENAME copyright)
