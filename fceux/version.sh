#!/bin/bash -e

mirror="http://http.debian.net/debian"

package_name="fceux"
debian_pkg_name="${package_name}"
package_version="2.2.2+dfsg0"
package_source="${package_name}_${package_version}.orig.tar.gz"
src_dir="${package_name}-${package_version}"

git_repo=""
git_sha=""
reprepro_dir="f/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-1"
debian_untar="${package_name}_${debian_version}.debian.tar.xz"
debian_patch=""

wheezy_version="~bpo70+20151014+1"
