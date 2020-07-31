project(bind9)

add_compile_definitions(
	_REENTRANT
	__APPLE_USE_RFC_3542

	VERSION="9.10.6"
)

add_compile_options(
	-g
	-std=gnu89
	-W
	-Wall
	-Wmissing-prototypes
	-Wcast-qual
	-Wwrite-strings
	-Wformat
	-Wpointer-arith
	-fno-strict-aliasing
	-fno-delete-null-pointer-checks

	# clang with that pesky little "common" section that screws with Apple's ld when linking static libraries
	# *tsk* *tsk* *tsk*
	-fno-common
)

include_directories(
	${CMAKE_CURRENT_SOURCE_DIR}/gen/lib/isc/include
	${CMAKE_CURRENT_SOURCE_DIR}/gen/lib/dns/include
	${CMAKE_CURRENT_SOURCE_DIR}/gen/lib/lwres/include
	${CMAKE_CURRENT_SOURCE_DIR}/gen/lib/irs/include
	${CMAKE_CURRENT_SOURCE_DIR}/gen

	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isc/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isc/unix/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/dns/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isc/noatomic/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isc/pthreads/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isccfg/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/lwres/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/lwres/unix/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/bind9/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/isccc/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9/lib/irs/include
	${CMAKE_CURRENT_SOURCE_DIR}/bind9
)

add_subdirectory(bind9/lib/bind9)
add_subdirectory(bind9/lib/isccfg)
add_subdirectory(bind9/lib/isc)
add_subdirectory(bind9/lib/dns)
add_subdirectory(bind9/lib/lwres)
add_subdirectory(bind9/lib/isccc)
add_subdirectory(bind9/lib/irs)

add_subdirectory(bind9/bin/dig)
add_subdirectory(bind9/bin/nsupdate)
add_subdirectory(bind9/bin/delv)
add_subdirectory(bind9/bin/confgen)
