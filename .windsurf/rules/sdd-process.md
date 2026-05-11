# SDD Process — Spec-Driven Development

Every non-trivial feature MUST follow the SDD pipeline. This ensures traceability from requirements to tested code.

## Pipeline

```
1. Spec Init       → Create spec directory from templates
2. Requirements    → Define WHAT to build (EARS format, testable, traceable)
3. Design          → Define HOW to build it (architecture, data models, APIs)
4. Tasks           → Decompose into small, ordered, implementable units
5. TDD             → For each task: write test → make it pass → refactor
6. Verification    → All tests pass, coverage met, spec fully implemented
```

## When SDD Applies

- **Required**: New features, API changes, architectural changes, data model changes
- **Optional**: Bug fixes (use simplified spec), small refactors, documentation updates
- **Exempt**: Typo fixes, dependency updates, config changes

## Step 1: Spec Initialization

- Create `specs/[feature-name]/` directory
- Copy templates: requirements.md, design.md, tasks.md, implementation-log.md
- Fill in feature name, date, author

## Step 2: Requirements (EARS Format)

Each requirement MUST:
- Have a unique ID (REQ-001, REQ-002, ...)
- Use one of these EARS patterns:
  - **Ubiquitous**: "The [system] shall [action]"
  - **Event-driven**: "When [event], the [system] shall [action]"
  - **State-driven**: "While [state], the [system] shall [action]"
  - **Conditional**: "If [condition], then the [system] shall [action]"
- Include testable acceptance criteria
- Have a priority (Must / Should / Could)

## Step 3: Technical Design

The design document MUST:
- Reference specific requirements (traceability)
- Define data models with field types and constraints
- Define API contracts (method, path, request/response, errors)
- Include a traceability matrix: Requirement → Component → Endpoint

## Step 4: Task Decomposition

Each task MUST:
- Have a unique ID (TASK-001, TASK-002, ...)
- Reference the design section it implements
- List acceptance criteria that become test cases
- Declare dependencies on other tasks
- Be implementable in ≤ 2 hours

## Step 5: TDD Implementation

For EACH task, follow this cycle:
1. **Red**: Write a failing test that proves the acceptance criterion
2. **Green**: Write the minimum code to make the test pass
3. **Refactor**: Clean up while keeping tests green
4. Repeat for all acceptance criteria of the task
5. Log progress in implementation-log.md

## Step 6: Verification

Before marking a feature as complete:
- [ ] All tasks marked as Complete
- [ ] All tests passing
- [ ] Code coverage ≥ 80%
- [ ] No orphaned code (all code traced to a task)
- [ ] Implementation log is up to date
- [ ] Design deviations documented with justification

## Deviation Handling

If implementation deviates from spec:
1. Document the deviation in the implementation log
2. Explain the justification
3. Update the design doc if the change is permanent
4. Ensure traceability is maintained
