project(bind9-dig)

cmake_minimum_required(VERSION 3.13)

if(COMMAND cmake_policy)
	cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)

include(darling_exe)

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_darling_object_library(dighost dighost.c)

add_darling_executable(dig
	dig.c
	$<TARGET_OBJECTS:dighost>
)

add_darling_executable(host
	host.c
	$<TARGET_OBJECTS:dighost>
)

add_darling_executable(nslookup
	nslookup.c
	$<TARGET_OBJECTS:dighost>
)
target_link_libraries(nslookup
	edit
)

foreach(EXE IN ITEMS dig host nslookup)
	target_link_libraries(${EXE}
		bind9_lwres
		bind9_base
		bind9_isccfg
		bind9_isc
		bind9_dns

		Kerberos

		# not sure if this is really necessary (at least it didn't seem so when i compiled it outside of Darling),
		# but Apple adds it to their build, so we do, too
		IOKit
		CoreFoundation

		# Apple doesn't seems to require this, but build error seems to occur without this.
		xml2
	)
endforeach()


install(
	TARGETS
		dig
		host
		nslookup
	DESTINATION libexec/darling/usr/bin
)

install(
	FILES
		dig.1
		host.1
		nslookup.1
	DESTINATION libexec/darling/usr/share/man/man1
)

