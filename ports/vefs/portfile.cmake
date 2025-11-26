
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO "adessoSE/libvefs"
    REF "v${VERSION}"
    SHA512 0099d1acfc7e1cab953ecb5a07e936de2cd8f93960373f7965f510e437f2201a32e3bcdb6c770cb3f51aa4fe1ef344d18bd3efafd65305278774702e5fa1bc76
)
vcpkg_cmake_configure(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS
        -DBUILD_TESTING=OFF
        -DWARNINGS_AS_ERRORS=OFF
        "-DCMAKE_INSTALL_INCLUDEDIR=${CURRENT_PACKAGES_DIR}/include"
)

vcpkg_cmake_install()
vcpkg_cmake_config_fixup(CONFIG_PATH lib/cmake/${PORT})

vcpkg_install_copyright(FILE_LIST "${SOURCE_PATH}/LICENSE")
