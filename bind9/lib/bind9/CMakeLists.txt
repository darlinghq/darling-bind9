project(bind9-base)

add_compile_definitions(
	LIBINTERFACE=141
	LIBREVISION=0
	LIBAGE=0
)

add_darling_static_library(bind9_base FAT SOURCES
	check.c
	getaddresses.c
	version.c
)

