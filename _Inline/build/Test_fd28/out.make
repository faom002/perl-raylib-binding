Running Mkbootstrap for Test_fd28 ()
chmod 644 "Test_fd28.bs"
"/usr/bin/perl" -MExtUtils::Command::MM -e 'cp_nonempty' -- Test_fd28.bs blib/arch/auto/Test_fd28/Test_fd28.bs 644
"/usr/bin/perl" "/usr/share/perl/5.38/ExtUtils/xsubpp"  -typemap "/usr/share/perl/5.38/ExtUtils/typemap"   Test_fd28.xs > Test_fd28.xsc
mv Test_fd28.xsc Test_fd28.c
x86_64-linux-gnu-gcc -c  -iquote"/home/kali/Documents/perl/raylib" -I/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include -D_REENTRANT -D_GNU_SOURCE -DDEBIAN -fwrapv -fno-strict-aliasing -pipe -I/usr/local/include -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64 -O2 -g   -DVERSION=\"0.00\" -DXS_VERSION=\"0.00\" -fPIC "-I/usr/lib/x86_64-linux-gnu/perl/5.38/CORE"   Test_fd28.c
Test_fd28.xs:8:20: error: redefinition of ‘struct Color’
    8 |     typedef struct Color {
      |                    ^~~~~
In file included from Test_fd28.xs:5:
/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include/raylib.h:247:16: note: originally defined here
  247 | typedef struct Color {
      |                ^~~~~
Test_fd28.xs:13:3: error: conflicting types for ‘Color’; have ‘struct Color’
   13 | } Color;
      |   ^~~~~
/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include/raylib.h:252:3: note: previous declaration of ‘Color’ with type ‘Color’
  252 | } Color;
      |   ^~~~~
Test_fd28.xs: In function ‘ClearBackgroundPerl’:
Test_fd28.xs:29:25: error: incompatible type for argument 1 of ‘ClearBackground’
   29 |         ClearBackground(color);
      |                         ^~~~~
      |                         |
      |                         int
/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include/raylib.h:1027:34: note: expected ‘Color’ but argument is of type ‘int’
 1027 | RLAPI void ClearBackground(Color color);                          // Set background color (framebuffer clear color)
      |                            ~~~~~~^~~~~
Test_fd28.xs: In function ‘DrawTextPerl’:
Test_fd28.xs:33:36: error: incompatible type for argument 5 of ‘DrawText’
   33 |         DrawText(text, x, y, size, color);
      |                                    ^~~~~
      |                                    |
      |                                    int
/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include/raylib.h:1474:79: note: expected ‘Color’ but argument is of type ‘int’
 1474 | RLAPI void DrawText(const char *text, int posX, int posY, int fontSize, Color color);       // Draw text (using default font)
      |                                                                         ~~~~~~^~~~~
make: *** [Makefile:338: Test_fd28.o] Error 1
