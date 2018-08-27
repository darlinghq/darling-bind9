project(lwres)

set(lwres_sources
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

add_library(lwres OBJECT ${lwres_sources})

