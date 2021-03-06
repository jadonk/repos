#!/bin/bash -e

mirror="http://http.debian.net/debian"

package_name="libvdpau"
debian_pkg_name="${package_name}"
package_version="1.1.1"
package_source="${package_name}_${package_version}.orig.tar.bz2"
src_dir="${package_name}-${package_version}"

git_repo=""
git_sha=""
reprepro_dir="libv/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-3"
debian_untar="${package_name}_${debian_version}.debian.tar.xz"
debian_patch=""

jessie_version="~bpo80+20151029+1"
