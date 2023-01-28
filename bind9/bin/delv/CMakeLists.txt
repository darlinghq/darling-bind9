project(bind9-delv)

add_compile_definitions(
	SYSCONFDIR="/private/etc"
)

add_darling_executable(delv
	delv.c
)
target_link_libraries(delv
	bind9_dns
	bind9_irs
	bind9_isccfg
	bind9_isc

	IOKit
	CoreFoundation
	Kerberos

	# Apple doesn't seems to require this, but build error seems to occur without this.
	xml2
)

install(TARGETS delv DESTINATION libexec/darling/usr/bin)

install(FILES delv.1 DESTINATION libexec/darling/usr/share/man/man1)
