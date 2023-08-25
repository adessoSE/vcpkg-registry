
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO "adessoSE/libvefs"
    REF "v${VERSION}"
    SHA512 a3a3e7e9d77c8f5c056d3905eed26e2b2e34109dcd314e66d0fcecc361d2b90a7d2c14c9b6f8c0271321d1bff797f325e820228885c5a48457cee2b027d260fb
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
