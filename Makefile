all: xdg.c xdg.h
	cc wl.c xdg.c -lwayland-client -o client

xdg.c:
	wayland-scanner private-code < protocols/xdg-shell.xml > xdg.c

xdg.h:
	wayland-scanner client-header < protocols/xdg-shell.xml > xdg.h