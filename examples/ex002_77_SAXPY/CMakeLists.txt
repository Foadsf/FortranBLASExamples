cmake_minimum_required(VERSION 3.15)
project(ex002_77_SAXPY Fortran)

# Find and setup Conan
include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
conan_basic_setup()

# Find BLAS
find_package(BLAS REQUIRED)

# Add the main executable
add_executable(my_blas_app main.f)
target_link_libraries(my_blas_app ${BLAS_LIBRARIES})
