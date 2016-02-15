#!/bin/bash -e

mirror="http://http.debian.net/debian"

package_name="llvm-toolchain-snapshot"
debian_pkg_name="${package_name}"
package_version="3.8~svn254193"

git_repo=""
git_sha=""
reprepro_dir="l/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-1"
debian_untar="${package_name}_${debian_version}.debian.tar.xz"
debian_patch=""
