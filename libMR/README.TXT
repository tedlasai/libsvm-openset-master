libMR provides core MetaRecognition and  Weibull fitting functionality. 
It is used to calculate w-scores used for multi-modal fusion. 
This version uses object, that retain the "transforms" (including save/load) need to compute the actual w-scores.
It includes functions  for Prediction, CDF,  Inverse, FitHigh (larger is better), FitLow (smaller is better) and FitSVM.

This needs CMake (version > 2.8)

Quick build instructions for Windows:
use CMake GUI
Source code = <where libmr is> libMR/libMR
Where to build binaries = < where libmr is > /libMR/build
Click generate
Select correct visual studio version compiler
Click yes to add directory build
Open Visual Studio Solution
Build ALL_BUILD project to build libmr
Build INSTALL project to install
Add install dir to path to link against libmr dll.

Quick build instructions for linux/Mac:
$> tar -zxf libMR.tgz
$> cd libMR
%You can edit the CMakeLists.txt in libMR level, to change install dir if desired
$> mkdir build;  % or whereyou like to build it
$> cd build
$> cmake -DCMAKE_BUILD_TYPE=Debug ..
$> make 

Running examples - Run after installing libMR
$>  examples/mr-test 
$>  examples/wlb-test 


Optionally  you can "install" wherever the CMAKE file, 
$> sudo make install


Project layout:
 * libMR      Library source code and resources
 * python     A python wrapper for libweibull using swig
 * examples   Directory with example programs that test that also test for correctness
 * doc        Documentation directory  starts at html/index.html 


/* 
Python wrapper currently does seem to work on linux but is not garunteed to work on all systems
and it hasn't been tested on windows.
The python code does compile, but with warnings which is probably due to not knowing
where a header file is. If you know how to build swig interfaces in a better way using CMake
please contact us with changes.

to call cmake with
run cmake -D BUILD_PYTHON_SUPPORT=ON [otherflags] ..


Python:
Using libMR from python is (hopefully) super easy. Make sure you run
cmake -D BUILD_PYTHON_SUPPORT=ON Then make and make install. Once the library
is installed on the system, you can use the following python code to
verify that it's installed correctly:

import pyweibullw as pyweibull
pyweibull.printWeibullBuildInfo()

*/ 