# Copyright (C) 2004-2016  Internet Systems Consortium, Inc. ("ISC")
# Copyright (C) 1998-2002  Internet Software Consortium.
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND ISC DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL ISC BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
# OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.

# $Id: Makefile.in,v 1.116 2011/03/10 23:47:49 tbox Exp $

srcdir =	../../../bind9/bin/named
VPATH =		../../../bind9/bin/named
top_srcdir =	../../../bind9

VERSION=9.10.6

PRODUCT="BIND"

DESCRIPTION=""

SRCID=9d1ea0b

CONFIGARGS='--prefix=/usr' '--sysconfdir=/private/etc' '--localstatedir=/private/var' '--enable-atomic=no' '--with-openssl=no' '--with-gssapi=yes' '--enable-symtable=none' '--with-libxml2=no' 'CFLAGS=-arch x86_64 -arch i386 -g -std=gnu89' 'LD=/Users/ariel/private-bin/ld' 'CC=/Users/ariel/private-bin/clang' 'CXX=/Users/ariel/private-bin/clang++' 'CPPFLAGS=-isystem/Users/ariel/git/darling/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include -isystem/Users/ariel/arch/build/darling/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include -isystem/Users/ariel/git/darling/framework-include -DDARLING' 'sysconfdir=/private/etc' 'includedir=/usr/local/include' 'libdir=/usr/local/' 'localstatedir=/private/var' 'prefix=/usr' 'mandir=/usr/share/man' 'LDFLAGS=-framework IOKit -framework CoreFoundation'

# Copyright (C) 2004, 2005, 2007, 2012, 2014  Internet Systems Consortium, Inc. ("ISC")
# Copyright (C) 1999-2001  Internet Software Consortium.
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND ISC DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL ISC BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
# OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.

# $Id: includes.in,v 1.21 2007/06/19 23:47:24 tbox Exp $

# Search for machine-generated header files in the build tree,
# and for normal headers in the source tree (${top_srcdir}).
# We only need to look in OS-specific subdirectories for the
# latter case, because there are no machine-generated OS-specific
# headers.

ISC_INCLUDES = -I/Users/ariel/git/darling/src/external/bind9/gen/lib/isc/include \
	-I${top_srcdir}/lib/isc \
	-I${top_srcdir}/lib/isc/include \
	-I${top_srcdir}/lib/isc/unix/include \
	-I${top_srcdir}/lib/isc/pthreads/include \
	-I${top_srcdir}/lib/isc/noatomic/include

ISCCC_INCLUDES = -I/Users/ariel/git/darling/src/external/bind9/gen/lib/isccc/include \
       -I${top_srcdir}/lib/isccc/include

ISCCFG_INCLUDES = -I/Users/ariel/git/darling/src/external/bind9/gen/lib/isccfg/include \
       -I${top_srcdir}/lib/isccfg/include

DNS_INCLUDES = -I/Users/ariel/git/darling/src/external/bind9/gen/lib/dns/include \
	-I${top_srcdir}/lib/dns/include

IRS_INCLUDES = -I/Users/ariel/git/darling/src/external/bind9/gen/lib/irs/include \
	-I${top_srcdir}/lib/irs/include

LWRES_INCLUDES = -I/Users/ariel/git/darling/src/external/bind9/gen/lib/lwres/include \
	-I${top_srcdir}/lib/lwres/unix/include \
	-I${top_srcdir}/lib/lwres/include

BIND9_INCLUDES = -I/Users/ariel/git/darling/src/external/bind9/gen/lib/bind9/include \
	-I${top_srcdir}/lib/bind9/include

TEST_INCLUDES = \
	-I${top_srcdir}/lib/tests/include

#
# Add database drivers here.
#
DBDRIVER_OBJS =
DBDRIVER_SRCS =
DBDRIVER_INCLUDES =
DBDRIVER_LIBS =

