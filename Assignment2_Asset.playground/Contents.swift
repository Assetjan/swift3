/*  Assignment #2 — Swift Fundamentals
    Student: Asset Ziyabek
    Group: SE-2413
*/


func section(_ title: String) {
    print("\n==================== \(title) ====================")
}



section("Part 1 — Comments in Swift")

// Single-line comment

/* Multi-line comment (/* ... */)
 describing the file purpose:
 */

/// Documentation comment
/// Returns a short description of what this assignment practices.

section("Part 2 — Variables, Constants, and Naming Conventions")

// Constant (immutable)
let maxLoginAttempts = 3

// Variable (mutable)
var currentAttempts = 0
currentAttempts += 1

// camelCase
let studentName = "Asset Ziyabek"

// PascalCase
struct StudentProfile {
    let id: Int
    let name: String
}

let profile = StudentProfile(id: 1, name: studentName)
print("maxLoginAttempts:", maxLoginAttempts)
print("currentAttempts:", currentAttempts)
print("profile:", profile)

// Poor variable name rename example:
var itemCount = 10
print("itemCount:", itemCount)

section("Part 3 —Data Types and Type Safety")

// Explicit and inferred types:
let courseName: String = "Swift"   // String
let year = 2025     // Int
let averageGrade: Double = 87.5    // Double
let isPassed = true   // Bool
let gradeLetter: Character = "A"   // Character

print("courseName:", courseName)
print("year:", year)
print("averageGrade:", averageGrade)
print("isPassed:", isPassed)
print("gradeLetter:", gradeLetter)


print("Course: \(courseName), year: \(year), grade: \(averageGrade), passed: \(isPassed)")

section("Part 4 — Operators (Arithmetic, Comparison, Assignment, Logical, Ranges)")

var a = 12
var b = 5

// Arithmetic:
print("a + b =", a + b)
print("a - b =", a - b)
print("a * b =", a * b)
print("a / b =", a / b)
print("a % b =", a % b)

// Comparison:
print("a > b =", a > b)
print("a == b =", a == b)
print("a != b =", a != b)

// Compound assignment:
a += 3
print("a after a += 3 ->", a)

// Logical:
let hasID = true
let isAdult = false
print("hasID && isAdult =", hasID && isAdult)
print("hasID || isAdult =", hasID || isAdult)
print("!hasID =", !hasID)

// Ranges demo:
print("Range 1...5 (includes 5):")
for i in 1...5 { print(i, terminator: " ") }
print("\nRange 0..<5 (excludes 5):")
for i in 0..<5 { print(i, terminator: " ") }
print()

section("Part 5 — Conditional Statements (if-else, switch)")

// A) Human status by age
var age = 12
if age < 13 {
    print("Age:", age, "-> Child")
} else if age < 18 {
    print("Age:", age, "-> Teenager")
} else {
    print("Age:", age, "-> Adult")
}

// B) Temperature label
var temperature = 20
if temperature < 0 {
    print("Temp:", temperature, "-> Freezing")
} else if temperature <= 15 {
    print("Temp:", temperature, "-> Cold")
} else if temperature <= 30 {
    print("Temp:", temperature, "-> Warm")
} else {
    print("Temp:", temperature, "-> Hot")
}

// C) Traffic signal using switch
var signalColor = "Red"
switch signalColor {
case "Red":
    print("Signal:", signalColor, "-> Stop")
case "Yellow":
    print("Signal:", signalColor, "-> Wait")
case "Green":
    print("Signal:", signalColor, "-> Go")
default:
    print("Signal:", signalColor, "-> Invalid signal")
}

// D) Student grade using switch with ranges
var score: Double = 88
switch score {
case 0..<50:
    print("Score:", score, "-> Fail")
case 50..<75:
    print("Score:", score, "-> Pass")
case 75..<90:
    print("Score:", score, "-> Good")
case 90...100:
    print("Score:", score, "-> Excellent")
default:
    print("Score:", score, "-> Invalid score")
}


section("Part 6 — Loops (for-in, while, repeat-while)")

// A) Print 1–10
print("Numbers 1–10:")
for i in 1...10 {
    print(i, terminator: " ")
}
print()


// B) Multiplication table
let number = 7
print("Multiplication table for \(number):")
for i in 1...10 {
    print("\(number) x \(i) = \(number * i)")
}

// C) Countdown using while
var countdown = 5
while countdown >= 1 {
    print(countdown)
    countdown -= 1
}
print("Lift off!")

// D) Simulate login attempts with repeat-while
let maxAttempts = 3
var attempts = 0
var isLoggedIn = false

repeat {
    attempts += 1
    if attempts == 2 { isLoggedIn = true }

    print("Attempt \(attempts): success = \(isLoggedIn)")
} while !isLoggedIn && attempts < maxAttempts

// E) break & continue — print odd numbers 1..20
print("Odd numbers 1..20:")
for i in 1...20 {
    if i % 2 == 0 { continue }  // skip evens
    print(i, terminator: " ")
}
print()
