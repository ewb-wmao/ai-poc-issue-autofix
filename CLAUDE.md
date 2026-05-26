# Project context for Claude

## What this is

A tiny Swift package (`Calculator`) for testing AI-assisted bug fixing.
The codebase intentionally contains bugs. Your job is to fix them based on GitHub issues.

## Tech stack

- Swift Package Manager (no Xcode project, no iOS app)
- Pure Swift library + XCTest
- Runs on Linux and macOS via `swift test`

## Code conventions

- Public API uses `public` modifier
- Prefer `Double` over `Int` for numeric APIs unless integer semantics are required
- Handle edge cases: empty arrays, nil inputs, overflow, floating point precision
- Every bug fix MUST come with a new unit test that would have caught the bug
- Keep changes minimal and focused — do not refactor unrelated code

## How to fix a bug

1. Read the issue carefully
2. Locate the relevant function in `Sources/Calculator/Calculator.swift`
3. Write a failing test in `Tests/CalculatorTests/CalculatorTests.swift` that reproduces the bug
4. Fix the code in `Calculator.swift` until the new test passes
5. Run `swift test` to confirm all tests pass
6. Keep the diff small

## What NOT to do

- Do not add new dependencies to `Package.swift`
- Do not rename existing public APIs (breaking changes)
- Do not refactor unrelated functions
- Do not delete existing tests
- Do not add UI, networking, or persistence — this is a pure logic library

## Verification

Before opening a PR, ensure `swift test` passes locally.
