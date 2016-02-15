#!/bin/bash -e

#http://packages.siduction.org/lxqt/pool/main/l/lximage-qt/

mirror="http://packages.siduction.org"

package_name="lximage-qt"
debian_pkg_name="${package_name}"
package_version="0.4.0"
package_source="${package_name}_${package_version}-7.tar.gz"
src_dir="checkout"

git_repo=""
git_sha=""
reprepro_dir="l/${package_name}"
dl_path="lxqt/pool/main/${reprepro_dir}/"

debian_version="${package_version}-7"
debian_patch=""

jessie_version="~bpo80+20150716+1"
stretch_version="~bpo90+20150716+1"
