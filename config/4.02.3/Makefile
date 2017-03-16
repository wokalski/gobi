BINDIR=$(PREFIX)/host/bin
LIBDIR=$(PREFIX)/lib/ocaml
STUBLIBDIR=$(LIBDIR)/stublibs
MANDIR=$(PREFIX)/man
MANEXT=1
CAMLRUN=$(HOST_BIN)/ocamlrun
CAMLYACC=$(HOST_BIN)/ocamlyacc
TARGET_BINDIR=$(PREFIX)/target/bin
RANLIB=$(TOOLCHAIN_BIN)/ranlib
RANLIBCMD=$(TOOLCHAIN_BIN)/ranlib
ARCMD=$(TOOLCHAIN_BIN)/ar
SHARPBANGSCRIPTS=true
UNIX_OR_WIN32=unix
UNIXLIB=unix
GRAPHLIB=graph
BNG_ARCH=$(SUBARCH)
BNG_ASM_LEVEL=1
PTHREAD_LINK=-lpthread
PTHREAD_CAML_LINK=-cclib -lpthread
X11_INCLUDES=not found
X11_LINK=not found
LIBBFD_LINK=
BYTECC=$(TOOLCHAIN_BIN)/clang -arch $(SUBARCH) -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/$(PLATFORM).platform/Developer/SDKs/$(PLATFORM).sdk -miphoneos-version-min=$(MIN_IOS_VERSION) -O2
BYTECCCOMPOPTS=-O -Wall -D_FILE_OFFSET_BITS=64 -D_REENTRANT
BYTECCLINKOPTS=
BYTECCLINKOPTS=-Wl,-syslibroot,/Applications/Xcode.app/Contents/Developer/Platforms/$(PLATFORM).platform/Developer/SDKs/$(PLATFORM).sdk
BYTECCRPATH=
EXE=
SUPPORTS_SHARED_LIBRARIES=false
SHAREDCCCOMPOPTS=-O 
MKSHAREDLIBRPATH=
NATDYNLINKOPTS=
SYSLIB=-l$(1)
#ml let syslib x = "-l"^x;;

### How to build a static library
MKLIB=$(TOOLCHAIN_BIN)/ar rc $(1) $(2); $(TOOLCHAIN_BIN)/ranlib $(1)
#ml let mklib out files opts = Printf.sprintf "ar rc %s %s %s; ranlib %s" out opts files out;;
# ARCH defined in env
MODEL=$(SUBARCH)
SYSTEM=macosx
NATIVECC=$(BYTECC)
NATIVECCCOMPOPTS=-O -Wall -D_FILE_OFFSET_BITS=$(BITS) -D_REENTRANT
NATIVECCPROFOPTS=-O -Wall -D_FILE_OFFSET_BITS=$(BITS) -D_REENTRANT
NATIVECCLINKOPTS=
NATIVECCRPATH=
NATIVECCLIBS=-Wl,-syslibroot,/Applications/Xcode.app/Contents/Developer/Platforms/$(PLATFORM).platform/Developer/SDKs/$(PLATFORM).sdk   
ASM=$(TOOLCHAIN_BIN)/as -arch ${SUBARCH} -miphoneos-version-min=$(MIN_IOS_VERSION)
ASPP=$(BYTECC) -c
ASPPPROFFLAGS=-DPROFILING
PROFILING=noprof
DYNLINKOPTS=
OTHERLIBRARIES=unix str num dynlink bigarray systhreads
CC_PROFILE=-pg
SYSTHREAD_SUPPORT=true
PARTIALLD=$(TOOLCHAIN_BIN)/ld -r
PACKLD=$(PARTIALLD) $(NATIVECCLINKOPTS) -o\ 
DLLCCCOMPOPTS=
IFLEXDIR=
O=o
A=a
SO=so
EXT_OBJ=.o
EXT_ASM=.s
EXT_LIB=.a
EXT_DLL=.so
EXTRALIBS=
CCOMPTYPE=cc
TOOLCHAIN=cc
NATDYNLINK=false
CMXS=cmxa
MKEXE=$(BYTECC) -Wl,-no_compact_unwind
MKEXEDEBUGFLAG=-g
MKDLL=
MKMAINDLL=
RUNTIMED=noruntimed
SHARED=noshared
WITH_DEBUGGER=
WITH_OCAMLDOC=
WITH_OCAMLBUILD=
ASM_CFI_SUPPORTED=true
WITH_FRAME_POINTERS=false
TARGET=$(SUBARCH)-apple-darwin
# TARGET_WORD_SIZE in env
# HOST in env
