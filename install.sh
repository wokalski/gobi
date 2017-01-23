#!/bin/sh

# Should I change compiler version?
# Are there any tests

# There are multiple copies created because building ocaml leaves build artifacts 
# They are inside various folders and I didn't find a way to clean them (although I didn't look to hard)

mkdir -p bin

git clone -b 4.04.0+ios https://github.com/whitequark/ocaml.git bin/ocaml-ios
cp -R bin/ocaml-ios bin/ocaml-host-64
cp -R bin/ocaml-ios bin/ocaml-host-32

# build hosts

cd bin/ocaml-host-64
./configure -prefix $(pwd)/release
make world.opt install || exit $?
cd ../..

cd bin/ocaml-host-32
./configure -prefix $(pwd)/release -no-shared-libs \
	-host i386-apple-darwin$(uname -r) \
	-cc 'clang -arch i386' \
	-as 'clang -arch i386 -c' \
	-aspp 'clang -arch i386 -c' \
	-lib -Wl,-no_pie
make world.opt install || exit $?
cd ../..

cp ./config/* ./bin/ocaml-ios/config/

export TOOLCHAIN_BIN=/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin
export MIN_IOS_VERSION=9.3
PLATFORMS=(iPhoneSimulator iPhoneOS)
ARCHS32=(i386 arm)
SUBARCHS32=(i386 armv7)
ARCHS64=(amd64 arm64)
SUBARCHS64=(x86_64 arm64)

for BITS in 64 32
do
	SUBARCHS=SUBARCHS${BITS}[@]
	SUBARCHS=( "${!SUBARCHS}" )
	ARCHS=ARCHS${BITS}[@]
	ARCHS=( "${!ARCHS}" )
	export HOST_BIN=$(pwd)/bin/ocaml-host-${BITS}/release/bin
	echo ${HOST_BIN}
	for i in 0 1 
	do
		export PLATFORM=${PLATFORMS[i]}
		export ARCH=${ARCHS[i]}
		export SUBARCH=${SUBARCHS[i]}
		COMPILER_DIR=$(pwd)/bin/ocaml-${PLATFORM}-${BITS}
		cp -R bin/ocaml-ios ${COMPILER_DIR}
		cd ${COMPILER_DIR}
		export PREFIX=$(pwd)
		make world opt install || exit $?
		cd ../..
	done
done

