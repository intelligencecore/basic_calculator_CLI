//
//  main.swift
//  basic_calculator_cli
//
//  Created by Richie on 4/6/25.
//

import Foundation

// Build a calculator app in the terminal that asks the user to input two numbers and an operation (add, subtract, multiply, divide), performs the calculation, and prints the result.

print(" Welcome to the Basic Calculator CLI! ") // welcome message

// Ask for a valid operation
print("What operation do you wanna do (+, -, *, /)?")
guard let operation = readLine(), ["+", "-", "*", "/"].contains(operation) else {
    print("That is not a valid operation, you must try again...")
    exit(1)
}

// Ask for two numbers
print("Now, provide the first number please:")
guard let num1Input = readLine(), let num1 = Double(num1Input) else {
    print("Invalid first number.")
    exit(1)
}

print("Great! Now provide the second number:")
guard let num2Input = readLine(), let num2 = Double(num2Input) else {
    print("Invalid second number.")
    exit(1)
}

print("Calculating...")

let result: Double
switch operation {
case "+":
    result = num1 + num2
case "-":
    result = num1 - num2
case "*":
    result = num1 * num2
case "/":
    if num2 == 0 {
        print("Cannot divide by zero.")
        exit(1)
    }
    result = num1 / num2
default:
    print("Something went wrong.")
    exit(1)
}

print("Result: \(num1) \(operation) \(num2) = \(result)")
