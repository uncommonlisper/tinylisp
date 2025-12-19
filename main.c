#include <stdio.h>
#include <stdlib.h>

#include <readline/readline.h>
#include <readline/history.h>

#include "mpc.h"

#define BUFFER_SIZE 1024

int
main (void)
{
	char *input;

	for (;;)
	{
		input = readline("tinylisp> ");
		add_history (input);
		(void) printf ("%s\n", input);
		free (input);
	}

	return 0;
}
