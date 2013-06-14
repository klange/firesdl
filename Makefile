all: fire

.DUMMY: all clean go

fire: fire.c
	i686-pc-toaru-gcc `pkg-config --cflags sdl` -o fire fire.c `pkg-config --libs sdl`

go: fire
	cp fire ~/Projects/osdev-strawberry/hdd/usr/bin/

clean:
	rm -f fire