DLZ_DRIVER_DIR =	${top_srcdir}/contrib/dlz/drivers

DLZDRIVER_OBJS =	
DLZDRIVER_SRCS =	
DLZDRIVER_INCLUDES =	
DLZDRIVER_LIBS =	

CINCLUDES =	-I${srcdir}/include -I${srcdir}/unix/include -I. \
		${LWRES_INCLUDES} ${DNS_INCLUDES} ${BIND9_INCLUDES} \
		${ISCCFG_INCLUDES} ${ISCCC_INCLUDES} ${ISC_INCLUDES} \
		${DLZDRIVER_INCLUDES} ${DBDRIVER_INCLUDES} 

CDEFINES =         

CWARNINGS =

DNSLIBS =	../../lib/dns/libdns.a  -framework Kerberos
ISCCFGLIBS =	../../lib/isccfg/libisccfg.a
ISCCCLIBS =	../../lib/isccc/libisccc.a
ISCLIBS =	../../lib/isc/libisc.a
ISCNOSYMLIBS =	../../lib/isc/libisc-nosymtbl.a
LWRESLIBS =	../../lib/lwres/liblwres.a
BIND9LIBS =	../../lib/bind9/libbind9.a

DNSDEPLIBS =	../../lib/dns/libdns.a
ISCCFGDEPLIBS =	../../lib/isccfg/libisccfg.a
ISCCCDEPLIBS =	../../lib/isccc/libisccc.a
ISCDEPLIBS =	../../lib/isc/libisc.a
LWRESDEPLIBS =	../../lib/lwres/liblwres.a
BIND9DEPLIBS =	../../lib/bind9/libbind9.a

DEPLIBS =	${LWRESDEPLIBS} ${DNSDEPLIBS} ${BIND9DEPLIBS} \
		${ISCCFGDEPLIBS} ${ISCCCDEPLIBS} ${ISCDEPLIBS}

LIBS =		${LWRESLIBS} ${DNSLIBS} ${BIND9LIBS} \
		${ISCCFGLIBS} ${ISCCCLIBS} ${ISCLIBS} \
		${DLZDRIVER_LIBS} ${DBDRIVER_LIBS} -ldl -lpthread 

NOSYMLIBS =	${LWRESLIBS} ${DNSLIBS} ${BIND9LIBS} \
		${ISCCFGLIBS} ${ISCCCLIBS} ${ISCNOSYMLIBS} \
		${DLZDRIVER_LIBS} ${DBDRIVER_LIBS} -ldl -lpthread 

SUBDIRS =	unix

TARGETS =	named lwresd

GEOIPLINKOBJS = geoip.o

OBJS =		builtin.o client.o config.o control.o \
		controlconf.o  interfacemgr.o \
		listenlist.o log.o logconf.o main.o notify.o \
		query.o server.o sortlist.o statschannel.o \
		tkeyconf.o tsigconf.o update.o xfrout.o \
		zoneconf.o \
		lwaddr.o lwresd.o lwdclient.o lwderror.o lwdgabn.o \
		lwdgnba.o lwdgrbn.o lwdnoop.o lwsearch.o \
		${DLZDRIVER_OBJS} ${DBDRIVER_OBJS}

UOBJS =		unix/os.o unix/dlz_dlopen_driver.o

SYMOBJS =	symtbl.o

GEOIPLINKSRCS = geoip.c

SRCS =		builtin.c client.c config.c control.c \
		controlconf.c  interfacemgr.c \
		listenlist.c log.c logconf.c main.c notify.c \
		query.c server.c sortlist.c statschannel.c \
		tkeyconf.c tsigconf.c update.c xfrout.c \
		zoneconf.c \
		lwaddr.c lwresd.c lwdclient.c lwderror.c lwdgabn.c \
		lwdgnba.c lwdgrbn.c lwdnoop.c lwsearch.c \
		${DLZDRIVER_SRCS} ${DBDRIVER_SRCS}

