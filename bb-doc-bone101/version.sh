#!/bin/bash -e

package_name="bone101"
debian_pkg_name="${package_name}"
package_version="1.1.6"
package_source="${package_name}_${package_version}.orig.tar.gz"
src_dir="${package_name}-${package_version}"

git_repo=""
git_sha=""
reprepro_dir="b/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-0rcnee17"
debian_untar=""
debian_patch=""
sbuild_chroot="nodejs-v0.12.x"
debian_dl_1="https://github.com/rcn-ee/npm-package-bb-doc-bone101/raw/master/deploy/async-2.0.0-rc.6-v0.12.15.tar.xz"
debian_dl_2="https://github.com/rcn-ee/npm-package-bb-doc-bone101/raw/master/deploy/sensortag-1.2.2-v0.12.15.tar.xz"


jessie_version="~bpo80+20160708+1"
