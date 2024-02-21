
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO "adessoSE/libvefs"
    REF "v${VERSION}"
    SHA512 d0f3474d5be8d4fd49710da649dd3415a710ba1cdd8b8ab3db3ea7d7a2c6a78f1d965997166f9a362d665feb95d2d4ef7f24b1c2a23e03af32ff159d87cfd7aa
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
