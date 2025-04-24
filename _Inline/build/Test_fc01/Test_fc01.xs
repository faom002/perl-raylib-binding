#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include "INLINE.h"
    #include "raylib.h"

    void InitWindowPerl(int width, int height, const char *title) {
        InitWindow(width, height, title);
    }

    int WindowShouldClosePerl() {
        return WindowShouldClose();
    }

    void BeginDrawingPerl() {
        BeginDrawing();
    }

    void ClearBackgroundPerl(int color) {
        ClearBackground(color);
    }

    void DrawTextPerl(const char *text, int x, int y, int size, int color) {
        DrawText(text, x, y, size, color);
    }

    void EndDrawingPerl() {
        EndDrawing();
    }

    void CloseWindowPerl() {
        CloseWindow();
    }

MODULE = Test_fc01  PACKAGE = Test  

PROTOTYPES: DISABLE


void
InitWindowPerl (width, height, title)
	int	width
	int	height
	const char *	title
        PREINIT:
        I32* temp;
        PPCODE:
        temp = PL_markstack_ptr++;
        InitWindowPerl(width, height, title);
        if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
          PL_markstack_ptr = temp;
          XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
        return; /* assume stack size is correct */

int
WindowShouldClosePerl ()

void
BeginDrawingPerl ()
        PREINIT:
        I32* temp;
        PPCODE:
        temp = PL_markstack_ptr++;
        BeginDrawingPerl();
        if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
          PL_markstack_ptr = temp;
          XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
        return; /* assume stack size is correct */

void
ClearBackgroundPerl (color)
	int	color
        PREINIT:
        I32* temp;
        PPCODE:
        temp = PL_markstack_ptr++;
        ClearBackgroundPerl(color);
        if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
          PL_markstack_ptr = temp;
          XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
        return; /* assume stack size is correct */

void
DrawTextPerl (text, x, y, size, color)
	const char *	text
	int	x
	int	y
	int	size
	int	color
        PREINIT:
        I32* temp;
        PPCODE:
        temp = PL_markstack_ptr++;
        DrawTextPerl(text, x, y, size, color);
        if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
          PL_markstack_ptr = temp;
          XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
        return; /* assume stack size is correct */

void
EndDrawingPerl ()
        PREINIT:
        I32* temp;
        PPCODE:
        temp = PL_markstack_ptr++;
        EndDrawingPerl();
        if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
          PL_markstack_ptr = temp;
          XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
        return; /* assume stack size is correct */

void
CloseWindowPerl ()
        PREINIT:
        I32* temp;
        PPCODE:
        temp = PL_markstack_ptr++;
        CloseWindowPerl();
        if (PL_markstack_ptr != temp) {
          /* truly void, because dXSARGS not invoked */
          PL_markstack_ptr = temp;
          XSRETURN_EMPTY; /* return empty stack */
        }
        /* must have used dXSARGS; list context implied */
        return; /* assume stack size is correct */

