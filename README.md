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

Run the initialization script from your project root:

```powershell
# Clone the template repo first
git clone https://github.com/yuberalberto/sdd-windsurf-template.git
# Then run the init script
./sdd-windsurf-template/init-workspace.ps1
```

This will copy the Windsurf configuration files to your project.

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
