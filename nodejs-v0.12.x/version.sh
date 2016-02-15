#!/bin/bash -e

#mirror="http://http.debian.net/debian"

package_name="nodejs-v0.12.x"
debian_pkg_name="${package_name}"
package_version="0.12.10"
package_source="${package_name}_${package_version}.orig.tar.xz"
src_dir="node-v${package_version}"

git_repo=""
git_sha=""
reprepro_dir="n/${package_name}"
dl_path="pool/main/${reprepro_dir}/"

debian_version="${package_version}-0"
debian_untar=""
debian_patch=""
local_patch="rcnee5"

jessie_version="~bpo80+20160211+1"
stretch_version="~bpo90+20160211+1"
