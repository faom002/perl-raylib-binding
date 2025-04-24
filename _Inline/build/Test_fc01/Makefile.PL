use ExtUtils::MakeMaker;
my %options = %{
{
  'NAME' => 'Test_fc01',
  'INC' => '-iquote"/home/kali/Documents/perl/raylib" -I/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include',
  'VERSION' => '0.00',
  'LIBS' => [
    '-L/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/lib -lraylib'
  ],
  'TYPEMAPS' => [
    '/usr/share/perl/5.38/ExtUtils/typemap'
  ]
}
};
WriteMakefile(%options);

# Remove the Makefile dependency. Causes problems on a few systems.
sub MY::makefile { '' }
