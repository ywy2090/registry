vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO morebtcg/FISCO-BCOS-1
    REF 14ccf105d15df6dd9e4f7db520b0b6f7625ddfbd
    SHA512 7ac32f568387e4cc36033f6eff7aa233b15d32988fb79ab5fe2f4d62c974595efd06742993753039e2dd0b97bc1ee1a049ffed3e92a038019ad930ea27e7ed55
    HEAD_REF feature-3.0.0
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH} OPTIONS -DALL_COMPONENTS=OFF -DUTILITIES=ON)
vcpkg_cmake_build()
vcpkg_cmake_install()
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)