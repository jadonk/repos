#!/bin/bash -e

#http://packages.siduction.org/lxqt/pool/main/k/

mirror="http://packages.siduction.org"

package_name="kwindowsystem"
debian_pkg_name="${package_name}"
package_version="5.5.0"
dl_package_source="${package_name}_${package_version}-4.tar.gz"
package_source="${package_name}_${package_version}.orig.tar.gz"
src_dir="master"

git_repo=""
git_sha=""
reprepro_dir="k/${package_name}"
dl_path="lxqt/pool/main/${reprepro_dir}/"

debian_version="${package_version}-4"
debian_patch=""

wheezy_version="~bpo70+20140924+1"
jessie_version="~20150212+1"