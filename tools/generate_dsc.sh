#!/bin/bash -e

. version.sh

DIR="$PWD"

run () {
	if [ -d ${DIR}/${suite} ] ; then
		rm -rf ${DIR}/${suite}/
	fi
	mkdir -p ${DIR}/${suite}/

	if [ ! "x${package_source}" = "x" ] ; then
		cp -v ${DIR}/${package_source} ${DIR}/${suite}
	fi

	if [ ! "x${debian_patch}" = "x" ] ; then
		cp -v ${debian_patch} ${DIR}/${suite}
	fi

	cd ${DIR}/${suite}

	if [ ! "x${package_source}" = "x" ] ; then
		if [ ! "x${src_dir}" = "x" ] ; then
			tar xf ${DIR}/${package_source} -C ${DIR}/${suite}/
			cd ${DIR}/${suite}/${src_dir}
			ls
			if [ ! "x${debian_patch}" = "x" ] ; then
				zcat ${DIR}/${debian_patch} | patch -p1
			fi
			if [ ! "x${debian_untar}" = "x" ] ; then
				tar xfv ${DIR}/${debian_untar} -C ${DIR}/${suite}/${src_dir}
			fi
		else
			mkdir -p ${DIR}/${suite}/${package_name}_${package_version}
			tar xf ${DIR}/${package_source} -C ${DIR}/${suite}/${package_name}_${package_version}

			cd ${DIR}/${suite}/${package_name}_${package_version}
			ls
			if [ ! "x${debian_patch}" = "x" ] ; then
				zcat ${DIR}/${debian_patch} | patch -p1
			fi
			if [ ! "x${debian_untar}" = "x" ] ; then
				tar xfv ${DIR}/${debian_untar} -C ${DIR}/${suite}/${package_name}_${package_version}
			fi
		fi
	else
		mkdir -p ${DIR}/${suite}/${package_name}_${package_version}
		cd ${DIR}/${suite}/${package_name}_${package_version}
	fi

	if [ ! -d ./debian ] ; then
		mkdir ./debian
	fi

	if [ -d ${DIR}/suite/${suite}/ ] ; then
		cp -rv ${DIR}/suite/${suite}/* ./
	fi

	debuild -us -uc -S

	cd ${DIR}/
}

dist="debian"
suite="wheezy"
if [ -d suite/${suite}/ ] ; then
	run
fi

suite="jessie"
if [ -d suite/${suite}/ ] ; then
	run
fi

suite="stretch"
if [ -d suite/${suite}/ ] ; then
	run
fi

dist="ubuntu"
suite="trusty"
if [ -d suite/${suite}/ ] ; then
	run
fi

suite="wily"
if [ -d suite/${suite}/ ] ; then
	run
fi

suite="xenial"
if [ -d suite/${suite}/ ] ; then
	run
fi
#
