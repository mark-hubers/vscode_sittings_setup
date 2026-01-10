// Groovy Test File for Theme Visibility Testing
// This file contains various Groovy syntax elements
// TESTWORD: Use Cmd+F to find this TESTWORD throughout the file
// EXAMPLE: This EXAMPLE word appears multiple times for testing

// Variables and types - SAMPLE variable declarations
def simpleString = "Hello World"  // TESTWORD variable
String typedString = "Typed String"  // EXAMPLE typed
def number = 42  // DUPLICATE number
def floatNumber = 3.14  // REPEATED float
def list = [1, 2, 3, 4, 5]  // TESTWORD list
def map = [
    name: "John Doe",  // SAMPLE name
    age: 30,  // EXAMPLE age
    role: "Developer"  // DUPLICATE role
]

// Class definition - REPEATED class EXAMPLE
class Person {
    String name  // TESTWORD property
    int age  // SAMPLE property

    // Constructor - DUPLICATE constructor
    Person(String name, int age) {
        this.name = name  // EXAMPLE assignment
        this.age = age  // REPEATED assignment
    }

    // Method - TESTWORD method
    String greet() {
        return "Hello, I'm ${name} and I'm ${age} years old"
    }

    // Method with default parameter - SAMPLE method
    void celebrateBirthday(int years = 1) {
        age += years  // DUPLICATE increment
        println "Happy Birthday! Now ${age} years old"
    }
}

// Function with closure
def calculateSum = { a, b ->
    return a + b
}

// Function with multiple parameters
def getUserInformation(String username, int maxRetries = 3) {
    println "Getting information for: ${username}"

    // Try-catch block
    try {
        def result = fetchUserData(username)
        return result
    } catch (Exception e) {
        println "Error: ${e.message}"
        return null
    } finally {
        println "Cleanup complete"
    }
}

// Conditional statements
if (number > 40) {
    println "Number is greater than 40"
} else if (number == 40) {
    println "Number is exactly 40"
} else {
    println "Number is less than 40"
}

// Switch statement
switch (simpleString) {
    case "Hello World":
        println "Found greeting!"
        break
    case "Goodbye":
        println "Found farewell!"
        break
    default:
        println "Unknown string"
}

// For loop
for (item in list) {
    println "Processing item: ${item}"
}

// Each with closure
list.each { item ->
    println "Each item: ${item}"
}

// While loop
def counter = 0
while (counter < 5) {
    println "Counter: ${counter}"
    counter++
}

// List operations with closures
def doubled = list.collect { it * 2 }
def filtered = list.findAll { it > 2 }
def sum = list.inject(0) { acc, val -> acc + val }

// String interpolation
def name = "World"
println "Hello ${name}!"
println "Math: ${2 + 2}"

// Regex matching
def pattern = ~/Hello\s\w+/
if (simpleString ==~ pattern) {
    println "Regex matched!"
}

// Map operations
map.each { key, value ->
    println "${key}: ${value}"
}

// Range
def range = 1..10
range.each { println it }

// Multi-line string
def multiline = """
    This is a multi-line string
    It can span multiple lines
    Variable interpolation: ${number}
"""

// Elvis operator
def result = map.role ?: "Unknown"

// Safe navigation operator
def length = simpleString?.length()

// TODO: This is a TODO comment - TESTWORD marker
// FIXME: This is a FIXME comment - EXAMPLE marker
// NOTE: This is a NOTE comment - SAMPLE DUPLICATE REPEATED markers
// TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED - all test words together

/* Multi-line comment
   spanning multiple lines
   for longer descriptions
   TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED */
