
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO "adessoSE/libvefs"
    REF "v${VERSION}"
    SHA512 f7a3631a31e41194aeda8f503970b45da6ef7b7004c4a730ff490acb31d5b915996645a5ce6bb7e2ea46c981188a515c8b97921a54f458fc41857c1ea65625c8
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