MANPAGES =	named.8 lwresd.8 named.conf.5

HTMLPAGES =	named.html lwresd.html named.conf.html

MANOBJS =	${MANPAGES} ${HTMLPAGES}

# Copyright (C) 2004-2009, 2011-2017  Internet Systems Consortium, Inc. ("ISC")
# Copyright (C) 1998-2003  Internet Software Consortium.
#
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
#
# THE SOFTWARE IS PROVIDED "AS IS" AND ISC DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS.  IN NO EVENT SHALL ISC BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
# OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.

###
### Common Makefile rules for BIND 9.
###

###
### Paths
###
### Note: paths that vary by Makefile MUST NOT be listed
### here, or they won't get expanded correctly.

prefix =	/usr
exec_prefix =	${prefix}
bindir =	${exec_prefix}/bin
sbindir =	${exec_prefix}/sbin
includedir =	/usr/local/include
libdir =	/usr/local
sysconfdir =	/private/etc
localstatedir =	/private/var
mandir =	/usr/share/man
datarootdir =   ${prefix}/share

DESTDIR =



top_builddir =	/Users/ariel/git/darling/src/external/bind9/gen

###
### All
###
### Makefile may define:
###	PREREQS
###	TARGETS

all: ${PREREQS} subdirs ${TARGETS} testdirs

###
### Subdirectories
###
### Makefile may define:
###	SUBDIRS
###	DEPDIRS

ALL_SUBDIRS = ${SUBDIRS} nulldir
ALL_TESTDIRS = ${TESTDIRS} nulldir

#
# We use a single-colon rule so that additional dependencies of
# subdirectories can be specified after the inclusion of this file.
# The "depend" and "testdirs" targets are treated the same way.
#
subdirs:
	@for i in ${ALL_SUBDIRS}; do \
		if [ "$$i" != "nulldir" -a -d $$i ]; then \
			echo "making all in `pwd`/$$i"; \
			(cd $$i; ${MAKE} ${MAKEDEFS} DESTDIR="${DESTDIR}" all) || exit 1; \
		fi; \
	done

#
# Tests are built after the targets instead of before
#
testdirs:
	@for i in ${ALL_TESTDIRS}; do \
		if [ "$$i" != "nulldir" -a -d $$i ]; then \
			echo "making all in `pwd`/$$i"; \
			(cd $$i; ${MAKE} ${MAKEDEFS} DESTDIR="${DESTDIR}" all) || exit 1; \
		fi; \
	done

install:: all

install uninstall clean distclean maintainer-clean doc docclean man manclean::
	@for i in ${ALL_SUBDIRS} ${ALL_TESTDIRS}; do \
		if [ "$$i" != "nulldir" -a -d $$i ]; then \
			echo "making $@ in `pwd`/$$i"; \
			(cd $$i; ${MAKE} ${MAKEDEFS} DESTDIR="${DESTDIR}" $@) || exit 1; \
		fi; \
	done

###
### C Programs
###
### Makefile must define
###	CC
### Makefile may define
###	CFLAGS
###	LDFLAGS
###	CINCLUDES
###	CDEFINES
###	CWARNINGS
### User may define externally
###     EXT_CFLAGS

CC = 		/Users/ariel/private-bin/clang
CFLAGS =	-arch x86_64 -arch i386 -g -std=gnu89
LDFLAGS =	-framework IOKit -framework CoreFoundation
STD_CINCLUDES =	
STD_CDEFINES =	 -D__APPLE_USE_RFC_3542
STD_CWARNINGS =	 -W -Wall -Wmissing-prototypes -Wcast-qual -Wwrite-strings -Wformat -Wpointer-arith -fno-strict-aliasing -fno-delete-null-pointer-checks

