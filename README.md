# FortranBLASExamples

Welcome to FortranBLASExamples, a repository dedicated to providing comprehensive examples of integrating Basic Linear Algebra Subprograms (BLAS) into Fortran codes. This repository aims to help developers compile and run Fortran code using BLAS on multiple platforms and compilers.

## Features
- **Multi-Compiler Support**: Examples compatible with Intel's `ifort` and GNU's `gfortran`.
- **Cross-Platform**: Instructions and support for Windows, macOS, and Linux.
- **Multiple Build Systems**: Examples include `Makefile`, `CMakeLists.txt`.
- **Package Managers**: Utilizing VCPKG, Conan, and Fortran Package Manager (FPM) to manage dependencies.

## Getting Started
Clone the repository to get started with the examples:

```
git clone https://github.com/Foadsf/FortranBLASExamples.git
```

### Prerequisites
Ensure you have the following installed:
- Fortran compilers: `ifort` or `gfortran`
- Package managers: `vcpkg`, `conan`, `fpm`
- Build tools: `GNU Make` or `CMake`

### Building the Examples
Each directory in the repository contains a separate example with its own `Makefile` and `CMakeLists.txt`. To build an example, navigate to its directory and use the corresponding build command:

```
mkdir build
cd build
```

For Makefile:

```
make ..
```

For CMake:

```
cmake ..
cmake --build .
```

### Contributing
Contributions are welcome! Please read [CONTRIBUTING.md](CONTRIBUTING.md) for details on our code of conduct, and the process for submitting pull requests to us.

### License
This project is licensed under the GNU GENERAL PUBLIC LICENSE Version 3 - see the [LICENSE](LICENSE) file for details.

### Acknowledgments
- Thanks to the open-source community for continuous support and inspiration.
- Special thanks to all contributors who have helped in building and maintaining these examples.
