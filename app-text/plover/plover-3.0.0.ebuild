# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

PYTHON_COMPAT=( python2_7 )

inherit python-any-r1

DESCRIPTION="Free and open source real-time stenography engine."
HOMEPAGE="http://www.openstenoproject.org/plover/"
SRC_URI="https://github.com/openstenoproject/plover/archive/v${PV}.tar.gz"


LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="serial"

RDEPEND="${PYTHON_DEPS}
$(python_gen_any_dep '
>=dev-python/wxpython-3.0[${PYTHON_USEDEP}]
dev-python/python-xlib[${PYTHON_USEDEP}] ')"
DEPEND="${RDEPEND}"

src_install() {
    python2 setup.py install --root=${D}
}
