# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit autotools

DESCRIPTION="Profanity is a console based XMPP client written in C using ncurses and libstrophe, inspired by Irssi."
HOMEPAGE="http://www.profanity.im/"
SRC_URI="http://www.profanity.im/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="+libnotify +gpg +otr +autoaway +tray"

DEPEND="dev-libs/libstrophe
	sys-libs/ncurses
	dev-libs/glib
	net-misc/curl
	sys-libs/readline
	libnotify? ( x11-libs/libnotify )
	gpg? ( app-crypt/gpgme )
	otr? ( net-libs/libotr )
	autoaway? ( x11-libs/libXScrnSaver )
	tray? ( x11-libs/gtk+ )"
RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}"