BUILD_CC = /Users/ariel/private-bin/clang
BUILD_CFLAGS = -arch x86_64 -arch i386 -g -std=gnu89
BUILD_CPPFLAGS = -isystem/Users/ariel/git/darling/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include -isystem/Users/ariel/arch/build/darling/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include -isystem/Users/ariel/git/darling/framework-include -DDARLING -D__APPLE_USE_RFC_3542 
BUILD_LDFLAGS =  -framework IOKit -framework CoreFoundation
BUILD_LIBS = -ldl -lpthread 

.SUFFIXES:
.SUFFIXES: .c .o

ALWAYS_INCLUDES = -I${top_builddir} -I${top_srcdir}
ALWAYS_DEFINES = -D_REENTRANT
ALWAYS_WARNINGS =

ALL_CPPFLAGS = \
	${ALWAYS_INCLUDES} ${CINCLUDES} ${STD_CINCLUDES} \
	${ALWAYS_DEFINES} ${CDEFINES} ${STD_CDEFINES}

ALL_CFLAGS = ${EXT_CFLAGS} ${ALL_CPPFLAGS} ${CFLAGS} \
	${ALWAYS_WARNINGS} ${STD_CWARNINGS} ${CWARNINGS}

.c.o:
	${LIBTOOL_MODE_COMPILE} ${CC} ${ALL_CFLAGS} -c $<

SHELL = /bin/sh
LIBTOOL = 
LIBTOOL_MODE_COMPILE = ${LIBTOOL} 
LIBTOOL_MODE_INSTALL = ${LIBTOOL} 
LIBTOOL_MODE_LINK = ${LIBTOOL} 
LIBTOOL_MODE_UNINSTALL = ${LIBTOOL} 
PURIFY = 

MKDEP = ${SHELL} ${top_builddir}/make/mkdep

