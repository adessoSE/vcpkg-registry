
vcpkg_from_git(
    OUT_SOURCE_PATH SOURCE_PATH
    URL ssh://git@mdk-bs-dev02.test-server.ag:2224/native/vefs.git
    REF 169f891e525033d40a2ab3230cd178f5855b8014 # v0.4.0-alpha.5
    HEAD_REF develop
)
vcpkg_cmake_configure(
    SOURCE_PATH ${SOURCE_PATH}
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH cmake)

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(INSTALL ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/vefs RENAME copyright)
