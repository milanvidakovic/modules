#include <stdio.h>
#include <consts.h>

int main()
{
	int vkp, vkr;
	printf("\nKeys test\n");
	do {
		vkp = is_key_pressed();
		vkr = is_key_released();
		if (vkp != 0) 
		{
			printf("pressed %d\n", vkp);
		} 
		else if (vkr != 0)
		{
			printf("released %d\n", vkr);
		}
	} while (vkp != VK_ESC);
}