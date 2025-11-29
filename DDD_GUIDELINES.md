# Domain-Driven Design (DDD) Architecture Guidelines

## Overview

This project follows Domain-Driven Design (DDD) principles to ensure
clear separation of concerns and maintainable code structure. This
document outlines the proper architecture layers and their
responsibilities.

## Architecture Layers

### 1. Controller (Application/Use Case Layer)

**Purpose**: Contains business logic and orchestrates domain operations.

**Responsibilities**:
- Hold all business logic for a feature
- Manage application state
- Coordinate between UI and domain services
- Validate business rules
- Handle use cases and application workflows

**Location**: `lib/src/features/{feature}/controller/`

**Example**:
```dart
/// Controller for game business logic.
@riverpod
class GameController extends _$GameController {
  @override
  GameModel build() {
    return const GameModel.newGame();
  }

  /// Start the game.
  void startGame() {
    state = const GameModel(
      score: 0,
      isPaused: false,
      isGameOver: false,
    );
  }

  /// Pause the game.
  void pauseGame() {
    state = state.copyWith(isPaused: true);
  }
}
```

**Key Points**:
- Controllers contain the business logic, NOT services
- Controllers manage state directly (using Riverpod state management)
- Controllers are the primary entry point for UI components

### 2. Service (Application Service Layer)

**Purpose**: Thin orchestration layer between controller and repository.

**Responsibilities**:
- Coordinate between controller and repository
- Handle data transformation if needed
- Provide a clean interface for data operations
- Should NOT contain business logic

**Location**: `lib/src/features/{feature}/service/`

**When to Use**:
- Only when you have a repository layer
- When you need to coordinate multiple repositories
- When you need to transform data between controller and repository

**Example** (when repository exists):
```dart
/// Service for coordinating between controller and repository.
class GameService {
  const GameService({
    required GameRepository gameRepository,
  }) : _gameRepository = gameRepository;

  final GameRepository _gameRepository;

  Future<void> saveGameState(GameModel game) async {
    return _gameRepository.saveGameState(game);
  }

  Future<GameModel> loadGameState() async {
    return _gameRepository.loadGameState();
  }
}
```

**Key Points**:
- Services are thin - they just pass data between controller and
  repository
- Services should NOT contain business logic
- If you don't have a repository, you typically don't need a service
- Services are optional - use them only when needed

### 3. Repository (Infrastructure Layer)

**Purpose**: Data access and persistence.

**Responsibilities**:
- Handle all data operations (CRUD)
- Abstract data source details (database, API, local storage)
- Provide data access interface to the application layer
- Handle data serialization/deserialization

**Location**: `lib/src/features/{feature}/data/`

**Example**:
```dart
class GameRepository {
  const GameRepository({
    required SupabaseClient supabase,
  }) : _supabase = supabase;

  final SupabaseClient _supabase;

  Future<void> saveGameState(GameModel game) async {
    await _supabase
        .from('games')
        .upsert(game.toJson());
  }

  Future<GameModel> loadGameState() async {
    final data = await _supabase
        .from('games')
        .select()
        .single();
    return GameModel.fromJson(data);
  }
}
```

**Key Points**:
- Repositories handle all data persistence
- Repositories abstract away data source implementation
- Controllers should never directly access repositories (use services
  when needed)

## Data Flow

The correct flow of data and operations:

```
UI → Controller → Service → Repository → Data Source
```

### Detailed Flow

1. **UI Layer**: Widgets call controller methods and watch controller
   state
2. **Controller**: Contains business logic, manages state, calls service
   methods when data persistence is needed
3. **Service**: Thin layer that coordinates between controller and
   repository (optional if no repository)
4. **Repository**: Handles data access and persistence
5. **Data Source**: Database, API, local storage, etc.

## Common Patterns

### Pattern 1: Controller Only (No Repository)

When you don't need data persistence, use only a controller:

```dart
// Controller manages state directly
@riverpod
class GameController extends _$GameController {
  @override
  GameModel build() => const GameModel.newGame();

  void startGame() {
    state = const GameModel(score: 0, isPaused: false);
  }
}

// UI uses controller directly
final gameState = ref.watch(gameControllerProvider);
final controller = ref.read(gameControllerProvider.notifier);
```

### Pattern 2: Controller + Service + Repository

When you need data persistence:

```dart
// Controller contains business logic
@riverpod
class GameController extends _$GameController {
  @override
  GameModel build() {
    // Load initial state from service
    final service = ref.read(gameServiceProvider);
    return service.loadGameState();
  }

  Future<void> startGame() async {
    state = const GameModel(score: 0, isPaused: false);
    // Save state via service
    await ref.read(gameServiceProvider).saveGameState(state);
  }
}

// Service coordinates with repository
class GameService {
  final GameRepository _repository;
  
  Future<void> saveGameState(GameModel game) {
    return _repository.saveGameState(game);
  }
}

// Repository handles data access
class GameRepository {
  Future<void> saveGameState(GameModel game) {
    // Persist to database
  }
}
```

## Anti-Patterns to Avoid

### ❌ Business Logic in Service

```dart
// WRONG: Business logic in service
class GameService {
  void startGame() {
    // Business logic should be in controller
    state = const GameModel(score: 0, isPaused: false);
  }
}
```

### ❌ Controller Only Delegates to Service

```dart
// WRONG: Controller just delegates
class GameController {
  void startGame() {
    service.startGame(); // Just passing through
  }
}
```

### ❌ Direct Repository Access from Controller

```dart
// WRONG: Controller directly accessing repository
class GameController {
  void saveGame() {
    repository.saveGame(game); // Should use service
  }
}
```

## Best Practices

1. **Start with Controller**: Always create the controller first with
   business logic
2. **Add Service Only When Needed**: Only add a service layer when you
   have a repository
3. **Keep Services Thin**: Services should be pass-through layers, not
   contain business logic
4. **One Responsibility**: Each layer should have a single, clear
   responsibility
5. **Test Business Logic**: Business logic in controllers should be
   easily testable

## Summary

- **Controller** = Business logic and state management
- **Service** = Thin orchestration layer (optional, only when repository
  exists)
- **Repository** = Data access and persistence

Remember: The service is the "in between controller and repository
nothing more" - it should not contain business logic.

