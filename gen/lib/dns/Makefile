# Copyright (C) 2004-2017  Internet Systems Consortium, Inc. ("ISC")
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

srcdir =	../../../bind9/lib/dns
VPATH =		../../../bind9/lib/dns
top_srcdir =	../../../bind9

# Attempt to disable parallel processing.
.NOTPARALLEL:
.NO_PARALLEL:

VERSION=9.10.6
MAJOR=9.10

# This value should be increased whenever changing the structure of
# any object that will appear in a type 'map' master file (which
# contains a working memory image of an RBT database), as loading 
# an incorrect memory image produces an inconsistent and probably
# nonfunctional database.  These structures include but are not
# necessarily limited to dns_masterrawheader, rbtdb_file_header,
# rbt_file_header, dns_rbtdb, dns_rbt, dns_rbtnode, rdatasetheader.
#
# Err on the side of caution: if anything in the RBTDB is changed,
# bump the value.  Making map files unreadable protects the system
# from instability; it's a feature not a bug.
#
# Whenever releasing a new major release of BIND9, set this value
# back to 1.0 when releasing the first alpha.  Fast files are *never*
# compatible across major releases.
MAPAPI=1.1

# LIBINTERFACE ranges
# 9.6: 50-59, 110-119
# 9.7: 60-79
# 9.8: 80-89, 120-129
# 9.9: 90-109, 170-179
# 9.9-sub: 130-139, 150-159, 200-209
# 9.10: 140-149, 190-199
# 9.10-sub: 180-189
# 9.11: 160-169
# 9.12: 1200-1299
LIBINTERFACE = 190
LIBREVISION = 1
LIBAGE = 0

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

ISC_INCLUDES = -I/Volumes/CaseSensitive/git/darling-bind9/gen/lib/isc/include \
	-I${top_srcdir}/lib/isc \
	-I${top_srcdir}/lib/isc/include \
	-I${top_srcdir}/lib/isc/unix/include \
	-I${top_srcdir}/lib/isc/pthreads/include \
	-I${top_srcdir}/lib/isc/noatomic/include

ISCCC_INCLUDES = -I/Volumes/CaseSensitive/git/darling-bind9/gen/lib/isccc/include \
       -I${top_srcdir}/lib/isccc/include

ISCCFG_INCLUDES = -I/Volumes/CaseSensitive/git/darling-bind9/gen/lib/isccfg/include \
       -I${top_srcdir}/lib/isccfg/include

DNS_INCLUDES = -I/Volumes/CaseSensitive/git/darling-bind9/gen/lib/dns/include \
	-I${top_srcdir}/lib/dns/include

IRS_INCLUDES = -I/Volumes/CaseSensitive/git/darling-bind9/gen/lib/irs/include \
	-I${top_srcdir}/lib/irs/include

LWRES_INCLUDES = -I/Volumes/CaseSensitive/git/darling-bind9/gen/lib/lwres/include \
	-I${top_srcdir}/lib/lwres/unix/include \
	-I${top_srcdir}/lib/lwres/include

BIND9_INCLUDES = -I/Volumes/CaseSensitive/git/darling-bind9/gen/lib/bind9/include \
	-I${top_srcdir}/lib/bind9/include

TEST_INCLUDES = \
	-I${top_srcdir}/lib/tests/include

USE_ISC_SPNEGO = -DUSE_ISC_SPNEGO

CINCLUDES =	-I. -I${top_srcdir}/lib/dns -Iinclude ${DNS_INCLUDES} \
		${ISC_INCLUDES}  

CDEFINES =	-DUSE_MD5 -DPKCS11CRYPTO -DGSSAPI ${USE_ISC_SPNEGO}

CWARNINGS =

ISCLIBS =	../../lib/isc/libisc.a

ISCDEPLIBS =	../../lib/isc/libisc.a

LIBS =		-ldl -lpthread  -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib -lxml2 -lz -lpthread -licucore -lm

# Alphabetically

OPENSSLGOSTLINKOBJS = opensslgost_link.o
OPENSSLLINKOBJS = openssl_link.o openssldh_link.o openssldsa_link.o \
		  opensslecdsa_link.o  \
		  opensslrsa_link.o

PKCS11LINKOBJS	= pkcs11dh_link.o pkcs11dsa_link.o pkcs11rsa_link.o \
		pkcs11ecdsa_link.o pkcs11gost_link.o pkcs11.o

