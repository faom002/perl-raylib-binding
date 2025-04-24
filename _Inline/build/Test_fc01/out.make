Running Mkbootstrap for Test_fc01 ()
chmod 644 "Test_fc01.bs"
"/usr/bin/perl" -MExtUtils::Command::MM -e 'cp_nonempty' -- Test_fc01.bs blib/arch/auto/Test_fc01/Test_fc01.bs 644
"/usr/bin/perl" "/usr/share/perl/5.38/ExtUtils/xsubpp"  -typemap "/usr/share/perl/5.38/ExtUtils/typemap"   Test_fc01.xs > Test_fc01.xsc
mv Test_fc01.xsc Test_fc01.c
x86_64-linux-gnu-gcc -c  -iquote"/home/kali/Documents/perl/raylib" -I/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv -fno-strict-aliasing -pipe -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/x86_64-linux-gnu/perl/5.38/CORE"   Test_fc01.c
Test_fc01.xs: In function ‘ClearBackgroundPerl’:
Test_fc01.xs:20:25: error: incompatible type for argument 1 of ‘ClearBackground’
   20 |         ClearBackground(color);
      |                         ^~~~~
      |                         |
      |                         int
In file included from Test_fc01.xs:5:
/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include/raylib.h:1027:34: note: expected ‘Color’ but argument is of type ‘int’
 1027 | RLAPI void ClearBackground(Color color);                          // Set background color (framebuffer clear color)
      |                            ~~~~~~^~~~~
Test_fc01.xs: In function ‘DrawTextPerl’:
Test_fc01.xs:24:36: error: incompatible type for argument 5 of ‘DrawText’
   24 |         DrawText(text, x, y, size, color);
      |                                    ^~~~~
      |                                    |
      |                                    int
/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include/raylib.h:1474:79: note: expected ‘Color’ but argument is of type ‘int’
 1474 | RLAPI void DrawText(const char *text, int posX, int posY, int fontSize, Color color);       // Draw text (using default font)
      |                                                                         ~~~~~~^~~~~
make: *** [Makefile:338: Test_fc01.o] Error 1
