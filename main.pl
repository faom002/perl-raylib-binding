#!/usr/bin/perl
use strict;
use warnings;
use v5.12;

use lib '/home/kali/Documents/perl/raylib';
use Test; 


Test::init_window(500,500,"hello world");

while (!Test::window_should_close()) {
    Test::begin_drawing();
    Test::end_drawing();
}

Test::CloseWindow();
