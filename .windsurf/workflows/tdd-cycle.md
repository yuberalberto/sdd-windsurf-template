---
description: Red-Green-Refactor TDD cycle for implementing a single task
---

# TDD Cycle — Red-Green-Refactor

This workflow guides through the TDD red-green-refactor cycle for a single task.

## Trigger

Invoke this workflow when implementing a specific task from a spec, or adding a single piece of functionality. Usage: `/tdd-cycle [TASK-ID or description]`

## Steps

### Step 1: Understand the Task

- Read the task definition (from tasks.md or user description)
- Identify acceptance criteria
- Identify the design section being implemented
- Understand dependencies and preconditions
- **Output**: Clear understanding of what "done" looks like

### Step 2: Write Failing Tests (Red)

- For each acceptance criterion, write a test:
  - Use naming convention: `test_[unit]_[scenario]_[expected_result]`
  - Follow AAA pattern (Arrange-Act-Assert)
  - Test the public interface, not implementation details
- Run tests — they MUST all fail (if any pass, the test is wrong or the feature already exists)
- **Output**: Failing test suite that defines expected behavior

### Step 3: Make Tests Pass (Green)

- Write the MINIMUM code to make each test pass
- Do not optimize, do not refactor, do not add extras
- Focus only on making the red tests green
- Run tests after each small change
- **Output**: All tests passing with minimal implementation

### Step 4: Refactor

- Improve code quality while keeping tests green:
  - Extract functions if any are > 30 lines
  - Remove duplication
  - Improve naming
  - Simplify conditionals
- Run tests after each refactor step — they MUST stay green
- **Output**: Clean code with all tests still passing

### Step 5: Edge Cases

- Add tests for edge cases not covered by acceptance criteria:
  - Empty/null inputs
  - Boundary values
  - Error conditions
  - Concurrent access (if applicable)
- Implement fixes for any new failing tests
- **Output**: Robust implementation handling edge cases

### Step 6: Log Progress

- Update implementation-log.md with:
  - Tests written (name and what they verify)
  - Implementation decisions
  - Any deviations from spec (with justification)
  - Test results (X/X passing)
- **Output**: Updated implementation log

## Output

At completion:
- All acceptance criteria verified by passing tests
- Edge cases covered
- Code is clean and follows standards
- Implementation log updated
