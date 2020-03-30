project(dig)

cmake_minimum_required(VERSION 2.4.0)

if(COMMAND cmake_policy)
        cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)

include(darling_exe)

include_directories(${CMAKE_CURRENT_SOURCE_DIR})

add_darling_object_library(dighost dighost.c)

add_darling_executable(dig dig.c $<TARGET_OBJECTS:dighost> $<TARGET_OBJECTS:bind9> $<TARGET_OBJECTS:isccfg> $<TARGET_OBJECTS:isc> $<TARGET_OBJECTS:bind9-dns> $<TARGET_OBJECTS:lwres>)
add_darling_executable(host host.c $<TARGET_OBJECTS:dighost> $<TARGET_OBJECTS:bind9> $<TARGET_OBJECTS:isccfg> $<TARGET_OBJECTS:isc> $<TARGET_OBJECTS:bind9-dns> $<TARGET_OBJECTS:lwres>)
add_darling_executable(nslookup nslookup.c $<TARGET_OBJECTS:dighost> $<TARGET_OBJECTS:bind9> $<TARGET_OBJECTS:isccfg> $<TARGET_OBJECTS:isc> $<TARGET_OBJECTS:bind9-dns> $<TARGET_OBJECTS:lwres>)

target_link_libraries(nslookup edit)

install(TARGETS dig host nslookup
        DESTINATION libexec/darling/usr/bin)

install(FILES dig.1 host.1 nslookup.1 DESTINATION libexec/darling/usr/share/man/man1)

