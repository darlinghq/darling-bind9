project(bind9)

add_definitions(-D_REENTRANT -DUSE_MD5 -DUSE_ISC_SPNEGO -D__APPLE_USE_RFC_3542)
add_definitions(-DLIBINTERFACE=91 -DLIBREVISION=2 -DLIBAGE=0 -DVERSION="9.9.7-P3")

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isc/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isc/unix/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/dns/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isc/noatomic/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isc/pthreads/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/bin/dig/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isccfg/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/lwres/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/lwres/unix/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/bind9/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9
)

add_subdirectory(bind9/lib/bind9)
add_subdirectory(bind9/lib/isccfg)
add_subdirectory(bind9/lib/isc)
add_subdirectory(bind9/lib/dns)
add_subdirectory(bind9/lib/lwres)
add_subdirectory(bind9/bin/dig)
add_subdirectory(bind9/bin/nsupdate)

