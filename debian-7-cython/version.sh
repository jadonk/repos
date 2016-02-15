#!/bin/bash -e

mirror="http://http.debian.net/debian"

package_name="cython"
debian_pkg_name="${package_name}"
package_version="0.19.1+git34-gac3e3a2"
package_source="${package_name}_${package_version}.orig.tar.gz"
src_dir="${package_name}-${package_version}"

git_repo=""
git_sha=""
reprepro_dir="c/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-1~bpo70+1"
debian_untar="${package_name}_${debian_version}.debian.tar.gz"
debian_patch=""

wheezy_version="~bpo70+20151117+1"
