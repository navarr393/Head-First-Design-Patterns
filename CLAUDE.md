# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains Dart implementations of classic design patterns from "Head First Design Patterns" by Eric Freeman and Elisabeth Robson. It serves as an educational resource translating Java examples to idiomatic Dart while preserving core design concepts.

## Development Commands

This is a simple Dart project without package configuration. Run examples directly:

```bash
# Strategy Pattern - Duck Simulator
dart run Chapter_1/mini_duck_simlulator.dart

# Strategy Pattern - Adventure Game
dart run Chapter_1/Adventure_Game/run_simulator.dart
```

## Code Architecture

### Chapter Structure
- **Chapter_1/**: Strategy Pattern implementations
  - Duck simulator (main example)
  - Adventure game (design puzzle)
- **Chapter_2/**: Observer Pattern (in progress)

### Strategy Pattern Architecture (Chapter_1/)

#### Duck Simulator
- **Abstract Context**: `Duck` class uses composition with behavior interfaces
- **Behavior Contracts**: `FlyBehavior` and `QuackBehavior` abstract classes
- **Concrete Strategies**: Multiple flight/quack implementations (e.g., `FlyWithWings`, `FlyNoWay`, `FlyRocketPowered`)
- **Concrete Contexts**: `MallardDuck`, `ModelDuck` with different default behaviors
- **Runtime Flexibility**: Behaviors changeable via setter methods

#### Adventure Game
- **Abstract Context**: `Character` class with weapon composition
- **Behavior Contract**: `WeaponBehavior` abstract class
- **Concrete Strategies**: Various weapon implementations (`SwordBehavior`, `AxeBehavior`, `KnifeBehavior`)
- **Concrete Contexts**: `King`, `Queen` character types
- **Dynamic Behavior**: Weapons can be swapped at runtime

### Observer Pattern Architecture (Chapter_2/)
- **Subject Interface**: Defines observer management contract
- **WeatherData**: Subject implementation (in progress)
- **Observer Interface**: Defines update contract (to be implemented)

## Key Design Principles Demonstrated

- **Encapsulate What Varies**: Behaviors isolated in separate strategy classes
- **Composition over Inheritance**: Objects composed with behaviors rather than inheriting them
- **Program to Interfaces**: Code depends on abstractions, not concrete implementations
- **Open/Closed Principle**: New behaviors can be added without modifying existing classes
- **Loose Coupling**: Minimal dependencies between objects that interact

## Java to Dart Translation Patterns

- Java `interface` → Dart `abstract class`
- Private members use `_` prefix instead of `private` keyword
- Constructor syntax is more concise in Dart
- Arrow functions for single-expression methods
- Sound null safety enabled by default