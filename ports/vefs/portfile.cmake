
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO "adessoSE/libvefs"
    REF "v${VERSION}"
    SHA512 91bee4cd3cd7fbfadb47a35ec0405464ef6b4e7715bf56cabe6a18cd6497af7685f54d0195864af4286cc042d9b08a1883717b84b4e9160e1c9b489f50bb5b84
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
