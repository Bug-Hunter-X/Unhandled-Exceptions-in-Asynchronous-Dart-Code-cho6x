# Unhandled Exceptions in Asynchronous Dart

This repository demonstrates a potential issue with unhandled exceptions in asynchronous Dart code and provides a solution.

The `bug.dart` file contains code that fetches data from a URL.  While it includes a `try-catch` block, there might be situations where exceptions are not fully handled leading to unexpected program behavior.

The `bugSolution.dart` file offers improved error handling, ensuring better robustness.

## How to Reproduce the Bug

1.  Run the `bug.dart` file.
2. Simulate network error (disconnect your internet or provide an invalid url).
3. Observe that the error message is printed, but the program doesn't necessarily halt gracefully.  The exception may be lost if not explicitly handled at a higher level.

## Solution

The `bugSolution.dart` file shows how to properly re-throw exceptions to provide more robust error handling.