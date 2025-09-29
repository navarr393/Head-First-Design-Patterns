# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Design Patterns repository containing implementations of classic object-oriented design patterns in Dart. Currently contains a Strategy Pattern implementation demonstrating behavioral composition over inheritance.

## Code Architecture

### Strategy Pattern Implementation (`duck.dart`)
- **Behavioral Interfaces**: `FlyBehavior` and `QuackBehavior` define contracts for duck behaviors
- **Concrete Strategies**: Multiple implementations for each behavior (e.g., `FlyWithWings`, `FlyNoWay`, `FlyRocketPowered`)
- **Context Class**: Abstract `Duck` class uses composition to delegate behavior to strategy objects
- **Concrete Contexts**: `MallardDuck` and `ModelDuck` inherit from `Duck` with different default behaviors
- **Runtime Flexibility**: Behaviors can be changed at runtime using setter methods

## Development Commands

This is a simple Dart project without a package configuration. To run the code:

```bash
dart run duck.dart
```

## Architecture Principles

- **Composition over Inheritance**: Duck behaviors are composed rather than inherited
- **Open/Closed Principle**: New behaviors can be added without modifying existing duck classes
- **Encapsulation**: Each behavior is encapsulated in its own class
- **Runtime Behavior Changes**: Strategies can be swapped dynamically using setter methods