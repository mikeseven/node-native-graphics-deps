# node-native-graphics-deps
Precompiled Microsft Windows 8.x and 10.x 64-bit libraries with Microsoft Visual Studio 2015 x64 used in node-glfw, node-webgl, node-webcl:
- precompiled with Visual Studio 2015, for x64 Windows
- GLFW: [https://github.com/glfw/glfw]
- GLEW: [https://github.com/nigels-com/glew.git]
- FreeImage [http://freeimage.sourceforge.net/download.html]
- AntTweakBar [http://sourceforge.net/projects/anttweakbar/]

To use these pre-built binaries, make sure Microsoft Visual Studio 2015 runtime is installed (e.g. Express or Profesional version).

The following instructions explain how I make these libraries on Windows 8 or 10 x64, Linux x64, Mac OSX 10.x or 11.x x64.

Mac builds
----------
Install latest Xcode.

Install Homebrew
```
brew install glfw3 anttweakbar glew
```

Linux builds
------------
Make sure gcc or clang compilers are installed.

Use apt-get or similar package manager
```
sudo apt-get install libxrandr-dev libxinerama-dev libxcursor-dev libfreeimage-dev libglew-dev
```

Download AntTweakBar
```
cd AntTweakBar/src
make
sudo cp ../include/* /usr/local/include
sudo cp ../liblibAntTweakBar.* /usr/local/lib
```

Download GLFW3 (do not use ```apt-get install libglfw-dev```, it is wrong version)
```
cd glfw
mkdir build
cd build
cmake ..
make
sudo make install
```

Windows builds
--------------
Make sure Microsoft Visual Studio (MSVS) 2013 x64 or later are installed as well as cmake to generate MSVS solutions and projects.

- Download GLEW binaries latest version.
  - ```include\``` contains headers
  - ```lib\Release\x64``` contains libraries
- Download FreeImage binaries latest version. 
  - ```Dist\x64``` contains headers and libraries
- Download AntTweakBar, run src\AntTweakBar_VS2012.sln
  - ```include\``` contains header
  - ```lib\``` contains the libraries
- Download GLFW 3.x
  - do as for Linux above using cmake GUI, which will generate build\GLFW.sln to use with MSVS.
  - ```include\``` contains headers
  - ```build\src\Release\``` contains libraries

Note that for AntTweakBar and GLFW, you can also use msbuild from Visual Studio x64 command prompt: ```msbuild xxx.sln /t:Rebuild /p:Configuration=Release /m``` with xxx.sln being AntTweakBar_VS2012.sln or GLFW.sln.

Now you should have exactly the same headers and libraries as in this repository. You can overwrite headers and libraries (.lib only) with the newly built versions and rebuild node-glfw, node-webgl, node-webcl (using ```node-gyp rebuild``` in each project).

For runtime, don't forget to copy the DLLs of these projects (and only .dll) into your Windows\System32 folder. Now samples and tests in node-glfw, node-webgl, node-webcl will run as well as your applications using these modules.


