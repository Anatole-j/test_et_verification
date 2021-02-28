#include "stdio.h"
#include "stdlib.h"
#include "math.h"
#include <assert.h>
#include "pgcd.hpp"
#define CATCH_CONFIG_MAIN
#include "catch.hpp"



TEST_CASE( "cas normaux", "[pgcd]" ) {
	
	
	SECTION( "A>B") {
        REQUIRE( PGCD(135, 55) == 5 );
		REQUIRE( PGCD(133, 97) == 1 );
    }
	/*SECTION( "A<B") {
        REQUIRE( PGCD(100, 1000) == 101 );
		REQUIRE( PGCD(70, 110) == 10 );
    }
	SECTION( "A=B" ){
		REQUIRE(PGCD(33, 33) == 33);
	}*/
}

/*TEST_CASE( "cas particuliers", "[pgcd]" ) {
	REQUIRE( PGCD(0, 55) == 55 );
	REQUIRE( PGCD(135, 0) == 135 );
}*/