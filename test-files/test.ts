// TypeScript Test File for Theme Visibility Testing
// TESTWORD: Use Cmd+F to find this TESTWORD throughout the file
// EXAMPLE: This EXAMPLE word appears multiple times for testing

// Type definitions - SAMPLE type declarations
type UserRole = "admin" | "user" | "guest";  // TESTWORD type
type Nullable<T> = T | null;  // EXAMPLE generic type

interface Address {  // DUPLICATE interface
    street: string;  // REPEATED property
    city: string;  // SAMPLE property
    state: string;  // TESTWORD property
    zip: string;  // EXAMPLE property
}

interface User {  // TESTWORD interface
    name: string;  // SAMPLE field
    age: number;  // DUPLICATE field
    email: string;  // REPEATED field
    role: UserRole;  // EXAMPLE role
    address?: Address;  // TESTWORD optional
    readonly id: number;  // DUPLICATE readonly
}

// Variables with types - SAMPLE variable declarations
const simpleString: string = "Hello World";  // TESTWORD string
const number: number = 42;  // EXAMPLE number
const isActive: boolean = true;  // DUPLICATE boolean
const array: number[] = [1, 2, 3, 4, 5];  // REPEATED array
const tuple: [string, number] = ["Alice", 30];  // TESTWORD tuple

const user: User = {
    id: 1,
    name: "John Doe",
    age: 30,
    email: "john@example.com",
    role: "admin",
    address: {
        street: "123 Main St",
        city: "Springfield",
        state: "IL",
        zip: "62701"
    }
};

// Generic function
function identity<T>(arg: T): T {
    return arg;
}

function getFirstElement<T>(arr: T[]): T | undefined {
    return arr[0];
}

// Function with type annotations
function calculateSum(a: number, b: number): number {
    return a + b;
}

async function fetchUserData(userId: number): Promise<User | null> {
    try {
        const response = await fetch(`/api/users/${userId}`);
        const data: User = await response.json();
        return data;
    } catch (error) {
        console.error("Fetch failed:", error);
        return null;
    }
}

// Class with TypeScript features
class Person implements User {
    readonly id: number;
    name: string;
    age: number;
    email: string;
    role: UserRole;
    address?: Address;
    private _privateData: string[] = [];

    constructor(
        id: number,
        name: string,
        age: number,
        email: string,
        role: UserRole = "user"
    ) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.email = email;
        this.role = role;
    }

    greet(): string {
        return `Hello, I'm ${this.name}`;
    }

    celebrateBirthday(years: number = 1): void {
        this.age += years;
        console.log(`Now ${this.age} years old`);
    }

    get isAdult(): boolean {
        return this.age >= 18;
    }

    set userAge(age: number) {
        if (age > 0) this.age = age;
    }

    static createDefault(): Person {
        return new Person(0, "Unknown", 0, "unknown@example.com");
    }
}

// Abstract class
abstract class Animal {
    constructor(public name: string) {}

    abstract makeSound(): string;

    move(distance: number = 0): void {
        console.log(`${this.name} moved ${distance}m`);
    }
}

class Dog extends Animal {
    constructor(name: string) {
        super(name);
    }

    makeSound(): string {
        return "Woof!";
    }
}

// Enum
enum Status {
    Pending = "PENDING",
    Approved = "APPROVED",
    Rejected = "REJECTED"
}

enum Direction {
    Up = 1,
    Down,
    Left,
    Right
}

// Union types
type StringOrNumber = string | number;
type Result = { success: true; data: User } | { success: false; error: string };

// Type guards
function isString(value: unknown): value is string {
    return typeof value === "string";
}

function processValue(value: StringOrNumber): void {
    if (typeof value === "string") {
        console.log(value.toUpperCase());
    } else {
        console.log(value.toFixed(2));
    }
}

// Utility types
type PartialUser = Partial<User>;
type RequiredUser = Required<User>;
type ReadonlyUser = Readonly<User>;
type UserKeys = keyof User;
type UserName = Pick<User, "name" | "email">;
type UserWithoutId = Omit<User, "id">;

// Mapped types
type Optional<T> = {
    [P in keyof T]?: T[P];
};

type Flags<T> = {
    [P in keyof T]: boolean;
};

// Conditional types
type NonNullable<T> = T extends null | undefined ? never : T;
type ArrayElement<T> = T extends (infer E)[] ? E : never;

// Decorators (if enabled)
function log(target: any, propertyKey: string, descriptor: PropertyDescriptor) {
    const originalMethod = descriptor.value;
    descriptor.value = function (...args: any[]) {
        console.log(`Calling ${propertyKey} with`, args);
        return originalMethod.apply(this, args);
    };
}

class Calculator {
    @log
    add(a: number, b: number): number {
        return a + b;
    }
}

// Namespace
namespace Utils {
    export function formatCurrency(amount: number): string {
        return `$${amount.toFixed(2)}`;
    }

    export function formatDate(date: Date): string {
        return date.toISOString().split("T")[0];
    }
}

// Module augmentation
declare global {
    interface Window {
        myCustomProperty: string;
    }
}

// Conditional rendering example
const renderUser = (user: User | null): string => {
    return user ? user.name : "Guest";
};

// Array methods with types
const numbers: number[] = [1, 2, 3, 4, 5];
const doubled: number[] = numbers.map((x) => x * 2);
const filtered: number[] = numbers.filter((x) => x > 2);
const sum: number = numbers.reduce((acc, val) => acc + val, 0);

// Async iterator
async function* generateSequence(start: number, end: number): AsyncGenerator<number> {
    for (let i = start; i <= end; i++) {
        await new Promise((resolve) => setTimeout(resolve, 100));
        yield i;
    }
}

// Type assertion
const someValue: unknown = "this is a string";
const strLength: number = (someValue as string).length;

// Non-null assertion
function processUser(user: User | null): string {
    return user!.name; // Asserts user is not null
}

// TODO: Add more user types - TESTWORD marker
// FIXME: Handle edge cases in processValue - EXAMPLE marker
// NOTE: Consider using discriminated unions for Result type - SAMPLE DUPLICATE REPEATED markers
// TESTWORD EXAMPLE SAMPLE DUPLICATE REPEATED - all test words together