###
### This is a template compound command to build an executable binary with
### an internal symbol table.
### This process is tricky.  We first link all objects including a tentative
### empty symbol table, then get a tentative list of symbols from the resulting
### binary ($@tmp0).  Next, we re-link all objects, but this time with the
### symbol table just created ($tmp@1).  The set of symbols should be the same,
### but the corresponding addresses would be changed due to the difference on
### the size of symbol tables.  So we create the symbol table and re-create the
### objects once again.  Finally, we check the symbol table embedded in the
### final binaryis consistent with the binary itself; otherwise the process is
### terminated.
###
### To minimize the overhead of creating symbol tables, the autoconf switch
### --enable-symtable takes an argument so that the symbol table can be created
### on a per application basis: unless the argument is set to "all", the symbol
### table is created only when a shell (environment) variable "MAKE_SYMTABLE" is
### set to a non-null value in the rule to build the executable binary.
###
### Each Makefile.in that uses this macro is expected to define "LIBS" and
### "NOSYMLIBS"; the former includes libisc with an empty symbol table, and
### the latter includes libisc without the definition of a symbol table.
### The rule to make the executable binary will look like this
### binary: ${OBJS}
###     #export MAKE_SYMTABLE="yes"; \  <- enable if symtable is always needed
###	export BASEOBJS="${OBJS}"; \
###	${FINALBUILDCMD}
###
### Normally, ${LIBS} includes all necessary libraries to build the binary;
### there are some exceptions however, where the rule lists some of the
### necessary libraries explicitly in addition to (or instead of) ${LIBS},
### like this:
### binary: ${OBJS}
###     cc -o $@ ${OBJS} ${OTHERLIB1} ${OTHERLIB2} ${lIBS}
### in order to modify such a rule to use this compound command, a separate
### variable "LIBS0" should be deinfed for the explicitly listed libraries,
### while making sure ${LIBS} still includes libisc.  So the above rule would
### be modified as follows:
### binary: ${OBJS}
###	export BASEOBJS="${OBJS}"; \
###	export LIBS0="${OTHERLIB1} ${OTHERLIB2}"; \
###     ${FINALBUILDCMD}
### See bin/check/Makefile.in for a complete example of the use of LIBS0.
###
FINALBUILDCMD = if [ X"${MKSYMTBL_PROGRAM}" = X -o X"$${MAKE_SYMTABLE:-${ALWAYS_MAKE_SYMTABLE}}" = X ] ; then \
		${LIBTOOL_MODE_LINK} ${PURIFY} ${CC} ${ALL_CFLAGS} ${LDFLAGS} \
		-o $@ $${BASEOBJS} $${LIBS0} ${LIBS}; \
	else \
		rm -f $@tmp0; \
		${LIBTOOL_MODE_LINK} ${PURIFY} ${CC} ${ALL_CFLAGS} ${LDFLAGS} \
		-o $@tmp0 $${BASEOBJS} $${LIBS0} ${LIBS} || exit 1; \
		rm -f $@-symtbl.c $@-symtbl.o; \
		${MKSYMTBL_PROGRAM} ${top_srcdir}/util/mksymtbl.pl \
		-o $@-symtbl.c $@tmp0 || exit 1; \
		$(MAKE) $@-symtbl.o || exit 1; \
		rm -f $@tmp1; \
		${LIBTOOL_MODE_LINK} ${PURIFY} ${CC} ${ALL_CFLAGS} ${LDFLAGS} \
		-o $@tmp1 $${BASEOBJS} $@-symtbl.o $${LIBS0} ${NOSYMLIBS} || exit 1; \
		rm -f $@-symtbl.c $@-symtbl.o; \
		${MKSYMTBL_PROGRAM} ${top_srcdir}/util/mksymtbl.pl \
		-o $@-symtbl.c $@tmp1 || exit 1; \
		$(MAKE) $@-symtbl.o || exit 1; \
		${LIBTOOL_MODE_LINK} ${PURIFY} ${CC} ${ALL_CFLAGS} ${LDFLAGS} \
		-o $@tmp2 $${BASEOBJS} $@-symtbl.o $${LIBS0} ${NOSYMLIBS}; \
		${MKSYMTBL_PROGRAM} ${top_srcdir}/util/mksymtbl.pl \
		-o $@-symtbl2.c $@tmp2; \
		count=0; \
		until diff $@-symtbl.c $@-symtbl2.c > /dev/null ; \
		do \
			count=`expr $$count + 1` ; \
			test $$count = 42 && exit 1 ; \
			rm -f $@-symtbl.c $@-symtbl.o; \
			${MKSYMTBL_PROGRAM} ${top_srcdir}/util/mksymtbl.pl \
			-o $@-symtbl.c $@tmp2 || exit 1; \
			$(MAKE) $@-symtbl.o || exit 1; \
			${LIBTOOL_MODE_LINK} ${PURIFY} ${CC} ${ALL_CFLAGS} \
			${LDFLAGS} -o $@tmp2 $${BASEOBJS} $@-symtbl.o \
			$${LIBS0} ${NOSYMLIBS}; \
			${MKSYMTBL_PROGRAM} ${top_srcdir}/util/mksymtbl.pl \
			-o $@-symtbl2.c $@tmp2; \
		done ; \
		mv $@tmp2 $@; \
		rm -f $@tmp0 $@tmp1 $@tmp2 $@-symtbl2.c; \
	fi

cleandir: distclean
superclean: maintainer-clean

clean distclean maintainer-clean::
	rm -f *.o *.o *.lo *.la core *.core *-symtbl.c *tmp0 *tmp1 *tmp2
	rm -rf .depend .libs

distclean maintainer-clean::
	rm -f Makefile

