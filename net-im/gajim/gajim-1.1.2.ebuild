# Copyright 1999-2019 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

PYTHON_COMPAT=( python3_{5,6,7} )
PYTHON_REQ_USE="sqlite,xml"

inherit distutils-r1

MY_PV=${PV/_/-}
MY_P="${PN}-${MY_PV}"

DESCRIPTION="Jabber client written in PyGTK"
HOMEPAGE="https://www.gajim.org/"
SRC_URI="https://gajim.org/downloads/1.1/gajim-1.1.2.tar.bz2"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86 ~x86-fbsd"
IUSE="crypt dbus gnome gnome-keyring idle jingle libnotify networkmanager nls spell +srv test X xhtml zeroconf"

REQUIRED_USE="
	${PYTHON_REQUIRED_USE}
	libnotify? ( dbus )
	gnome? ( gnome-keyring )
	zeroconf? ( dbus )"

COMMON_DEPEND="
	${PYTHON_DEPS}
	dev-python/pygtk:2[${PYTHON_USEDEP}]
	x11-libs/gtk+:2"
DEPEND="${COMMON_DEPEND}
	>=dev-util/intltool-0.40.1
	virtual/pkgconfig
	>=sys-devel/gettext-0.17-r1"
RDEPEND="${COMMON_DEPEND}
	dev-python/pyasn1[${PYTHON_USEDEP}]
	>=dev-python/pyopenssl-0.14[${PYTHON_USEDEP}]
	>=dev-python/python-nbxmpp-0.6.9[${PYTHON_USEDEP}]
	crypt? ( >=dev-python/python-gnupg-0.4.0[${PYTHON_USEDEP}] )
	dbus? (
		dev-python/dbus-python[${PYTHON_USEDEP}]
		dev-libs/dbus-glib
		libnotify? ( dev-python/notify-python[${PYTHON_USEDEP}] )
		zeroconf? ( net-dns/avahi[dbus,gtk,python,${PYTHON_USEDEP}] )
		)
	gnome? (
		dev-python/libgnome-python[${PYTHON_USEDEP}]
		dev-python/egg-python[${PYTHON_USEDEP}]
		)
	gnome-keyring? ( dev-python/gnome-keyring-python[${PYTHON_USEDEP}] )
	idle? ( x11-libs/libXScrnSaver )
	jingle? ( net-libs/farstream:0.1[python,${PYTHON_USEDEP}] )
	networkmanager? (
			dev-python/dbus-python[${PYTHON_USEDEP}]
			net-misc/networkmanager
		)
	spell? ( app-text/gtkspell:2 )
	srv? (
		|| (
			dev-python/libasyncns-python[${PYTHON_USEDEP}]
			net-dns/bind-tools
			)
		)
	xhtml? ( dev-python/docutils[${PYTHON_USEDEP}] )"
