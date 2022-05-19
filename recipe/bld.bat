cmake -DGDAL_CSHARP_ONLY=ON -S . -B ../build
if errorlevel 1 exit 1

cmake --build ../build --config Release -j 3 --target csharp_samples
if errorlevel 1 exit 1

ctest -R "^csharp.*"
if errorlevel 1 exit 1



