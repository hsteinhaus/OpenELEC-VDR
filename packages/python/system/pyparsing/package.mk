################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="pyparsing"
PKG_VERSION="2.1.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://pypi.python.org/pypi/pyparsing"
PKG_URL="http://pypi.python.org/packages/source/p/pyparsing/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="Python:host distutilscross:host"
PKG_DEPENDS_HOST="Python:host distutilscross:host setuptools:host"
PKG_PRIORITY="optional"
PKG_SECTION="python/system"
PKG_SHORTDESC="simplejson: a simple, fast, complete, correct and extensible JSON <http://json.org> encoder and decoder for Python 2.5+."
PKG_LONGDESC="simplejson is a simple, fast, complete, correct and extensible JSON <http://json.org> encoder and decoder for Python 2.5+. It is pure Python code with no dependencies, but includes an optional C extension for a serious speed boost."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

#pre_make_target() {
#  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
#  echo $PYTHONXCPREFIX
#}


make_host() {
 : # nothing todo
}

makeinstall_host() {
  echo "make install"
  python setup.py install --prefix=$ROOT/$TOOLCHAIN
}


#make_target() {
#  python setup.py build --cross-compile
#}

#makeinstall_target() {
#  python setup.py install --root=$INSTALL --prefix=/usr
#  python setup.py install --root=$SYSROOT_PREFIX --prefix=/usr
#}

#post_makeinstall_target() {
#  find $SYSROOT_PREFIX/usr/lib -name "*.py" -exec rm -rf "{}" ";"
#  rm -rf $SYSROOT_PREFIX/usr/lib/python*/site-packages/*/tests
#}
