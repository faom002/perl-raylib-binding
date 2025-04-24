# Raylib Perl Binding

This is a simple Perl binding for [raylib](https://www.raylib.com/), a C library for games and multimedia applications.  
It lets you use raylib functions in Perl without having to write your own C bindings.

## Features

This module currently supports a basic subset of the raylib API:
- `InitWindow(width, height, title)`
- `CloseWindow()`
- `WindowShouldClose()`
- `BeginDrawing()`
- `EndDrawing()`

More functionality can be added over time, or feel free to extend it yourself.

## Requirements

- Perl with `Inline::C` module
- raylib 5.5 compiled and available locally
- Linux system (paths are hardcoded for Linux in this example)

## Installation

There’s no installation required — just make sure the paths to your raylib `lib` and `include` directories are correct in the script.

Edit the following lines in `Test.pm` if needed:

```perl
LIBS => '-L/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/lib -lraylib',
INC  => '-I/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include';
```

## Usage

Here’s how you might use it in a simple Perl script:

```perl
use Test;

Test::init_window(800, 600, "Hello from Perl!");

while (!Test::window_should_close()) {
    Test::begin_drawing();
    # Your drawing code here
    Test::end_drawing();
}

Test::close_window();
```

## License

This project follows the license of raylib (zlib/libpng), and you are free to modify and distribute this Perl binding as you like.

---

## Notes

This is a work-in-progress binding and currently minimal. It's meant to help Perl devs use raylib without manually creating C interfaces. Contributions or suggestions are welcome!