DSTOBJS =	 spnego.o  ${PKCS11LINKOBJS} \
		dst_api.o dst_lib.o dst_parse.o dst_result.o \
		gssapi_link.o gssapictx.o hmac_link.o key.o

GEOIPLINKOBJS = geoip.o

# Alphabetically
DNSOBJS =	acache.o acl.o adb.o byaddr.o \
		cache.o callbacks.o clientinfo.o compress.o \
		db.o dbiterator.o dbtable.o diff.o dispatch.o \
		dlz.o dns64.o dnssec.o ds.o forward.o \
		iptable.o journal.o keydata.o keytable.o \
		lib.o log.o lookup.o \
		master.o masterdump.o message.o \
		name.o ncache.o nsec.o nsec3.o order.o peer.o \
		portlist.o private.o \
		rbt.o rbtdb.o rbtdb64.o rcode.o rdata.o \
		rdatalist.o rdataset.o rdatasetiter.o rdataslab.o \
		request.o resolver.o result.o rootns.o \
		rpz.o rrl.o rriterator.o sdb.o \
		sdlz.o soa.o ssu.o ssu_external.o \
		stats.o tcpmsg.o time.o timer.o tkey.o \
		tsec.o tsig.o ttl.o update.o validator.o \
		version.o view.o xfrin.o zone.o zonekey.o zt.o
PORTDNSOBJS =	client.o ecdb.o

OBJS=		${DNSOBJS} ${OTHEROBJS} ${DSTOBJS} ${PORTDNSOBJS} \
		


# Alphabetically
OPENSSLGOSTLINKSRCS = opensslgost_link.c
OPENSSLLINKSRCS = openssl_link.c openssldh_link.c openssldsa_link.c \
		  opensslecdsa_link.c  opensslrsa_link.c

PKCS11LINKSRCS	= pkcs11dh_link.c pkcs11dsa_link.c pkcs11rsa_link.c \
		pkcs11ecdsa_link.c pkcs11gost_link.c pkcs11.c

DSTSRCS =	 spnego.c  ${PKCS11LINKSRCS} \
		dst_api.c dst_lib.c dst_parse.c \
		dst_result.c gssapi_link.c gssapictx.c \
		hmac_link.c key.c

GEOIOLINKSRCS = geoip.c

DNSSRCS =	acache.c acl.c adb.c byaddr.c \
		cache.c callbacks.c clientinfo.c compress.c \
		db.c dbiterator.c dbtable.c diff.c dispatch.c \
		dlz.c dns64.c dnssec.c ds.c forward.c \
		iptable.c journal.c keydata.c keytable.c lib.c log.c \
		lookup.c master.c masterdump.c message.c \
		name.c ncache.c nsec.c nsec3.c order.c peer.c portlist.c \
		rbt.c rbtdb.c rbtdb64.c rcode.c rdata.c rdatalist.c \
		rdataset.c rdatasetiter.c rdataslab.c request.c \
		resolver.c result.c rootns.c rpz.c rrl.c rriterator.c \
		sdb.c sdlz.c soa.c ssu.c ssu_external.c \
		stats.c tcpmsg.c time.c timer.c tkey.c \
		tsec.c tsig.c ttl.c update.c validator.c \
		version.c view.c xfrin.c zone.c zonekey.c zt.c ${OTHERSRCS}
PORTDNSSRCS =	client.c ecdb.c

SRCS = ${DSTSRCS} ${DNSSRCS} ${PORTDNSSRCS} 

SUBDIRS =	include
TARGETS =	timestamp
TESTDIRS =	

DEPENDEXTRA =	./gen -F include/dns/rdatastruct.h \
		-s ${srcdir} -d >> Makefile ;

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

prefix =	/usr/local
exec_prefix =	${prefix}
bindir =	${exec_prefix}/bin
sbindir =	${exec_prefix}/sbin
includedir =	${prefix}/include
libdir =	${exec_prefix}/lib
sysconfdir =	/etc
localstatedir =	/var
mandir =	${datarootdir}/man
datarootdir =   ${prefix}/share

DESTDIR =



top_builddir =	/Volumes/CaseSensitive/git/darling-bind9/gen

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

