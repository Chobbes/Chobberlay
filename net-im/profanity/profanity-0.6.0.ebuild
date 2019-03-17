# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="Profanity is a console based XMPP client written in C using ncurses and libstrophe, inspired by Irssi."
HOMEPAGE="http://www.profanity.im/"
SRC_URI="http://www.profanity.im/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND="dev-libs/libstrophe"
RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}"
