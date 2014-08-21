#include <iostream>
#include "mathutil.h"

using namespace std;

int main(int argc, char *argv[])
{
	int nums [] = { 3424, 25435, 5435, 6543654 };

	for(int i = 0; i < sizeof(nums); i++)
	{
		printf("Is %d Prime? %s\n", nums[i], IsPrime(nums[i]) == 0 ? "YES!" : "no...");
	}

	printf("All done");
	return 0;
}