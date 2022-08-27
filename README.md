# working-wayland-example

after looking for a working wayland example i've realised most don't actually do the thing they're supposed to; work

to get this one to work you just need to run `make`

unless the wayland team managed to change the standard (again) since this was created

this is the example from the [wayland book](https://wayland-book.com/xdg-shell-basics/example-code.html), but working

got the xdg-shell.xml file from the [waylandpp project](https://github.com/NilsBrause/waylandpp/blob/master/protocols/extra/xdg-shell.xml)

i'm using this project as an explanation on why i'm *not* going to use wayland in my projects in the near future

the most important issues of mine:
1. forcing to use software other than the compiler (wayland-scanner) during compilation, which **will** mess with some if not most build systems
2. no real decision on where certain *important* files actually are in the file system, even though the compilation step listed before **relies on them**
3. frequent changes to the api spec rendering certain features on which some software relies useless (just for instance, deleting wl_shell, rendering a lot of example projects unusable)
