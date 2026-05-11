---
description: Validate that an SDD spec is complete and well-formed before implementation
---

# Validate Spec

Validates that a spec is complete and well-formed before starting implementation.

## Trigger

Usage: `/validate-spec [feature-name]`

## Process

1. **Locate spec**: Find `specs/[feature-name]/` directory
2. **Check file existence**: All 4 files must exist:
   - [ ] `requirements.md`
   - [ ] `design.md`
   - [ ] `tasks.md`
   - [ ] `implementation-log.md`
3. **Validate requirements**:
   - [ ] At least one functional requirement defined
   - [ ] Each requirement has a unique ID (REQ-XXX)
   - [ ] Each requirement uses EARS format
   - [ ] Each requirement has testable acceptance criteria
   - [ ] Each requirement has a priority (Must/Should/Could)
4. **Validate design**:
   - [ ] References specific requirements (traceability)
   - [ ] Data models defined with types and constraints
   - [ ] API contracts defined (if applicable)
   - [ ] Traceability matrix present
5. **Validate tasks**:
   - [ ] Each task has a unique ID (TASK-XXX)
   - [ ] Each task references design section
   - [ ] Each task has acceptance criteria
   - [ ] Dependencies declared
   - [ ] Execution order defined
   - [ ] Each task is ≤ 2 hours estimated
6. **Cross-reference check**:
   - [ ] Every requirement is addressed by at least one task
   - [ ] Every task traces back to a requirement
   - [ ] No orphan components in design

## Output Format

```
## Spec Validation: [feature-name]

### Status: ✅ Ready for Implementation | ⚠️ Issues Found

### Checklist
- ✅ All files present
- ✅ Requirements: 5 defined, all valid EARS format
- ⚠️ Design: REQ-004 not covered in traceability matrix
- ✅ Tasks: 8 defined, dependencies valid

### Issues (must fix)
1. REQ-004 has no corresponding design component

### Warnings (recommended)
1. TASK-003 has no acceptance criteria — add at least one
```

## Notes

- Run this BEFORE starting TDD implementation
- All issues must be resolved before proceeding
- Warnings are recommended but non-blocking
