stdbuf
======

stdbuf for Mac OS X, copied from [stdbuf in FreeBSD 9.2-RELEASE]. Somewhat lazily ported by tcreech.

(I needed it for sending stuff to [feedgnuplot].)

No major modifications were needed. As in FreeBSD, the stdbuf tool works by imposing libstdbuf in order to "override" certain calls made by the specified program. The path to libstdbuf is hard-coded to /usr/lib in FreeBSD, since it is part of FreeBSD. If libstdbuf.dylib will be installed somewhere other than /usr/local/lib in OS X, specify the PREFIX by defining PREFIX for cpp. E.g., use:

    make CPPFLAGS='-DPREFIX=\"/Users/tcreech/opt\"'

if you intend to install libstdbuf.dylib in /Users/tcreech/opt/lib/ .

[stdbuf in FreeBSD 9.2-RELEASE]:http://svnweb.freebsd.org/base/release/9.2.0/usr.bin/stdbuf/stdbuf.c?revision=255898
[feedgnuplot]:https://github.com/dkogan/feedgnuplot