CC = 		gcc
CFLAGS =	-g -O2 -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
LDFLAGS =	
STD_CINCLUDES =	
STD_CDEFINES =	 -D__APPLE_USE_RFC_3542
STD_CWARNINGS =	 -W -Wall -Wmissing-prototypes -Wcast-qual -Wwrite-strings -Wformat -Wpointer-arith -fno-strict-aliasing -fno-delete-null-pointer-checks

BUILD_CC = gcc
BUILD_CFLAGS = -g -O2 -I/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include
BUILD_CPPFLAGS =  -D__APPLE_USE_RFC_3542 
BUILD_LDFLAGS = 
BUILD_LIBS = -ldl -lpthread  -L/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/lib -lxml2 -lz -lpthread -licucore -lm

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
LATEX =			latex
PDFLATEX =		pdflatex
DBLATEX =		dblatex
W3M =			w3m
PANDOC =		pandoc

###
### Script language program used to create internal symbol tables
###
MKSYMTBL_PROGRAM =	/usr/bin/perl

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


version.o: version.c
	${LIBTOOL_MODE_COMPILE} ${CC} ${ALL_CFLAGS} \
		-DVERSION=\"${VERSION}\" \
		-DMAJOR=\"${MAJOR}\" \
		-DMAPAPI=\"${MAPAPI}\" \
		-DLIBINTERFACE=${LIBINTERFACE} \
		-DLIBREVISION=${LIBREVISION} \
		-DLIBAGE=${LIBAGE} \
		-c ${srcdir}/version.c

libdns.a: ${OBJS}
	${AR} ${ARFLAGS} $@ ${OBJS}
	${RANLIB} $@

libdns.la: ${OBJS}
	${LIBTOOL_MODE_LINK} \
		${CC} ${ALL_CFLAGS} ${LDFLAGS} -o libdns.la -rpath ${libdir} \
		-version-info ${LIBINTERFACE}:${LIBREVISION}:${LIBAGE} \
		${OBJS} ${ISCLIBS}  -framework Kerberos ${LIBS}

include: gen
	${MAKE} include/dns/enumtype.h
	${MAKE} include/dns/enumclass.h
	${MAKE} include/dns/rdatastruct.h
	${MAKE} code.h

include/dns/enumtype.h: gen
	./gen -s ${srcdir} -t > $@ || { rm -f $@ ; exit 1; }

include/dns/enumclass.h: gen
	./gen -s ${srcdir} -c > $@ || { rm -f $@ ; exit 1; }

include/dns/rdatastruct.h: gen \
		${srcdir}/rdata/rdatastructpre.h \
		${srcdir}/rdata/rdatastructsuf.h
	./gen -s ${srcdir} -i \
		-P ${srcdir}/rdata/rdatastructpre.h \
		-S ${srcdir}/rdata/rdatastructsuf.h > $@ || \
	{ rm -f $@ ; exit 1; }

code.h:	gen
	./gen -s ${srcdir} > code.h || { rm -f $@ ; exit 1; }

gen: gen.c
	${BUILD_CC} ${BUILD_CFLAGS} -I${top_srcdir}/lib/isc/include \
	${BUILD_CPPFLAGS} ${BUILD_LDFLAGS} -o $@ ${srcdir}/gen.c ${BUILD_LIBS}

timestamp: include libdns.a
	touch timestamp

testdirs: libdns.a

installdirs:
	$(SHELL) ${top_srcdir}/mkinstalldirs ${DESTDIR}${libdir}

install:: timestamp installdirs
	${LIBTOOL_MODE_INSTALL} ${INSTALL_LIBRARY} libdns.a ${DESTDIR}${libdir}

uninstall::
	${LIBTOOL_MODE_UNINSTALL} rm -f ${DESTDIR}${libdir}/libdns.a

clean distclean::
	rm -f libdns.a timestamp
	rm -f gen code.h include/dns/enumtype.h include/dns/enumclass.h
	rm -f include/dns/rdatastruct.h

newrr::
	rm -f code.h include/dns/enumtype.h include/dns/enumclass.h
	rm -f include/dns/rdatastruct.h

include: include/dns/enumtype.h include/dns/enumclass.h \
	include/dns/rdatastruct.h

rdata.o: include

rbtdb64.o: rbtdb64.c rbtdb.c

depend: include
subdirs: include
${OBJS}: include

spnego.o: spnego_asn1.c spnego.h
