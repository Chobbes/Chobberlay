# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

DESCRIPTION="Free and open source real-time stenography engine."
HOMEPAGE="http://www.openstenoproject.org/plover/"
SRC_URI="https://github.com/openstenoproject/plover/archive/v${PV}.tar.gz"


LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="acl bzip2 libressl lzma cpu_flags_x86_sse2 xattr"

RDEPEND="dev-lang/python:2
         >=dev-python/wxpython-3.0"
DEPEND="${RDEPEND}"

src_install() {
    python2 setup.py install --root=${D}
}
