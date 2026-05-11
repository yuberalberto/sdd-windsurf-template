# Design: [Feature Name]

**Date**: [Date]
**Author**: [Author]
**Status**: Draft | In Review | Approved
**Requirements Reference**: `specs/[feature-name]/requirements.md`

## Architecture Overview

[High-level description of how this feature fits into the system architecture.]

```
[Component diagram or ASCII art showing the main components and their relationships]
```

## Components

### Component 1: [Name]

- **Purpose**: [What this component does]
- **Requirements Addressed**: REQ-001, REQ-002
- **Technology**: [Language, framework, library]
- **Location**: `src/[path]`

### Component 2: [Name]

- **Purpose**: [What this component does]
- **Requirements Addressed**: REQ-003
- **Technology**: [Language, framework, library]
- **Location**: `src/[path]`

## Data Models

### [Model Name]

| Field | Type | Required | Description | Constraints |
|-------|------|----------|-------------|-------------|
| id | string (UUID) | Yes | Unique identifier | Auto-generated |
| [field] | [type] | [Yes/No] | [Description] | [Constraints] |
| created_at | datetime | Yes | Creation timestamp | Auto-set |
| updated_at | datetime | Yes | Last update timestamp | Auto-set |

**Requirements Addressed**: REQ-001

### [Model Name 2]

| Field | Type | Required | Description | Constraints |
|-------|------|----------|-------------|-------------|
| [field] | [type] | [Yes/No] | [Description] | [Constraints] |

## API Contracts

### [Endpoint Group]

#### [Operation Name]

- **Method**: GET | POST | PUT | PATCH | DELETE
- **Path**: `/api/v1/[resource]`
- **Requirements Addressed**: REQ-001
- **Authentication**: Required | Optional | None
- **Request Body**:
```json
{
  "field": "type — description"
}
```
- **Response** (200):
```json
{
  "field": "type — description"
}
```
- **Error Responses**:
  - 400: Invalid input — [when this occurs]
  - 404: Not found — [when this occurs]
  - 500: Server error — [when this occurs]

## Sequence Diagrams

### [Flow Name]

```
[Sequence diagram showing the interaction between components for a key flow]

User -> API: POST /resource
API -> Service: create(data)
Service -> Validator: validate(data)
Validator -> Service: validated_data
Service -> Repository: save(validated_data)
Repository -> Database: INSERT
Database -> Repository: record
Repository -> Service: entity
Service -> API: entity
API -> User: 201 Created
```

## Error Handling Strategy

| Error Type | Handling Approach | User-Facing Message |
|-----------|-------------------|-------------------|
| Validation error | Return 400 with field-level errors | "Invalid input: [details]" |
| Not found | Return 404 | "Resource not found" |
| Authorization | Return 403 | "Access denied" |
| Server error | Log error, return 500 | "Internal server error" |

## Security Considerations

- [Authentication approach]
- [Authorization rules]
- [Input validation strategy]
- [Data protection measures]

## Performance Considerations

- [Expected load]
- [Caching strategy]
- [Query optimization notes]

## Traceability Matrix

| Requirement | Design Component | API Endpoint |
|------------|-----------------|-------------|
| REQ-001 | Component 1, Model A | POST /resource |
| REQ-002 | Component 2 | GET /resource/:id |

---

**Approval**:
- [ ] Tech Lead approved
- [ ] Security review completed
- Date approved: [Date]
