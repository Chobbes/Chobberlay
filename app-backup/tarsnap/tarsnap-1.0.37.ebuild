# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit autotools

DESCRIPTION="The tarsnap backup utility."

HOMEPAGE="https://www.tarsnap.com/"
SRC_URI="https://www.tarsnap.com/download/${PN}-autoconf-${PV}.tgz -> ${P}.tgz"

LICENSE="BSD"

SLOT="0"
KEYWORDS="~alpha ~amd64 ~arm ~hppa ~ia64 ~ppc ~ppc64 ~s390 ~sh ~sparc ~x86"


src_unpack() {
    unpack ${A}

    mv ${PN}-autoconf-${PV} ${P}
}

src_install() {
    emake
    dobin tarsnap
    dobin tarsnap-keymgmt
    dobin tarsnap-keyregen
    dobin tarsnap-recrypt
}
