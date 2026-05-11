---
description: Full SDD pipeline — from feature idea to tested, working code
---

# Spec-to-Code — Full SDD Pipeline

This workflow guides through the complete Spec-Driven Development pipeline from feature idea to tested, working code.

## Trigger

Invoke this workflow when starting a new feature from scratch. Usage: `/spec-to-code [feature-name]: [brief description]`

## Steps

### Step 1: Initialize Spec Directory

- Create `specs/[feature-name]/` in the project root
- Copy templates (requirements.md, design.md, tasks.md, implementation-log.md) from spec-templates
- Fill in feature name, date, author
- **Output**: Spec directory with blank templates ready to fill

### Step 2: Define Requirements

- Work with the user to define requirements in EARS format
- Each requirement gets a unique ID (REQ-001, REQ-002, ...)
- Each requirement has testable acceptance criteria
- Assign priorities (Must / Should / Could)
- Identify constraints, assumptions, and out-of-scope items
- **Output**: Completed `requirements.md`

### Step 3: Create Technical Design

- Design the architecture to satisfy requirements
- Define data models with field types and constraints
- Define API contracts (method, path, request/response, errors)
- Create sequence diagrams for key flows
- Build the traceability matrix (Requirement → Component → Endpoint)
- **Output**: Completed `design.md`

### Step 4: Decompose into Tasks

- Break the design into ordered, implementable tasks (≤ 2 hours each)
- Each task references the design section it implements
- Declare dependencies between tasks
- Define acceptance criteria that become test cases
- Define execution order
- **Output**: Completed `tasks.md`

### Step 5: Implement with TDD

For each task in execution order:
1. Write failing tests (Red) — one per acceptance criterion
2. Write minimum code to pass (Green)
3. Refactor while keeping tests green
4. Log progress in implementation-log.md
5. Move to next task

- **Output**: Working code with full test coverage

### Step 6: Verify Completeness

- All tasks marked as Complete
- All tests passing
- Code coverage ≥ 80%
- No orphaned code
- Implementation log is up to date
- Traceability intact: every requirement → at least one test
- **Output**: Completed feature ready for review

## Output

At completion, the following artifacts exist:
- `specs/[feature-name]/requirements.md` — approved requirements
- `specs/[feature-name]/design.md` — approved design
- `specs/[feature-name]/tasks.md` — all tasks complete
- `specs/[feature-name]/implementation-log.md` — full progress history
- Source code implementing the feature
- Test suite with ≥ 80% coverage
