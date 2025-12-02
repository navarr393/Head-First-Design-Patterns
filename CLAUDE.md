# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This repository contains Dart implementations of classic design patterns from "Head First Design Patterns" by Eric Freeman and Elisabeth Robson. It serves as an educational resource translating Java examples to idiomatic Dart while preserving core design concepts.

## Development Commands

This is a simple Dart project without package configuration or dependencies. Run examples directly (no `dart pub get` needed):

```bash
# Strategy Pattern - Duck Simulator
dart run Chapter_1/mini_duck_simulator.dart

# Strategy Pattern - Adventure Game
dart run Chapter_1/Adventure_Game/run_simulator.dart

# Observer Pattern - Weather Station
dart run Chapter_2/weather_data.dart

# Decorator Pattern - Starbuzz Coffee
dart run Chapter_3/beverage.dart
```

## Code Architecture

### Chapter Structure
- **Chapter_1/**: Strategy Pattern implementations (complete)
  - Duck simulator (main example)
  - Adventure game (design puzzle)
- **Chapter_2/**: Observer Pattern (complete)
- **Chapter_3/**: Decorator Pattern (complete)

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
- **Subject Interface**: Defines observer management contract (`registerObserver`, `removeObserver`, `notifyObservers`)
- **Observer Interface**: Defines update contract (`update` method with no parameters - pull model)
- **DisplayElement Interface**: Common display contract for all display components
- **WeatherData**: Concrete subject managing weather measurements and observer notifications
- **Display Components**: `CurrentConditionsDisplay`, `HeatIndexDisplay` implement Observer and DisplayElement
- **Pull Model**: Observers call getter methods on subject to retrieve only needed data
- **Automatic Registration**: Display components register themselves with subject in constructor

### Decorator Pattern Architecture (Chapter_3/)
- **Component Abstract Class**: `Beverage` defines base interface with `cost()` and `getDescription()` methods
- **Concrete Components**: Base beverages (`Espresso`, `HouseBlend`, `DarkRoast`, `Decaf`) extend `Beverage`
- **Decorator Abstract Class**: `CondimentDecorator` extends `Beverage` and wraps a `Beverage` instance
- **Concrete Decorators**: Condiments (`Mocha`, `Soy`, `Whip`, `SteamedMilk`) extend `CondimentDecorator`
- **Wrapping Mechanism**: Decorators hold reference to wrapped beverage via composition
- **Recursive Behavior**: `cost()` and `getDescription()` delegate to wrapped object and add their own contribution
- **Size-Based Pricing**: Mocha decorator demonstrates conditional pricing based on beverage size
- **Multiple Wrapping**: Beverages can be wrapped multiple times with same or different decorators

## Key Design Principles Demonstrated

- **Encapsulate What Varies**: Behaviors isolated in separate strategy classes; observer management encapsulated in Subject interface; condiment costs isolated in decorator classes
- **Composition over Inheritance**: Objects composed with behaviors rather than inheriting them; decorators wrap components via composition
- **Program to Interfaces**: Code depends on abstractions, not concrete implementations
- **Open/Closed Principle**: New behaviors can be added without modifying existing classes; new decorators can be added without changing beverage code
- **Loose Coupling**: Minimal dependencies between objects that interact; observers only depend on Subject interface
- **One-to-Many Dependencies**: Observer pattern demonstrates how one subject can notify multiple observers
- **Pull vs Push**: Observer implementation uses pull model where observers retrieve only needed data from subject

## Java to Dart Translation Patterns

- Java `interface` → Dart `abstract class` with abstract methods
- Private members use `_` prefix instead of `private` keyword
- Constructor syntax is more concise in Dart
- Arrow functions for single-expression methods (`void performFly() => flyBehavior.fly()`)
- Sound null safety enabled by default
- `late` keyword for variables initialized after declaration
- Multiple interface implementation using `implements` keyword
- Required named parameters in constructors for better API design
- Enums are top-level declarations in Dart (not nested in classes like Java)