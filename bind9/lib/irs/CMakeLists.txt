project(bind9-irs)

add_compile_definitions(
	LIBINTERFACE=141
	LIBREVISION=7
	LIBAGE=0
)

add_darling_static_library(bind9_irs FAT SOURCES
	context.c
	dnsconf.c
	gai_strerror.c
	getaddrinfo.c
	getnameinfo.c
	resconf.c
	version.c
)
