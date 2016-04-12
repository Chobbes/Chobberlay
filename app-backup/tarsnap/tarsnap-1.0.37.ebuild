# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

inherit autotools

DESCRIPTION="The tarsnap backup utility."

HOMEPAGE="https://www.tarsnap.com/"
SRC_URI="https://www.tarsnap.com/download/${PN}-autoconf-${PV}.tgz"

LICENSE="BSD"

SLOT="0"
KEYWORDS="~x86 ~amd64"

S=${WORKDIR}/${PN}-autoconf-${PV}