depend:
	@for i in ${ALL_SUBDIRS} ${ALL_TESTDIRS}; do \
		if [ "$$i" != "nulldir" -a -d $$i ]; then \
			echo "making depend in `pwd`/$$i"; \
			(cd $$i; ${MAKE} ${MAKEDEFS} DESTDIR="${DESTDIR}" $@) || exit 1; \
		fi; \
	done
	@if [ X"${srcdir}" != X. ] ; then \
		if [ X"${SRCS}" != X -a X"${PSRCS}" != X ] ; then \
			echo ${MKDEP} -vpath ${srcdir} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${SRCS}; \
			${MKDEP} -vpath ${srcdir} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${SRCS}; \
			echo ${MKDEP} -vpath ${srcdir} -ap ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${PSRCS}; \
			${MKDEP} -vpath ${srcdir} -ap ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${PSRCS}; \
			${DEPENDEXTRA} \
		elif [ X"${SRCS}" != X ] ; then \
			echo ${MKDEP} -vpath ${srcdir} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${SRCS}; \
			${MKDEP} -vpath ${srcdir} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${SRCS}; \
			${DEPENDEXTRA} \
		elif [ X"${PSRCS}" != X ] ; then \
			echo ${MKDEP} -vpath ${srcdir} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${PSRCS}; \
			${MKDEP} -vpath ${srcdir} -p ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${PSRCS}; \
			${DEPENDEXTRA} \
		fi \
	else \
		if [ X"${SRCS}" != X -a X"${PSRCS}" != X ] ; then \
			echo ${MKDEP} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${SRCS}; \
			${MKDEP} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${SRCS}; \
			echo ${MKDEP} -ap ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${PSRCS}; \
			${MKDEP} -ap ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${PSRCS}; \
			${DEPENDEXTRA} \
		elif [ X"${SRCS}" != X ] ; then \
			echo ${MKDEP} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${SRCS}; \
			${MKDEP} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${SRCS}; \
			${DEPENDEXTRA} \
		elif [ X"${PSRCS}" != X ] ; then \
			echo ${MKDEP} ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${PSRCS}; \
			${MKDEP} -p ${ALL_CPPFLAGS} ${ALL_CFLAGS} ${PSRCS}; \
			${DEPENDEXTRA} \
		fi \
	fi

FORCE:

###
### Libraries
###

AR =		/usr/bin/ar
ARFLAGS =	cruv
RANLIB =	ranlib

###
### Installation
###

INSTALL =		/usr/bin/install -c
INSTALL_PROGRAM =	${INSTALL}
LINK_PROGRAM =		ln -s
INSTALL_SCRIPT =	${INSTALL}
INSTALL_DATA =		${INSTALL} -m 644
INSTALL_LIBRARY =	${INSTALL_DATA}

###
### Programs used when generating documentation.  It's ok for these
### not to exist when not generating documentation.
###

XSLTPROC =		/usr/bin/xsltproc --novalid --xinclude --nonet
XMLLINT =		/usr/bin/xmllint
PERL =			/usr/bin/perl
LATEX =			/Library/TeX/texbin/latex
PDFLATEX =		/Library/TeX/texbin/pdflatex
DBLATEX =		dblatex
W3M =			w3m
PANDOC =		pandoc

###
### Script language program used to create internal symbol tables
###
MKSYMTBL_PROGRAM =	

###
### Switch to create internal symbol table selectively
###
ALWAYS_MAKE_SYMTABLE =	

###
### DocBook -> HTML
### DocBook -> man page
###

.SUFFIXES: .docbook .html .1 .2 .3 .4 .5 .6 .7 .8

.docbook.html:
	${XSLTPROC} -o $@ ${top_srcdir}/doc/xsl/isc-docbook-html.xsl $<

.docbook.1:
	${XSLTPROC} -o $@ ${top_srcdir}/doc/xsl/isc-manpage.xsl $<

.docbook.2:
	${XSLTPROC} -o $@ ${top_srcdir}/doc/xsl/isc-manpage.xsl $<

.docbook.3:
	${XSLTPROC} -o $@ ${top_srcdir}/doc/xsl/isc-manpage.xsl $<

.docbook.4:
	${XSLTPROC} -o $@ ${top_srcdir}/doc/xsl/isc-manpage.xsl $<

