# SDD + TDD Windsurf Template

Template repository for projects using Spec-Driven Development (SDD) and Test-Driven Development (TDD) methodology with Windsurf AI.

## Features

- Preconfigured SDD+TDD methodology
- Windsurf AI workflows and skills
- Specification templates
- Code standards and best practices

## Usage

### New Project

Click "Use this template" in GitHub to create a new repository, or:

```bash
git clone https://github.com/yuberalberto/sdd-windsurf-template.git my-project
cd my-project
```

### Existing Project

Clone the template and copy the configuration folders:

```bash
git clone https://github.com/yuberalberto/sdd-windsurf-template.git
# Copy .windsurf folder to your project
# Copy specs folder to your project
# Delete the cloned template
```

## Structure

```
.windsurf/
├── rules/              # Code standards and methodology
├── skills/             # Windsurf AI skills
└── workflows/          # Automated workflows
specs/
└── _templates/         # Specification templates
```

## Methodology

This template implements Spec-Driven Development (SDD) combined with Test-Driven Development (TDD):

1. **Spec First**: Write specifications before code
2. **Test First**: Write tests before implementation
3. **Iterative**: Small, validated increments
4. **Documented**: All decisions and changes tracked

## Documentation

See the `.windsurf/rules/` directory for detailed methodology documentation.
