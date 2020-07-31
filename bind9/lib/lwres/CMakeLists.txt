project(bind9-lwres)

add_compile_definitions(
	LIBINTERFACE=141
	LIBREVISION=3
	LIBAGE=0
)

add_darling_static_library(bind9_lwres FAT SOURCES
	compat.c
	context.c
	gai_strerror.c
	getaddrinfo.c
	gethost.c
	getipnode.c
	getnameinfo.c
	getrrset.c
	herror.c
	lwbuffer.c
	lwconfig.c
	lwinetaton.c
	lwinetntop.c
	lwinetpton.c
	lwpacket.c
	lwres_gabn.c
	lwres_gnba.c
	lwres_grbn.c
	lwres_noop.c
	lwresutil.c
	print.c
	version.c
)
