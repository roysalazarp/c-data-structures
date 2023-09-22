#include <criterion/criterion.h>
#include <stdbool.h>

// Include the header file containing the hashTable function declaration
#include "../include/data_structures.h"

// Define a test suite for the hashTable function
Test(hash_table_suite, test_hashTable) {
    // Call the hashTable function
    bool result = hashTable();

    // Assert that the result is true (or any other condition you want to test)
    cr_assert(result == true, "hashTable function should return true");
}