# Flutter Flame Starter

A Flutter Flame game starter with DDD (Domain-Driven Design) feature-first
architecture and Supabase integration.

## Prerequisites

- Flutter SDK (^3.9.2 or higher)
- Supabase CLI (optional, for local development)
- A Supabase project (cloud or local)

## Getting Started

### 1. Clone and Install Dependencies

```bash
git clone <repository-url>
cd flutter_flame_starter
flutter pub get
```

### 2. Get Supabase Credentials

You need two values from your Supabase project:

- **SUPABASE_URL**: Your Supabase project URL
- **SUPABASE_ANON_KEY**: Your Supabase anonymous/public key

#### Option A: From Supabase Dashboard (Cloud)

1. Go to [Supabase Dashboard](https://app.supabase.com)
2. Select your project
3. Go to **Settings** → **API**
4. Copy the **Project URL** (SUPABASE_URL)
5. Copy the **anon public** key (SUPABASE_ANON_KEY)

#### Option B: From Supabase CLI (Local)

If running Supabase locally:

```bash
supabase status
```

This will show your local Supabase URL and keys.

### 3. Run the Application

The app requires Supabase credentials to be passed via `--dart-define` flags.
Never hardcode these values as this is a starter pack.

#### Basic Run Command

```bash
flutter run \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key-here
```

#### For Local Supabase Development

```bash
flutter run \
  --dart-define=SUPABASE_URL=http://127.0.0.1:54321 \
  --dart-define=SUPABASE_ANON_KEY=your-local-anon-key
```

#### Android Emulator Note

When using Android emulator with local Supabase (127.0.0.1), the app
automatically maps `127.0.0.1` to `10.0.2.2` (Android emulator's host machine
address). You can still pass `127.0.0.1` in the URL - the mapping happens
automatically.

#### Platform-Specific Examples

**iOS Simulator:**
```bash
flutter run -d ios \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key
```

**Android Emulator:**
```bash
flutter run -d android \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key
```

**Web:**
```bash
flutter run -d chrome \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key
```

**Desktop (macOS/Linux/Windows):**
```bash
flutter run -d macos \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key
```

### 4. Using Supabase Client in Your Code

Access the Supabase client via the Riverpod provider:

```dart
import 'package:flutter_flame_starter/src/shared/supabase/supabase_client_provider.codegen.dart';

// In your widget/controller
final supabase = ref.watch(supabaseClientProviderProvider);

// Use the client
await supabase.from('table_name').select();
```

## Architecture

This project follows Domain-Driven Design (DDD) principles:

- **Controller**: Business logic and state management
- **Service**: Thin orchestration layer (optional)
- **Repository**: Data access and persistence
- **Model**: Domain entities

See [DDD_GUIDELINES.md](DDD_GUIDELINES.md) for detailed architecture
guidelines.

## Troubleshooting

### Error: "SUPABASE_URL and/or SUPABASE_ANON_KEY are missing"

**Solution**: Make sure you're passing both `--dart-define` flags when
running the app.

```bash
flutter run \
  --dart-define=SUPABASE_URL=your-url \
  --dart-define=SUPABASE_ANON_KEY=your-key
```

### Android Emulator Can't Connect to Local Supabase

**Solution**: The app automatically handles this, but if you still have
issues, ensure:
1. Your Supabase URL contains `127.0.0.1` (not `localhost`)
2. The app will automatically map it to `10.0.2.2` for Android emulator

### Build Errors After Adding Supabase

**Solution**: Run code generation:

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [Flame Game Engine](https://flame-engine.org/)
- [Supabase Documentation](https://supabase.com/docs)
- [Riverpod Documentation](https://riverpod.dev/)

## License

[Add your license here]
