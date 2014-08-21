#include <unit++.h>
#include <string>
#include "../mathutil.h"

using namespace std;
using namespace unitpp;

namespace {
	class MathUtilTests : public suite
	{
		void testIsPrime() 
		{
			assert_true("3 is prime", IsPrime(3));
		}
	public:
		MathUtilTests() : suite("TestFactorial")
		{
			add("IsPrime", testcase(this, "TestPrime", &MathUtilTests::testIsPrime));
			suite::main().add("MathUtilTests", this);
		}
	};
	suite * theTest = new MathUtilTests();
}