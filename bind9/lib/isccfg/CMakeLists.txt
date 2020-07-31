project(bind9-isccfg)

add_compile_definitions(
	LIBINTERFACE=144
	LIBREVISION=0
	LIBAGE=0
)

add_darling_static_library(bind9_isccfg FAT SOURCES
	aclconf.c
	dnsconf.c
	log.c
	namedconf.c
	parser.c
	version.c
)

