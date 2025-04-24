package Test;
use Inline C => Config =>
    LIBS => '-L/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/lib -lraylib',
    INC  => '-I/home/kali/Documents/perl/raylib/raylib-5.5_linux_amd64/include';

use Inline C => <<'END_OF_C_CODE';
    #include "raylib.h"
    
    void init_window(int width, int height, const char *title){
	InitWindow(width,height,title);
    }

    void close_window(){
	 CloseWindow();
    }



    bool window_should_close(){
    	return WindowShouldClose();                              
    }

    void begin_drawing(){
	    BeginDrawing();
    }

    void end_drawing(){
	    EndDrawing();
    }

END_OF_C_CODE
1;







