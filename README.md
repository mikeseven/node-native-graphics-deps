node-native-graphics-deps
=========================

Precompiled libraries used in node-glfw, node-webgl, node-webcl for Windows, Mac and Linux

Installation
============
Windows 7
---------
We provide prebuilt libraries for Windows 7 32-bit and 64-bit platforms.

Please note that when rebuilding node modules using 'node-gyp rebuild', 32-bit or 64-bit Visual Studio settings are chosen based
on your node distribution. By default, Node.JS installer is 32-bit. You need to go in 'Other release files' in the download section of the nodejs.org web site to download 64-bit installer from x64/ folder.

Assuming <VCROOT> is where you installed Microsoft Visual Studio C++, the easiest way is:

- copy include/* into <VCROOT>/include
- copy win32/*.lib into <VCROOT>/lib for 32-bit libraries, and into <VCROOT>/lib/amd64 for 64-bit libraries
- copy win32/*.dll into Windows/System32 (even for 64-bit libraries)

Mac OSX 10.7.x
--------------
Since OpenCL 1.1 is only available for Mac OSX 10.7 "Lion", all prebuilt libraries are for Lion. We don't use earlier Mac OSX versions.
All libraries were compiled with clang 3.1.

Linux
-----
The libraries have been built for Ubuntu 11.10 64-bit.