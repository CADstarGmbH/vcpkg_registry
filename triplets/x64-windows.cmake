set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_PLATFORM_TOOLSET v143)
if(${PORT} MATCHES "tbb")
  message(STATUS "${PORT} will be built as static")
  set(VCPKG_LIBRARY_LINKAGE static)
else()
if(${PORT} MATCHES "opencv")
  set(VCPKG_CMAKE_CONFIGURE_OPTIONS "-DCUDA_ARCH_PTX=5.2;8.6")
else()
set(VCPKG_LIBRARY_LINKAGE dynamic)
endif()
