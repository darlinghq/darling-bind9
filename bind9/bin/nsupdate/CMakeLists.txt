project(nsupdate)

cmake_minimum_required(VERSION 3.10)

if(COMMAND cmake_policy)
	cmake_policy(SET CMP0003 NEW)
	cmake_policy(SET CMP0005 NEW)
endif(COMMAND cmake_policy)

include(darling_exe)
add_compile_definitions(
	SESSION_KEYFILE="/private/var/run/named/session.key"
	GSSAPI
)

add_darling_executable(nsupdate
	nsupdate.c
)
target_link_libraries(nsupdate
	bind9_lwres
	bind9_dns
	bind9_base
	bind9_isccfg
	bind9_isc

	edit

	Kerberos

	IOKit
	CoreFoundation
)

install(TARGETS nsupdate DESTINATION libexec/darling/usr/bin)

install(FILES nsupdate.1 DESTINATION libexec/darling/usr/share/man/man1)
