# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

DESCRIPTION="Additional Folder Colors for the default Ozon Icon Theme."
HOMEPAGE="https://github.com/ozonos/${PN}"

if [[ ${PV} == "9999" ]] ; then
	inherit git-r3
	EGIT_REPO_URI="https://github.com/ozonos/${PN}.git"
	KEYWORDS=""
else
	inherit git-r3
	SRC_URI=""
        EGIT_REPO_URI="https://github.com/ozonos/${PN}.git"
	EGIT_COMMIT="7d6d24b7bfd19d1ad978419b82d76b1383c779e8"
	KEYWORDS="~amd64 ~arm ~x86"
fi

LICENSE="GPL-3.0"
SLOT="0"

DEPEND=""
RDEPEND="${DEPEND}"

src_install() {
	emake DESTDIR="${D}" install
	dodoc README.md
}