#!/bin/bash -e

#http://git.ti.com/gitweb/?p=sdo-emu/dsptop.git;a=summary

package_name="temperature-mod-dkms"
debian_pkg_name="${package_name}"
package_version="1.0.1-git20150710"
package_source="${package_name}_${package_version}.orig.tar.xz"
src_dir="${package_name}_${package_version}"

git_repo="git://git.ti.com/sdo-emu/dsptop.git"
git_sha="edf5670075cf6cf42f46654d284f9f78c1c123a1"
reprepro_dir="t/${package_name}"
dl_path=""

debian_version="${package_version}-1"
debian_patch=""
debian_diff=""

wheezy_version="~bpo70+20151015+1"
jessie_version="~bpo80+20151015+1"
stretch_version="~bpo90+20151015+1"
