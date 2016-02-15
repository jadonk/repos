#!/bin/bash -e

. version.sh

base="/var/www/html/rcn-ee.us/repos/"
outgoing="/var/www/html/farm/outgoing"

run () {
	changes_file=$(ls ${outgoing}/${suite}/${deb_arch}/${debian_pkg_name}_${debian_version}/ | grep changes)

	if [ ! "x${changes_file}" = "x" ] ; then
		if [ -f ${outgoing}/${suite}/${deb_arch}/${debian_pkg_name}_${debian_version}/${changes_file} ] ; then
			wfile="${outgoing}/${suite}/${deb_arch}/${debian_pkg_name}_${debian_version}/${changes_file}"
			reprepro -b ${repo} -C main include ${suite} ${wfile}
		fi
	fi
}

dist="debian"
suite="wheezy"
if [ -d suite/${suite}/ ] ; then
	repo="${base}${dist}/"
	deb_arch="armhf"
	rcn_ee_version="${wheezy_version}"
	run
fi

suite="jessie"
if [ -d suite/${suite}/ ] ; then
	repo="${base}${dist}/"
	deb_arch="armhf"
	rcn_ee_version="${jessie_version}"
	run
fi

suite="stretch"
if [ -d suite/${suite}/ ] ; then
	repo="${base}${dist}/"
	deb_arch="armhf"
	rcn_ee_version="${stretch_version}"
	run
fi

dist="ubuntu"
suite="trusty"
if [ -d suite/${suite}/ ] ; then
	repo="${base}${dist}/"
	deb_arch="armhf"
	rcn_ee_version="${trusty_version}"
	run
fi

suite="wily"
if [ -d suite/${suite}/ ] ; then
	repo="${base}${dist}/"
	deb_arch="armhf"
	rcn_ee_version="${wily_version}"
	run
fi

suite="xenial"
if [ -d suite/${suite}/ ] ; then
	repo="${base}${dist}/"
	deb_arch="armhf"
	rcn_ee_version="${xenial_version}"
	run
fi
#
