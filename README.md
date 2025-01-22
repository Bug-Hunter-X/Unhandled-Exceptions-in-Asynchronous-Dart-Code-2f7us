# Unhandled Exceptions in Asynchronous Dart Code

This repository demonstrates a common issue in Dart asynchronous programming: inadequate exception handling.  The `bug.dart` file shows code that fetches data from a remote API but doesn't handle specific exception types effectively.  The improved solution in `bugSolution.dart` addresses these shortcomings, enhancing the app's resilience.

## Problem

The initial code catches general exceptions but doesn't differentiate between different error types. This makes debugging and user feedback difficult. For example, a network error is treated the same as a JSON decoding error.