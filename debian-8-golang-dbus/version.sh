#!/bin/bash -e

mirror="http://http.debian.net/debian"

package_name="golang-dbus"
debian_pkg_name="${package_name}"
package_version="2"
package_source="${package_name}_${package_version}.orig.tar.gz"
src_dir="dbus-${package_version}"

git_repo=""
git_sha=""
reprepro_dir="g/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-1~bpo8+1"
debian_untar="${package_name}_${debian_version}.debian.tar.xz"
debian_patch=""

jessie_version="~bpo80+20151119+1"
