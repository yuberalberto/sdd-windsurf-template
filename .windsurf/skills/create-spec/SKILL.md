---
description: Create a new SDD spec directory from templates for a feature
---

# Create Spec

Creates a new spec directory from templates with placeholder values filled in.

## Trigger

Usage: `/create-spec [feature-name]: [brief description]`

## Process

1. **Validate input**: Ensure feature-name is kebab-case and description is provided
2. **Create directory**: `specs/[feature-name]/`
3. **Copy templates**: Copy the 4 template files from spec-templates:
   - `requirements.md`
   - `design.md`
   - `tasks.md`
   - `implementation-log.md`
4. **Fill placeholders**: Replace `[Feature Name]` with the provided name, `[Date]` with today's date, `[Author]` with the current user
5. **Present to user**: Show the created structure and suggest starting with requirements

## Template Source

Templates are located at:
- Global: `~/.codeium/windsurf/spec-templates/` (fallback)
- Project: `specs/_templates/` (preferred if exists)

## Output

```
specs/[feature-name]/
├── requirements.md      — Ready to fill with EARS requirements
├── design.md            — Ready for technical design
├── tasks.md             — Ready for task decomposition
└── implementation-log.md — Ready for progress tracking
```

## Next Steps

After creating the spec, guide the user to:
1. Define requirements first (use EARS format)
2. Then design
3. Then tasks
4. Then implement with TDD
