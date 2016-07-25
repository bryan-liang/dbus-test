all: example1.c
	gcc `pkg-config --libs --cflags dbus-1` example1.c -o example1
	gcc `pkg-config --libs --cflags dbus-1 glib-2.0 dbus-glib-1` listen.c -o listen
	gcc `pkg-config --libs --cflags dbus-1` send.c -o send