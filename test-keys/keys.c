#include <stdio.h>
#include <consts.h>

int main()
{
	int vk;
	printf("\nKeys test\n");
	do {
		vk = getc();
		printf("Hello World %d\n", vk);
	} while (vk != VK_ESC);
}