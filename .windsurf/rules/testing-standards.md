# Testing Standards

All code MUST be test-driven. Tests are proof of correctness, not an afterthought.

## TDD Process

1. **Red**: Write a failing test that defines the expected behavior
2. **Green**: Write the minimum code to make it pass
3. **Refactor**: Clean up while keeping tests green
4. Repeat

Never write production code without a failing test first.

## Test Structure (AAA Pattern)

Every test MUST follow Arrange-Act-Assert:

```
def test_[unit]_[scenario]_[expected_result]():
    # Arrange — set up test data and preconditions
    ...

    # Act — call the function/method under test
    ...

    # Assert — verify the expected outcome
    ...
```

## Naming Convention

Test names MUST be descriptive: `test_[unit]_[scenario]_[expected_result]`

Examples:
- `test_create_task_with_valid_data_returns_task_with_id`
- `test_create_task_with_empty_title_raises_validation_error`
- `test_delete_task_nonexistent_id_raises_not_found`

## Test Categories

| Category | Purpose | Speed | Dependencies |
|----------|---------|-------|-------------|
| Unit | Test isolated logic | Fast (ms) | None (mocked) |
| Integration | Test component interaction | Medium (s) | Real DB/API |
| E2E | Test full user flows | Slow (s-min) | Full system |

## Coverage Requirements

- Minimum code coverage: **80%**
- Critical paths (auth, payments, data mutation): **95%+**
- Coverage measures which lines were hit — complement with meaningful assertions

## What to Test

- **Happy path**: Normal successful operation
- **Edge cases**: Empty inputs, boundary values, maximum sizes
- **Error cases**: Invalid inputs, missing resources, network failures
- **Security cases**: Unauthorized access, injection attempts

## What NOT to Test

- Framework internals (trust your framework)
- Simple getters/setters with no logic
- Third-party library behavior (test your integration, not their code)

## Test Independence

- Each test MUST be independent — no shared mutable state between tests
- Tests MUST be runnable in any order
- Use setup/teardown (fixtures) for common preconditions
- Never rely on test execution order

## Assertions

- One logical assertion per test (multiple assert statements for one concept is OK)
- Assert the specific expected value, not just "not None" or "no error"
- Use assertion messages for complex comparisons
- Prefer equality assertions over truthiness checks

## Mocking Guidelines

- Mock external dependencies (DB, APIs, filesystem), not your own code
- If you need to mock heavily, your design probably has coupling issues
- Verify mock interactions only when the interaction IS the behavior
- Reset mocks between tests
