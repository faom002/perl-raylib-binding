use ExtUtils::MakeMaker;
my %options = %{
{
  'VERSION' => '0.00',
  'TYPEMAPS' => [
    '/usr/share/perl/5.38/ExtUtils/typemap'
  ],
  'INC' => '-iquote"/home/kali/Documents/perl/raylib" -I/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include',
  'LIBS' => [
    '-L/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/lib -lraylib'
  ],
  'NAME' => 'Test_cfd1'
}
};
WriteMakefile(%options);

# Remove the Makefile dependency. Causes problems on a few systems.
sub MY::makefile { '' }
