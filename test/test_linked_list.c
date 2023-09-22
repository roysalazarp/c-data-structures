#include <criterion/criterion.h>
#include <stdbool.h>

// Include the header file containing the linkedList function declaration
#include "../include/data_structures.h"

// Define a test suite for the linkedList function
Test(hash_table_suite, test_linkedList) {
    // Call the linkedList function
    bool result = linkedList();

    // Assert that the result is true (or any other condition you want to test)
    cr_assert(result == true, "linkedList function should return true");
}