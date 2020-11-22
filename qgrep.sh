#!/usr/bin/env dash
set -efu
rm -rf qgrep
git clone --depth 1 https://github.com/zeux/qgrep
cd qgrep || exit 1
rm -rf extern/lz4
rm -rf extern/re2
git clone --depth 1 https://github.com/lz4/lz4 extern/lz4
git clone --depth 1 https://github.com/google/re2 extern/re2
patch -p1 <<-'EOP'
--- qgrep/Makefile
+++ qgrep/Makefile
@@ -1,8 +1,8 @@
 BUILD=build/make-$(CXX)
 
-CCFLAGS=-c -g -Wall -Werror -fPIC -O3 -msse2 -DUSE_SSE2 -mtune=native -Iextern/lz4/lib -Iextern/re2
+CCFLAGS=-c -Wall -Werror -Wno-error=unused-variable -fPIC -DNDEBUG -O3 -march=nehalem -mtune=haswell -msse4.2 -pipe -fomit-frame-pointer -ffunction-sections -fdata-sections -Iextern/lz4/lib -Iextern/re2
 CXXFLAGS=-std=c++11
-LDFLAGS=-lpthread -lstdc++
+LDFLAGS=-lpthread -lstdc++ -Wl,--gc-sections,--strip-all
 
 ifeq ($(shell uname),Darwin)
 CCFLAGS+=-force_cpusubtype_ALL -mmacosx-version-min=10.7 -stdlib=libc++
EOP
make
mv qgrep ../qgrep.bin