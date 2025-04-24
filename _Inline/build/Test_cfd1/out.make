Running Mkbootstrap for Test_cfd1 ()
chmod 644 "Test_cfd1.bs"
"/usr/bin/perl" -MExtUtils::Command::MM -e 'cp_nonempty' -- Test_cfd1.bs blib/arch/auto/Test_cfd1/Test_cfd1.bs 644
"/usr/bin/perl" "/usr/share/perl/5.38/ExtUtils/xsubpp"  -typemap "/usr/share/perl/5.38/ExtUtils/typemap"   Test_cfd1.xs > Test_cfd1.xsc
mv Test_cfd1.xsc Test_cfd1.c
x86_64-linux-gnu-gcc -c  -iquote"/home/kali/Documents/perl/raylib" -I/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv -fno-strict-aliasing -pipe -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/x86_64-linux-gnu/perl/5.38/CORE"   Test_cfd1.c
Test_cfd1.xs: In function ‘close_window’:
Test_cfd1.xs:11:22: error: expected expression before ‘void’
   11 |          CloseWindow(void);
      |                      ^~~~
Test_cfd1.xs:11:10: error: too many arguments to function ‘CloseWindow’
   11 |          CloseWindow(void);
      |          ^~~~~~~~~~~
In file included from Test_cfd1.xs:5:
/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include/raylib.h:969:12: note: declared here
  969 | RLAPI void CloseWindow(void);                                     // Close window and unload OpenGL context
      |            ^~~~~~~~~~~
Test_cfd1.xs: In function ‘window_should_close’:
Test_cfd1.xs:15:34: error: expected expression before ‘void’
   15 |         return WindowShouldClose(void);
      |                                  ^~~~
Test_cfd1.xs:15:16: error: too many arguments to function ‘WindowShouldClose’
   15 |         return WindowShouldClose(void);
      |                ^~~~~~~~~~~~~~~~~
/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include/raylib.h:970:12: note: declared here
  970 | RLAPI bool WindowShouldClose(void);                               // Check if application should close (KEY_ESCAPE pressed or windows close icon clicked)
      |            ^~~~~~~~~~~~~~~~~
make: *** [Makefile:338: Test_cfd1.o] Error 1
