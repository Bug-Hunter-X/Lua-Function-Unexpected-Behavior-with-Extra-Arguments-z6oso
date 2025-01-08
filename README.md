# Lua Function Unexpected Behavior with Extra Arguments

This repository demonstrates an uncommon bug in Lua related to function argument handling.  The `foo` function is defined to accept a single argument. However, when called with more than one argument, it doesn't throw an error but only uses the first argument, which might lead to unexpected behavior and hidden bugs in larger applications.  The solution shows how to handle this situation gracefully using the `select` function.

## Bug

The `bug.lua` file contains the buggy code.  The function `foo` unexpectedly ignores extra arguments, only using the first argument provided. This could lead to silent failures and difficult-to-debug issues in larger projects. 

## Solution

The `bugSolution.lua` file provides a fix that utilizes Lua's `select` function to handle an undefined number of arguments and provide better error handling.