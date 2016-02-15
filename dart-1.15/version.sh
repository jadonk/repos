#!/bin/bash -e

#https://gsdview.appspot.com/dart-archive/channels/stable/release/
#https://gsdview.appspot.com/dart-archive/channels/dev/release/

package_name="dart-1.15"
debian_pkg_name="${package_name}"
#package_version="1.15.0"
#real_package_version="1.15.0"
package_version="1.15.0~dev.1.0"
real_package_version="1.15.0-dev.1.0"
package_source="${package_name}_${package_version}.orig.tar.gz"
src_dir="dart-${real_package_version}"

git_repo=""
git_sha=""
reprepro_dir="d/${package_name}"
dl_path=""

debian_version="${package_version}-1"
debian_untar="dart_${debian_version}.debian.tar.gz"
debian_patch=""

jessie_version="~bpo80+20160204+1"
stretch_version="~bpo90+20160204+1"
xenial_version="~bpo1604+20160204+1"