.docbook.5:
	${XSLTPROC} -o $@ ${top_srcdir}/doc/xsl/isc-manpage.xsl $<

.docbook.6:
	${XSLTPROC} -o $@ ${top_srcdir}/doc/xsl/isc-manpage.xsl $<

.docbook.7:
	${XSLTPROC} -o $@ ${top_srcdir}/doc/xsl/isc-manpage.xsl $<

.docbook.8:
	${XSLTPROC} -o $@ ${top_srcdir}/doc/xsl/isc-manpage.xsl $<


main.o: main.c
	${LIBTOOL_MODE_COMPILE} ${CC} ${ALL_CFLAGS} \
		-DVERSION=\"${VERSION}\" \
		-DPRODUCT=\"${PRODUCT}\" \
		-DDESCRIPTION=\"${DESCRIPTION}\" \
		-DSRCID=\"${SRCID}\" \
		-DCONFIGARGS="\"${CONFIGARGS}\"" \
		-DBUILDER="\"make\"" \
		-DNS_LOCALSTATEDIR=\"${localstatedir}\" \
		-DNS_SYSCONFDIR=\"${sysconfdir}\" -c ${srcdir}/main.c

config.o: config.c
	${LIBTOOL_MODE_COMPILE} ${CC} ${ALL_CFLAGS} \
		-DVERSION=\"${VERSION}\" \
		-DSRCID=\"${SRCID}\" \
		-DNS_LOCALSTATEDIR=\"${localstatedir}\" \
		-DNS_SYSCONFDIR=\"${sysconfdir}\" \
		-c ${srcdir}/config.c

named: ${OBJS} ${UOBJS} ${DEPLIBS}
	export MAKE_SYMTABLE="yes"; \
	export BASEOBJS="${OBJS} ${UOBJS}"; \
	${FINALBUILDCMD}

lwresd: named
	rm -f lwresd
	ln named lwresd

doc man:: ${MANOBJS}

docclean manclean maintainer-clean::
	rm -f ${MANOBJS}

clean distclean maintainer-clean::
	rm -f ${TARGETS} ${OBJS}

maintainer-clean::

bind9.xsl.h: bind9.xsl ${srcdir}/convertxsl.pl
	${PERL} ${srcdir}/convertxsl.pl < ${srcdir}/bind9.xsl > bind9.xsl.h

depend: bind9.xsl.h
statschannel.o: bind9.xsl.h

installdirs:
	$(SHELL) ${top_srcdir}/mkinstalldirs ${DESTDIR}${sbindir}
	$(SHELL) ${top_srcdir}/mkinstalldirs ${DESTDIR}${mandir}/man5
	$(SHELL) ${top_srcdir}/mkinstalldirs ${DESTDIR}${mandir}/man8

install:: named lwresd installdirs
	${LIBTOOL_MODE_INSTALL} ${INSTALL_PROGRAM} named ${DESTDIR}${sbindir}
	(cd ${DESTDIR}${sbindir}; rm -f lwresd; ln named lwresd)
	${INSTALL_DATA} ${srcdir}/named.8 ${DESTDIR}${mandir}/man8
	${INSTALL_DATA} ${srcdir}/lwresd.8 ${DESTDIR}${mandir}/man8
	${INSTALL_DATA} ${srcdir}/named.conf.5 ${DESTDIR}${mandir}/man5

uninstall::
	rm -f ${DESTDIR}${mandir}/man5/named.conf.5
	rm -f ${DESTDIR}${mandir}/man8/lwresd.8
	rm -f ${DESTDIR}${mandir}/man8/named.8
	rm -f ${DESTDIR}${sbindir}/lwresd
	${LIBTOOL_MODE_UNINSTALL} rm -f ${DESTDIR}${sbindir}/named


named-symtbl.o: named-symtbl.c
	${LIBTOOL_MODE_COMPILE} ${CC} ${ALL_CFLAGS} -c named-symtbl.c
