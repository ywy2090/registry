vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO morebtcg/FISCO-BCOS-1
    REF 576658722c52646a8b488648f084e0d26450b3e9
    SHA512 7b1b464c87a02a75a802c8f0864ab1a05cb454b77713212bacd4c61a24c38fb05621d00aea61c3161f78e070153434a3ca82ae05020b4ba73967526e38cfd532
    HEAD_REF feature-3.0.0
)

vcpkg_cmake_configure(SOURCE_PATH ${SOURCE_PATH} OPTIONS -DALL_COMPONENTS=OFF -DCRYPTO=ON)
vcpkg_cmake_build()
vcpkg_cmake_install()
file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")
file(INSTALL "${SOURCE_PATH}/LICENSE" DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}" RENAME copyright)