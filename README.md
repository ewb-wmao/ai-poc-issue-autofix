# Calculator

A minimal Swift package used as a PoC for AI-assisted bug fixing via GitHub Issues + Actions.

## Structure

- `Sources/Calculator/Calculator.swift` — core logic
- `Tests/CalculatorTests/CalculatorTests.swift` — unit tests

## Run tests

```bash
swift test
​```

## PoC goal

When a GitHub issue is labeled `ai-fix`, a GitHub Action will:

1. Send the issue to Claude
2. Let Claude analyze the code and propose a fix
3. Open a PR with the fix, linked to the issue
4. Merging the PR auto-closes the issue
