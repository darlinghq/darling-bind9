project(bind9-confgen)

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_darling_object_library(confgen_base
	keygen.c
	util.c
	unix/os.c
)

# there seems to be no point in building this
# it's doesn't come installed on macOS nor is it installed by `make install`
#
# it's not even used to generate source files? or do *anything*???
#add_darling_executable(rndc-confgen
#	rndc-confgen.c
#	$<TARGET_OBJECTS:confgen_base>
#)
#target_link_libraries(rndc-confgen
#	bind9_dns
#	bind9_isc
#
#	IOKit
#	CoreFoundation
#	Kerberos
#)
#target_compile_definitions(rndc-confgen PRIVATE
#	RNDC_KEYFILE="/private/etc/rndc.key"
#)

add_darling_executable(ddns-confgen
	ddns-confgen.c
	$<TARGET_OBJECTS:confgen_base>
)
target_link_libraries(ddns-confgen
	bind9_dns
	bind9_isc

	IOKit
	CoreFoundation
	Kerberos
)

install(TARGETS ddns-confgen DESTINATION libexec/darling/usr/sbin)
InstallSymlink("ddns-confgen" "${CMAKE_INSTALL_PREFIX}/libexec/darling/usr/sbin/tsig-keygen")

install(FILES ddns-confgen.8 DESTINATION libexec/darling/usr/share/man/man8)
InstallSymlink("ddns-confgen.8" "${CMAKE_INSTALL_PREFIX}/libexec/darling/usr/share/man/man8/tsig-keygen.8")
