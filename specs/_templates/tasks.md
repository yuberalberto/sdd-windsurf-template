# Tasks: [Feature Name]

**Date**: [Date]
**Author**: [Author]
**Design Reference**: `specs/[feature-name]/design.md`

## Task Summary

| Task ID | Description | Complexity | Dependencies | Status |
|---------|-------------|-----------|--------------|--------|
| TASK-001 | [Brief description] | S/M/L | None | Pending |
| TASK-002 | [Brief description] | S/M/L | TASK-001 | Pending |
| TASK-003 | [Brief description] | S/M/L | TASK-001 | Pending |
| TASK-004 | [Brief description] | S/M/L | TASK-002, TASK-003 | Pending |

## Execution Order

```
TASK-001 (foundation)
├── TASK-002 (can start after TASK-001)
├── TASK-003 (can start after TASK-001, parallel with TASK-002)
└── TASK-004 (requires TASK-002 and TASK-003)
```

## Task Details

### TASK-001: [Task Title]

- **Description**: [What needs to be built]
- **Design Reference**: [Which design section this implements]
- **Requirements Addressed**: REQ-001
- **Dependencies**: None
- **Complexity**: S | M | L
- **Acceptance Criteria**:
  - [ ] [Testable criterion — becomes a test case]
  - [ ] [Testable criterion — becomes a test case]
- **Test Cases to Write**:
  - `test_[unit]_[scenario]_[expected_result]`
  - `test_[unit]_[scenario]_[expected_result]`
- **Status**: Pending | In Progress | Complete
- **Notes**: [Implementation guidance or considerations]

### TASK-002: [Task Title]

- **Description**: [What needs to be built]
- **Design Reference**: [Design section]
- **Requirements Addressed**: REQ-002
- **Dependencies**: TASK-001
- **Complexity**: [Complexity]
- **Acceptance Criteria**:
  - [ ] [Criterion]
- **Test Cases to Write**:
  - `test_[description]`
- **Status**: Pending
- **Notes**: [Notes]

### TASK-003: [Task Title]

- **Description**: [What needs to be built]
- **Design Reference**: [Design section]
- **Requirements Addressed**: REQ-003
- **Dependencies**: TASK-001
- **Complexity**: [Complexity]
- **Acceptance Criteria**:
  - [ ] [Criterion]
- **Test Cases to Write**:
  - `test_[description]`
- **Status**: Pending
- **Notes**: [Notes]

## Implementation Log

Track progress as tasks are completed:

| Task | Started | Completed | Tests Written | Tests Passing | Notes |
|------|---------|-----------|--------------|---------------|-------|
| TASK-001 | [date] | [date] | [count] | [count] | [notes] |
| TASK-002 | [date] | [date] | [count] | [count] | [notes] |

## Completion Checklist

- [ ] All tasks marked as Complete
- [ ] All tests passing
- [ ] Code coverage meets threshold (80%+)
- [ ] Implementation matches design document
- [ ] No orphaned code (all code traced to a task)
- [ ] Documentation updated
