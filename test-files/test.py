#!/usr/bin/env python3
"""
Python Test File for Theme Visibility Testing
This file contains various Python syntax elements
TESTWORD: Use Cmd+F to find this TESTWORD throughout the file
EXAMPLE: This EXAMPLE word appears multiple times for testing
"""

import os
import sys
from typing import List, Dict, Optional, Union
from datetime import datetime

# Variables and types - TESTWORD for highlighting tests
simple_string: str = "Hello World"
number: int = 42  # EXAMPLE number variable
float_number: float = 3.14
list_data: List[int] = [1, 2, 3, 4, 5]
dict_data: Dict[str, Union[str, int]] = {
    "name": "John Doe",
    "age": 30,
    "role": "Developer"
}

# Constants - SAMPLE configuration values
CONFIG_FILE = "/etc/myapp/config.conf"  # SAMPLE config path
MAX_RETRIES = 3  # DUPLICATE this word appears multiple times


# Class definition - TESTWORD class EXAMPLE
class Person:
    """A class representing a person. DUPLICATE class for testing."""

    def __init__(self, name: str, age: int):
        """Initialize a Person instance. SAMPLE initialization.

        Args:
            name: The person's name
            age: The person's age
        """
        self.name = name
        self.age = age
        self._private_data = []  # REPEATED word test

    def greet(self) -> str:
        """Return a greeting message. TESTWORD method EXAMPLE."""
        return f"Hello, I'm {self.name} and I'm {self.age} years old"

    def celebrate_birthday(self, years: int = 1) -> None:
        """Celebrate birthday and increment age. SAMPLE method.

        Args:
            years: Number of years to add (default: 1)
        """
        self.age += years  # REPEATED increment operation
        print(f"Happy Birthday! Now {self.age} years old")

    @property
    def is_adult(self) -> bool:
        """Check if person is an adult."""
        return self.age >= 18

    @staticmethod
    def create_default() -> 'Person':
        """Create a default person instance."""
        return Person("Unknown", 0)


# Function with type hints - DUPLICATE function EXAMPLE
def get_user_information(username: str, max_retries: int = 3) -> Optional[Dict]:
    """Get user information from database. TESTWORD function.

    Args:
        username: The username to look up (SAMPLE parameter)
        max_retries: Maximum number of retry attempts (REPEATED setting)

    Returns:
        User data dictionary or None if not found

    Raises:
        ValueError: If username is empty
    """
    print(f"Getting information for: {username}")  # EXAMPLE output

    # Try-except block
    try:
        result = fetch_user_data(username)
        return result
    except ConnectionError as e:
        print(f"Connection error: {e}")
        return None
    except ValueError as e:
        print(f"Value error: {e}")
        raise
    except Exception as e:
        print(f"Unexpected error: {e}")
        return None
    finally:
        print("Cleanup complete")


# Conditional statements
if number > 40:
    print("Number is greater than 40")
elif number == 40:
    print("Number is exactly 40")
else:
    print("Number is less than 40")

# Ternary operator
result = "Even" if number % 2 == 0 else "Odd"

# Match statement (Python 3.10+)
match simple_string:
    case "Hello World":
        print("Found greeting!")
    case "Goodbye":
        print("Found farewell!")
    case _:
        print("Unknown string")

# For loop
for item in list_data:
    print(f"Processing item: {item}")

# List comprehension
doubled = [x * 2 for x in list_data]
filtered = [x for x in list_data if x > 2]

# Dictionary comprehension
squared = {x: x**2 for x in range(5)}

# While loop
counter = 0
while counter < 5:
    print(f"Counter: {counter}")
    counter += 1

# With statement (context manager)
with open("file.txt", "w") as f:
    f.write("Hello World")

# Lambda functions
calculate_sum = lambda a, b: a + b
squared_func = lambda x: x ** 2

# Decorator
def timing_decorator(func):
    """A decorator to time function execution."""
    def wrapper(*args, **kwargs):
        start = datetime.now()
        result = func(*args, **kwargs)
        end = datetime.now()
        print(f"Execution time: {end - start}")
        return result
    return wrapper

@timing_decorator
def slow_function():
    """A function decorated with timing."""
    import time
    time.sleep(1)

# Generator
def fibonacci(n):
    """Generate Fibonacci sequence up to n terms."""
    a, b = 0, 1
    for _ in range(n):
        yield a
        a, b = b, a + b

# F-strings with expressions
name = "World"
print(f"Hello {name}!")
print(f"Math: {2 + 2}")
print(f"List: {list_data}")

# TODO: This is a TODO comment - TESTWORD marker
# FIXME: This is a FIXME comment - EXAMPLE marker
# NOTE: This is a NOTE comment - SAMPLE marker
# BUG: This is a BUG comment - DUPLICATE marker

"""
Multi-line string / docstring
Can be used for longer descriptions
or commenting out blocks of code
REPEATED: Test word for find/match highlighting
TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED - all test words together
"""
