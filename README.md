stdbuf
======

stdbuf for Mac OS X, stolen from FreeBSD 9.2-RELEASE. Somewhat lazily ported by tcreech.

No major modifications were needed. As in FreeBSD, the stdbuf tool works by imposing libstdbuf in order to "override" certain calls made by the specified program. The path to libstdbuf is hard-coded to /usr/lib in FreeBSD, since it is part of FreeBSD. If libstdbuf.dylib will be installed somewhere other than /usr/local/lib in OS X, specify the PREFIX by defining PREFIX for cpp. E.g., use:

    make CPPFLAGS='-DPREFIX=\"/home/tcreech/opt\"

if you intend to install libstdbuf.dylib in /home/tcreech/opt/lib/ .

