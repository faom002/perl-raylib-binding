#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "INLINE.h"
    #include "raylib.h"
    void init_window(int width, int height, const char *title){
	InitWindow(width,height,title);
    }

    void close_window(){
	 CloseWindow(void);
    }

    bool window_should_close(){
    	return WindowShouldClose(void);                              
    }

MODULE = Test_cfd1  PACKAGE = Test  

PROTOTYPES: DISABLE


void
init_window (width, height, title)
	int	width
	int	height
	const char *	title
        PREINIT:
        I32* temp;
        PPCODE:
        temp = PL_markstack_ptr++;
        init_window(width, height, title);
        if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
          PL_markstack_ptr = temp;
          XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
        return; /* assume stack size is correct */

void
close_window ()
        PREINIT:
        I32* temp;
        PPCODE:
        temp = PL_markstack_ptr++;
        close_window();
        if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
          PL_markstack_ptr = temp;
          XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
        return; /* assume stack size is correct */

bool
window_should_close ()

