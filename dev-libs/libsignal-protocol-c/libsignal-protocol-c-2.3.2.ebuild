# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit cmake-utils

DESCRIPTION="Signal Protocol C Library"
HOMEPAGE="https://signal.org/"
SRC_URI="https://github.com/signalapp/${PN}/archive/v${PV}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="-coverage -test"

DEPEND=">=dev-util/cmake-2.8.4
	test? (
		dev-libs/check
		>=dev-libs/openssl-1.0
	)
	coverage? ( dev-util/lcov )"

RDEPEND="${DEPEND}"
BDEPEND="${DEPEND}"
