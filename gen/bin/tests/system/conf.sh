#!/bin/sh
#
# Copyright (C) 2004-2017  Internet Systems Consortium, Inc. ("ISC")
# Copyright (C) 2000-2003  Internet Software Consortium.
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

#
# Common configuration data for system tests, to be sourced into
# other shell scripts.
#

# Find the top of the BIND9 tree.
TOP=${SYSTEMTESTTOP:=.}/../../..

# Make it absolute so that it continues to work after we cd.
TOP=`cd $TOP && pwd`

NAMED=$TOP/bin/named/named
# We must use "named -l" instead of "lwresd" because argv[0] is lost
# if the program is libtoolized.
LWRESD="$TOP/bin/named/named -l"
DIG=$TOP/bin/dig/dig
DELV=$TOP/bin/delv/delv
RNDC=$TOP/bin/rndc/rndc
NSUPDATE=$TOP/bin/nsupdate/nsupdate
DDNSCONFGEN=$TOP/bin/confgen/ddns-confgen
TSIGKEYGEN=$TOP/bin/confgen/tsig-keygen
RNDCCONFGEN=$TOP/bin/confgen/rndc-confgen
KEYGEN=$TOP/bin/dnssec/dnssec-keygen
KEYFRLAB=$TOP/bin/dnssec/dnssec-keyfromlabel
SIGNER=$TOP/bin/dnssec/dnssec-signzone
REVOKE=$TOP/bin/dnssec/dnssec-revoke
SETTIME=$TOP/bin/dnssec/dnssec-settime
DSFROMKEY=$TOP/bin/dnssec/dnssec-dsfromkey
IMPORTKEY=$TOP/bin/dnssec/dnssec-importkey
CHECKDS=$TOP/bin/python/dnssec-checkds
COVERAGE=$TOP/bin/python/dnssec-coverage
CHECKZONE=$TOP/bin/check/named-checkzone
CHECKCONF=$TOP/bin/check/named-checkconf
PK11GEN="$TOP/bin/pkcs11/pkcs11-keygen -q -s ${SLOT:-0} -p ${HSMPIN:-1234}"
PK11LIST="$TOP/bin/pkcs11/pkcs11-list -s ${SLOT:-0} -p ${HSMPIN:-1234}"
PK11DEL="$TOP/bin/pkcs11/pkcs11-destroy -s ${SLOT:-0} -p ${HSMPIN:-1234} -w 0"
JOURNALPRINT=$TOP/bin/tools/named-journalprint
VERIFY=$TOP/bin/dnssec/dnssec-verify
ARPANAME=$TOP/bin/tools/arpaname
RESOLVE=$TOP/lib/samples/resolve
RRCHECKER=$TOP/bin/tools/named-rrchecker
GENRANDOM=$TOP/bin/tools/genrandom
NSLOOKUP=$TOP/bin/dig/nslookup
FEATURETEST=$TOP/bin/tests/system/feature-test

RANDFILE=$TOP/bin/tests/system/random.data
MDIG=$TOP/bin/tests/mdig

BIGKEY=$TOP/bin/tests/system/rsabigexponent/bigkey
KEYCREATE=$TOP/bin/tests/system/tkey/keycreate
KEYDELETE=$TOP/bin/tests/system/tkey/keydelete
LWTEST=$TOP/bin/tests/system/lwresd/lwtest
MAKEJOURNAL=$TOP/bin/tests/makejournal
SAMPLEUPDATE=$TOP/lib/samples/sample-update

# The "stress" test is not run by default since it creates enough
# load on the machine to make it unusable to other users.
# v6synth
SUBDIRS="acl additional allow_query addzone autosign builtin
	 cacheclean case chain checkconf checkds checknames
	 checkzone cookie coverage database delv digdelv dlv
	 dlvauto dlz dlzexternal dlzredir dns64 dnssec dsdigest
	 dscp ecdsa ednscompliance emptyzones fetchlimit filter-aaaa
	 formerr forward geoip glue gost ixfr inline integrity
	 legacy limits logfileconfig lwresd masterfile masterformat
	 metadata notify nslookup nsupdate pending pkcs11
	 reclimit redirect resolver rndc rpz rpzrecurse rrl rrchecker
	 rrsetorder rsabigexponent smartsign sortlist spf staticstub
	 statistics statschannel stub tcp tkey tsig tsiggss unknown
	 upforwd verify views wildcard xfer xferquota zero zonechecks"

# Things that are different on Windows
KILL=kill
DIFF=diff
DOS2UNIX=true
# There's no trailing period on Windows
TP=.

# Use the CONFIG_SHELL detected by configure for tests
SHELL=/bin/sh

# CURL will be empty if no program was found by configure
CURL=/usr/bin/curl

# XMLLINT will be empty if no program was found by configure
XMLLINT=/usr/bin/xmllint

# PERL will be an empty string if no perl interpreter was found.
PERL=/usr/bin/perl

if test -n "$PERL"
then
	if $PERL -e "use IO::Socket::INET6;" 2> /dev/null
	then
		TESTSOCK6="$PERL $TOP/bin/tests/system/testsock6.pl"
	else
		TESTSOCK6=false
	fi
else
	TESTSOCK6=false
fi

if grep "^#define WANT_IPV6 1" $TOP/config.h > /dev/null 2>&1 ; then
        TESTSOCK6="$TESTSOCK6"
else
        TESTSOCK6=false
fi


PYTHON=/usr/bin/python3

#
# Determine if we support various optional features.
#
CHECK_DSA=1
HAVEXMLSTATS=1
HAVEJSONSTATS=
ZLIB=@ZLIB@

. ${TOP}/version

export ARPANAME
export BIGKEY
export CHECKZONE
export DESCRIPTION
export DIG
export FEATURETEST
export JOURNALPRINT
export KEYCREATE
export KEYDELETE
export KEYFRLAB
export KEYGEN
export KEYSETTOOL
export KEYSIGNER
export LWRESD
export LWTEST
export MAKEJOURNAL
export MDIG
export NAMED
export NSLOOKUP
export NSUPDATE
export PERL
export PK11DEL
export PK11GEN
export PK11LIST
export PYTHON
export RANDFILE
export RESOLVE
export RNDC
export RRCHECKER
export SAMPLEUPDATE
export SIGNER
export SUBDIRS
export TESTSOCK6
