#!/bin/sh
./build.sh

BUILD_DIR=build/release

cp $BUILD_DIR/bin/mec-app debian/usr/bin/
mkdir -p debian/usr/lib/MEC
cp $BUILD_DIR/lib/*.so debian/usr/lib/MEC/

gzip --best -n ./debian/usr/share/doc/mec/changelog ./debian/usr/share/doc/mec/changelog.Debian ./debian/usr/share/man/man1/mec.1
fakeroot dpkg --build debian
mv debian.deb mec.deb
gunzip `find . | grep gz` > /dev/null 2>&1

