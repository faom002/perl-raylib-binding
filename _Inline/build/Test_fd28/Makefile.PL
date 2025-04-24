use ExtUtils::MakeMaker;
my %options = %{
{
  'TYPEMAPS' => [
    '/usr/share/perl/5.38/ExtUtils/typemap'
  ],
  'NAME' => 'Test_fd28',
  'LIBS' => [
    '-L/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/lib -lraylib'
  ],
  'INC' => '-iquote"/home/kali/Documents/perl/raylib" -I/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include',
  'VERSION' => '0.00'
}
};
WriteMakefile(%options);

# Remove the Makefile dependency. Causes problems on a few systems.
sub MY::makefile { '' }
