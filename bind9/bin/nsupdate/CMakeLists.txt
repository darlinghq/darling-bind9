project(nsupdate)

cmake_minimum_required(VERSION 2.4.0)

if(COMMAND cmake_policy)
        cmake_policy(SET CMP0003 NEW)
	cmake_policy(SET CMP0005 NEW)
endif(COMMAND cmake_policy)

include(darling_exe)
add_definitions(-DSESSION_KEYFILE="/private/run/named/session.key")

add_darling_executable(nsupdate nsupdate.c $<TARGET_OBJECTS:bind9> $<TARGET_OBJECTS:isccfg> $<TARGET_OBJECTS:isc> $<TARGET_OBJECTS:bind9-dns> $<TARGET_OBJECTS:lwres>)
target_link_libraries(nsupdate edit)

install(TARGETS nsupdate
        DESTINATION libexec/darling/usr/bin)

install(FILES nsupdate.1 DESTINATION libexec/darling/usr/share/man/man1)



