project(bind9-isccc)

add_compile_definitions(
	LIBINTERFACE=140
	LIBREVISION=5
	LIBAGE=0
)

add_darling_static_library(bind9_isccc FAT SOURCES
	alist.c
	base64.c
	cc.c
	ccmsg.c
	lib.c
	result.c
	sexpr.c
	symtab.c
	version.c
)
