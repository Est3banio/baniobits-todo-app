# Contributing to Task Manager App

Thank you for your interest in contributing to the Task Manager App! This document provides guidelines and instructions for contributing to this project.

## Code of Conduct

By participating in this project, you agree to maintain a respectful and inclusive environment for everyone.

## How to Contribute

### Reporting Bugs

If you find a bug, please create an issue with:
- A clear title and description
- Steps to reproduce the issue
- Expected and actual behavior
- Screenshots if applicable
- Any relevant environment details

### Suggesting Enhancements

For feature requests:
- Use a clear and descriptive title
- Provide a detailed explanation of the feature
- Explain why this enhancement would be useful

### Pull Requests

1. Fork the repository
2. Create a branch from `main` (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Run tests to ensure they pass
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to your branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

## Development Setup

### Prerequisites

- Ruby 3.4.1
- Rails 8.0.1
- Node.js and Yarn
- SQLite3

### Local Development

1. Clone your fork of the repository
   ```bash
   git clone https://github.com/YOUR-USERNAME/to-do-app.git
   cd to-do-app
   ```

2. Install dependencies
   ```bash
   bin/setup
   ```

3. Set up your environment variables (copy `.env.example` to `.env`)
   ```bash
   cp .env.example .env
   ```

4. Start the development server
   ```bash
   bin/dev
   ```

5. Run tests
   ```bash
   bin/rails test
   ```

## Coding Style

- Follow the Ruby Style Guide
- Use meaningful variable and method names
- Add comments where necessary
- Write tests for new features

## Documentation

Please update the documentation when changing core functionality:
- Update README.md for user-facing changes
- Document new features
- Update inline documentation

## License

By contributing, you agree that your contributions will be licensed under the project's MIT License.