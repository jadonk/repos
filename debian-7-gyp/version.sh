#!/bin/bash -e

mirror="http://http.debian.net/debian"

package_name="gyp"
debian_pkg_name="${package_name}"
package_version="0.1~svn1729"
package_source="${package_name}_${package_version}.orig.tar.gz"
src_dir="gyp-0.1~svn1729.orig"

git_repo=""
git_sha=""
reprepro_dir="g/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-3"
debian_untar="gyp_0.1~svn1729-3~bpo7+1.debian.tar.gz"
debian_patch=""

jessie_version="~20141124+1"
wheezy_version="~bpo70+20150123+1"
