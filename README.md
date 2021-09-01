# flutter_provider_sample

A sample Flutter project for Provider.

## Getting Started

### Flutter SDK

Install flutter sdk with [asdf](https://asdf-vm.com/).

```bash
asdf install
asdf reshim
```

### Gem

Install gems for iOS.

```bash
cd ios
cd bundle install
bundle exec pod install
```

## Architecture

### Provider + StateNotifier + Freezed

- Provider: Provides services and notifiers.
- StateNotifier: Controllers for a Page.
- Freezed: Generates entities and states with freezed.

### Repository Pattern

- Entity
- Repository
- Service

### Atomic Disign Pattern

- Atom
- Molecule
- Organism
- Page
