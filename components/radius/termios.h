#ifndef __TERMIOS_H__
#define __TERMIOS_H__
#include <sys/termios.h>


#if 0
#include <stdint.h>

#define NCCS (20)

typedef unsigned char   cc_t;

struct termios {
	uint32_t      c_iflag;
	uint32_t      c_oflag;
	uint32_t      c_cflag;
	uint32_t      c_lflag;
	cc_t            c_cc[NCCS];
	uint32_t      c_ispeed;
	uint32_t      c_ospeed;
};

#define TCSANOW         0
#define TCSADRAIN       1
#define TCSAFLUSH       2

#define ECHO            0x00000008

int tcgetattr(int, struct termios *);
int tcsetattr(int, int, const struct termios *);
#endif
#endif //__TERMIOS_H__
