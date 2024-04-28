cmake_minimum_required(VERSION 3.15)
project(ex001_77_DGEMV LANGUAGES Fortran)

# Set the Fortran compilation flags depending on the compiler
if(CMAKE_Fortran_COMPILER_ID MATCHES "GNU")
  set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -O3")
elseif(CMAKE_Fortran_COMPILER_ID MATCHES "Intel")
  set(CMAKE_Fortran_FLAGS
      "${CMAKE_Fortran_FLAGS} /Qipo /O3 /MP /Qdiag-disable:10448")
endif()

# Setup for using Conan or VCPKG
if(DEFINED USE_CONAN AND USE_CONAN)
  include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
  conan_basic_setup()
else()
  set(CMAKE_TOOLCHAIN_FILE
      ${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake
      CACHE STRING "Vcpkg toolchain file")
endif()

find_package(BLAS REQUIRED)

# Add your Fortran sources here
add_executable(main_f77 main.f)
target_link_libraries(main_f77 PRIVATE ${BLAS_LIBRARIES})

# Specify include directories if necessary
target_include_directories(main_f77 PRIVATE ${BLAS_INCLUDE_DIRS})
