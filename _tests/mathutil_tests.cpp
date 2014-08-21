#include <unit++.h>
#include <string>
using namespace std;
using namespace unitpp;

namespace {
	class YourTest : public suite
	{
		void testEmptyString() 
		{
			string joe;
			assert_eq("length check", (unsigned int) 0, joe.length() );  // parameter order: text, expected, actual
			assert_eq("content check", "", joe);
		}
	public:
		YourTest() : suite("YourFirstTest")
		{
			add("EmptyString", testcase(this, "TestEmptyString", &YourTest::testEmptyString));
			suite::main().add("YourTestSuite", this);
		}
	};
	suite * theTest = new YourTest();
}