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
```

## Code Architecture

### Chapter Structure
- **Chapter_1/**: Strategy Pattern implementations (complete)
  - Duck simulator (main example)
  - Adventure game (design puzzle)
- **Chapter_2/**: Observer Pattern (complete)
- **Chapter_3/**: Future pattern implementations (placeholder)

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
- **Observer Interface**: Defines update contract (`update` method receives temperature, humidity, pressure)
- **DisplayElement Interface**: Common display contract for all display components
- **WeatherData**: Concrete subject managing weather measurements and observer notifications
- **Display Components**: `CurrentConditionsDisplay`, `HeatIndexDisplay` implement Observer and DisplayElement
- **Push Model**: Subject pushes all data to observers (temperature, humidity, pressure)
- **Automatic Registration**: Display components register themselves with subject in constructor

## Key Design Principles Demonstrated

- **Encapsulate What Varies**: Behaviors isolated in separate strategy classes; observer management encapsulated in Subject interface
- **Composition over Inheritance**: Objects composed with behaviors rather than inheriting them
- **Program to Interfaces**: Code depends on abstractions, not concrete implementations
- **Open/Closed Principle**: New behaviors can be added without modifying existing classes
- **Loose Coupling**: Minimal dependencies between objects that interact; observers only depend on Subject interface
- **One-to-Many Dependencies**: Observer pattern demonstrates how one subject can notify multiple observers
- **Push vs Pull**: Current implementation uses push model where subject sends all data to observers

## Java to Dart Translation Patterns

- Java `interface` → Dart `abstract class` with abstract methods
- Private members use `_` prefix instead of `private` keyword
- Constructor syntax is more concise in Dart
- Arrow functions for single-expression methods (`void performFly() => flyBehavior.fly()`)
- Sound null safety enabled by default
- `late` keyword for variables initialized after declaration
- Multiple interface implementation using `implements` keyword
- Required named parameters in constructors for better API design