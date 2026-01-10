// JavaScript Test File for Theme Visibility Testing
// TESTWORD: Use Cmd+F to find this TESTWORD throughout the file
// EXAMPLE: This EXAMPLE word appears multiple times for testing

// Variables - different types - SAMPLE variable declarations
const simpleString = "Hello World";  // TESTWORD test variable
let number = 42;  // EXAMPLE number
var oldStyleVar = "old style";  // DUPLICATE old var
const array = [1, 2, 3, 4, 5];  // REPEATED array
const object = {
    name: "John Doe",  // SAMPLE name
    age: 30,  // TESTWORD age
    role: "Developer",  // EXAMPLE role
    active: true  // DUPLICATE flag
};

// Arrow functions
const calculateSum = (a, b) => a + b;
const squared = (x) => {
    return x ** 2;
};

// Regular function - DUPLICATE function EXAMPLE
function getUserInformation(username, maxRetries = 3) {
    console.log(`Getting information for: ${username}`);  // TESTWORD output

    // Try-catch block - SAMPLE error handling
    try {
        const result = fetchUserData(username);  // REPEATED call
        return result;
    } catch (error) {
        console.error(`Error: ${error.message}`);  // EXAMPLE error
        return null;
    } finally {
        console.log("Cleanup complete");  // TESTWORD cleanup
    }
}

// Class definition - TESTWORD class EXAMPLE
class Person {
    constructor(name, age) {
        this.name = name;  // SAMPLE property
        this.age = age;  // DUPLICATE property
        this._privateData = [];  // REPEATED private data
    }

    greet() {
        return `Hello, I'm ${this.name} and I'm ${this.age} years old`;  // TESTWORD method
    }

    celebrateBirthday(years = 1) {
        this.age += years;  // EXAMPLE increment
        console.log(`Happy Birthday! Now ${this.age} years old`);
    }

    static createDefault() {
        return new Person("Unknown", 0);
    }

    get isAdult() {
        return this.age >= 18;
    }

    set userAge(age) {
        if (age > 0) this.age = age;
    }
}

// Async/Await
async function fetchData(url) {
    try {
        const response = await fetch(url);
        const data = await response.json();
        return data;
    } catch (error) {
        console.error("Fetch failed:", error);
        throw error;
    }
}

// Promises
function delay(ms) {
    return new Promise((resolve, reject) => {
        if (ms < 0) reject(new Error("Invalid delay"));
        setTimeout(resolve, ms);
    });
}

// Conditional statements
if (number > 40) {
    console.log("Number is greater than 40");
} else if (number === 40) {
    console.log("Number is exactly 40");
} else {
    console.log("Number is less than 40");
}

// Ternary operator
const result = number % 2 === 0 ? "Even" : "Odd";

// Switch statement
switch (simpleString) {
    case "Hello World":
        console.log("Found greeting!");
        break;
    case "Goodbye":
        console.log("Found farewell!");
        break;
    default:
        console.log("Unknown string");
}

// For loops
for (let i = 0; i < array.length; i++) {
    console.log(`Item ${i}: ${array[i]}`);
}

// For...of loop
for (const item of array) {
    console.log(`Processing: ${item}`);
}

// For...in loop
for (const key in object) {
    console.log(`${key}: ${object[key]}`);
}

// Array methods
const doubled = array.map(x => x * 2);
const filtered = array.filter(x => x > 2);
const sum = array.reduce((acc, val) => acc + val, 0);
array.forEach(item => console.log(item));

// Destructuring
const { name, age } = object;
const [first, second, ...rest] = array;

// Spread operator
const newArray = [...array, 6, 7, 8];
const newObject = { ...object, city: "New York" };

// Template literals
const message = `Hello ${name}! You are ${age} years old.`;
const multiline = `
    This is a
    multi-line string
    with ${number} interpolation
`;

// Regular expressions
const pattern = /Hello\s\w+/;
if (pattern.test(simpleString)) {
    console.log("Regex matched!");
}

// Object methods
const keys = Object.keys(object);
const values = Object.values(object);
const entries = Object.entries(object);

// Optional chaining
const city = object?.address?.city ?? "Unknown";

// Nullish coalescing
const port = process.env.PORT ?? 3000;

// Export/Import (ES6 modules)
export { Person, getUserInformation };
export default fetchData;

// Comments
// Single line comment - SAMPLE comment

/* Multi-line comment
   spanning multiple lines
   TESTWORD EXAMPLE DUPLICATE REPEATED
*/

// TODO: Implement additional features - TESTWORD marker
// FIXME: Fix the error handling - EXAMPLE marker
// NOTE: This is important - SAMPLE DUPLICATE REPEATED markers
// TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED - all test words together
