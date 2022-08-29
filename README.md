# Ultimate c++ setup

# Compiler
1. This setup requires the clang++ (because it has the latest features - gnu++ 23).

> Linux Installation

```shell
sudo apt-get install clang++
```

> Windows Installation

1. Install [msys2](https://github.com/msys2/msys2-installer/releases/download/2022-06-03/msys2-x86_64-20220603.exe).
2. Run the installation wizard.
3. Open msys2 application and run:

```shell
pacman -S clang
```
# Make
> Linux Installation
1. Note: This is for Unix-makefiles not gnu-makefiles - It works regardless.

```shell
sudo apt-get install make
```

> Windows Installation
1. Install [gnu-make](https://sourceforge.net/projects/gnuwin32/files/make/3.81/make-3.81.exe/download?use_mirror=jztkft&download).
2. Run the installation wizard.
```shell
make
```
If this returns "make: *** No targets specified and no makefile found." -> You installed make!

> If this doesnt work
1. Open msys2 application and run:
```shell
pacman -S make
```
If this returns "make: *** No targets specified and no makefile found." -> You installed make!

> If this doesnt work
1. Download [mingw](https://sourceforge.net/projects/mingw-w64).
2. Extract it & Put it on the C:/ drive.
3. Go inside & get the path of the bin folder.
4. Right click start & go to system.
5. Go to advanced system settings & enviroment variables.
6. Add the bin folder to path.
```shell
mingw32-make
```
If this returns "mingw32-make: *** No targets specified and no makefile found." -> You installed make!

# Coding
1. Code anything you want in the "src" directory make any .cpp files -> they will be compiled
2. run:
```shell
make
```
or:
```shell
mingw32-make
```
to compile.

3. Have fun!
