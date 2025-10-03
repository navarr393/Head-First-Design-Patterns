# Head First Design Patterns - Dart Examples

This repository contains Dart implementations of the classic design patterns from **"Head First Design Patterns"** by Eric Freeman and Elisabeth Robson. The original examples in the book are written in Java, and this repository translates them to Dart while preserving the core concepts and learning objectives.

## About the Book

"Head First Design Patterns" is a comprehensive guide to object-oriented design patterns that uses engaging examples and clear explanations to teach fundamental software design principles. This repository serves as a companion for Dart developers who want to learn these patterns in their preferred language.

## Repository Structure

Each chapter from the book will be implemented as separate files or directories:

- **Chapter 1 - Strategy Pattern**: `duck.dart` - The classic duck simulation demonstrating composition over inheritance
- **More chapters coming soon...**

## Current Implementations

### Chapter 1: Strategy Pattern (`duck.dart`)
The famous duck example that introduces:
- **Problem**: How inheritance can lead to inappropriate behavior sharing
- **Definition**: Defines a family of algorithms, encapsultes each one and makes them interchangable. Strategy lets the algorithm vary idependently from clients that use it.
- **Solution**: Strategy Pattern using composition and interfaces
- **Key Concepts**: 
  - Encapsulating behaviors as separate classes
  - Runtime behavior changes
  - Composition over inheritance
  - IS-A vs HAS-A relationships

## Chapter 2: Observer Pattern
- **Definition**: The Observer Pattern defines a one-to-many dependency between objects so that when one object changes state, all of its dependents are notified and updated automatically.
- **Key Concepts**: 
  - Strive for loosely coupled designs between objects that interact.
  - Loosley coupled objects are objects that are not dependent of other objects.

## Running the Examples

To run the complete Strategy Pattern example:

```bash
dart run mini_duck_simulator.dart
```

## Java to Dart Translation Notes

Key differences when translating from Java to Dart:

- **Interfaces**: Java `interface` becomes Dart `abstract class`
- **Access Modifiers**: Dart uses `_` for private members instead of Java's `private` keyword
- **Constructors**: Dart's constructor syntax is more concise
- **Method Syntax**: Dart supports arrow functions for single-expression methods
- **Type System**: Dart has sound null safety (enabled by default)

## Learning Objectives

Each pattern implementation demonstrates:

1. **The Problem**: What design issue the pattern solves
2. **The Solution**: How the pattern addresses the problem
3. **Key Principles**: Design principles illustrated by the pattern
4. **Real-world Applications**: Where you might use this pattern

## Design Principles Covered

- Encapsulate what varies
- Favor composition over inheritance  
- Program to interfaces, not implementations
- Strive for loosely coupled designs between objects that interact

## Contributing

This is a learning repository focused on translating the book's examples to Dart. Each implementation aims to:
- Stay true to the original example's intent
- Use idiomatic Dart code
- Include clear comments explaining the pattern concepts
- Demonstrate the same learning objectives as the Java originals

## Credits

All examples are based on "Head First Design Patterns" by Eric Freeman and Elisabeth Robson. This repository is purely educational and serves as a Dart translation of their excellent work.