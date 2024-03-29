#!/bin/sh
#
# Copyright (C) 2010, 2012, 2014  Internet Systems Consortium, Inc. ("ISC")
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

# $Id: zone-edit.sh.in,v 1.2 2010/12/21 23:47:08 tbox Exp $

dir=/tmp/zone-edit.$$
mkdir ${dir} || exit 1
trap "/bin/rm -rf ${dir}" 0

prefix=/usr/local
exec_prefix=${prefix}
bindir=${exec_prefix}/bin
sbindir=${exec_prefix}/sbin

dig=${bindir}/dig
checkzone=${sbindir}/named-checkzone
nsupdate=${bindir}/nsupdate

case $# in
0) echo "Usage: zone-edit <zone> [dig options] [ -- nsupdate options ]"; exit 0 ;;
esac

# What kind of echo are we using?
try=`echo -n ""`
if test "X$try" = "X-n "
then
    echo_arg=""
    bsc="\\c"
else
    echo_arg="-n"
    bsc=""
fi

zone="${1}"
shift
digopts=
while test $# -ne 0
do
    case "${1}" in
    --)
	shift
	break
	;;
    *)
	digopts="$digopts $1"
	shift
	;;
    esac
done

${dig} axfr "$zone" $digopts |
awk '$4 == "RRSIG" || $4 == "NSEC" || $4 == "NSEC3" || $4 == "NSEC3PARAM" { next; } { print; }' > ${dir}/old

if test -s ${dir}/old
then
    ${checkzone} -q -D "$zone" ${dir}/old > ${dir}/ooo
fi

if test -s ${dir}/ooo
then
    cp ${dir}/ooo ${dir}/new
    while :
    do
        if ${VISUAL:-${EDITOR:-/bin/ed}} ${dir}/new
        then
	    if ${checkzone} -q -D "$zone" ${dir}/new > ${dir}/nnn
	    then
	        sort ${dir}/ooo > ${dir}/s1 
	        sort ${dir}/nnn > ${dir}/s2 
	        comm -23 ${dir}/s1 ${dir}/s2 |
		sed 's/^/update delete /' > ${dir}/ccc
	        comm -13 ${dir}/s1 ${dir}/s2 |
		sed 's/^/update add /' >> ${dir}/ccc
	        if test -s ${dir}/ccc
	        then
		    cat ${dir}/ccc | more
		    while :
		    do
		        echo ${echo_arg} "Update (u), Abort (a), Redo (r), Modify (m), Display (d) : $bsc"
			read ans
			case "$ans" in
		        u)
			    (
			    echo zone "$zone"
			    cat ${dir}/ccc
			    echo send
			    ) | ${nsupdate} "$@"
			    break 2
			    ;;
			a)
			    break 2
			    ;;
			d)
			    cat ${dir}/ccc | more
			    ;;
			r)
			    cp ${dir}/ooo ${dir}/new
			    break
			    ;;
			m)
			    break
			    ;;
		        esac
		    done
		else
		    while :
		    do 
		        echo ${echo_arg} "Abort (a), Redo (r), Modify (m) : $bsc"
		        read ans
		        case "$ans" in
		        a)
		            break 2
		            ;;
		        r)
		            cp ${dir}/ooo ${dir}/new
		    	    break
		            ;;
		        m)
			    break
		            ;;
		        esac
		    done
	        fi
	    else
		while :
		do 
		    echo ${echo_arg} "Abort (a), Redo (r), Modify (m) : $bsc"
		    read ans
		    case "$ans" in
		    a)
		        break 2
		        ;;
		    r)
		        cp ${dir}/ooo ${dir}/new
		    	break
		        ;;
		    m)
			break
		        ;;
		    esac
		done
	    fi
        fi
    done
fi
