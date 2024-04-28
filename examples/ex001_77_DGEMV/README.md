On Ubuntu this compiles with

```
rm -rf build
mkdir build
cd build
gfortran -L/usr/local/lib ../main.f -lblas
```