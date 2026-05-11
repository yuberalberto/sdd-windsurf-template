# init-workspace.ps1
# Initializes an existing project with SDD+TDD Windsurf configuration

param(
    [string]$TemplatePath = "$PSScriptRoot\sdd-windsurf-template"
)

# If template doesn't exist locally, clone only necessary folders from GitHub
$tempDir = ".sdd-windsurf-temp"
$originalDir = Get-Location
if (Test-Path $tempDir) {
    Remove-Item -Recurse -Force $tempDir
}

Write-Host "Cloning only .windsurf and specs folders from GitHub..." -ForegroundColor Cyan
git clone --no-checkout --filter=blob:none https://github.com/yuberalberto/sdd-windsurf-template.git $tempDir
if ($LASTEXITCODE -ne 0) {
    Write-Error "Failed to clone template from GitHub"
    exit 1
}

Set-Location $tempDir
git sparse-checkout init --cone
git sparse-checkout set .windsurf specs
git checkout main
Set-Location $originalDir

$TemplatePath = $tempDir

$ErrorActionPreference = "Stop"

Write-Host "Initializing workspace with SDD+TDD methodology..." -ForegroundColor Cyan

# Create .windsurf directory structure
Write-Host "Creating .windsurf directory structure..." -ForegroundColor Cyan
$windsurfDir = ".windsurf"
$rulesDir = "$windsurfDir/rules"
$skillsDir = "$windsurfDir/skills"
$workflowsDir = "$windsurfDir/workflows"
$specsDir = "specs/_templates"

New-Item -ItemType Directory -Force -Path $rulesDir | Out-Null
New-Item -ItemType Directory -Force -Path "$skillsDir/create-spec" | Out-Null
New-Item -ItemType Directory -Force -Path "$skillsDir/run-tests" | Out-Null
New-Item -ItemType Directory -Force -Path "$skillsDir/validate-spec" | Out-Null
New-Item -ItemType Directory -Force -Path $workflowsDir | Out-Null
New-Item -ItemType Directory -Force -Path $specsDir | Out-Null

# Copy rules
Write-Host "Copying rules..." -ForegroundColor Cyan
Copy-Item "$TemplatePath/.windsurf/rules/*" -Destination $rulesDir -Force

# Copy skills
Write-Host "Copying skills..." -ForegroundColor Cyan
Copy-Item "$TemplatePath/.windsurf/skills/create-spec/SKILL.md" -Destination "$skillsDir/create-spec/" -Force
Copy-Item "$TemplatePath/.windsurf/skills/run-tests/SKILL.md" -Destination "$skillsDir/run-tests/" -Force
Copy-Item "$TemplatePath/.windsurf/skills/validate-spec/SKILL.md" -Destination "$skillsDir/validate-spec/" -Force

# Copy workflows
Write-Host "Copying workflows..." -ForegroundColor Cyan
Copy-Item "$TemplatePath/.windsurf/workflows/*" -Destination $workflowsDir -Force

# Copy spec templates
Write-Host "Copying specification templates..." -ForegroundColor Cyan
Copy-Item "$TemplatePath/specs/_templates/*" -Destination $specsDir -Force

Write-Host "Workspace initialization complete!" -ForegroundColor Green
Write-Host "Your project is now configured with SDD+TDD methodology." -ForegroundColor Green
Write-Host ""

# Remove temporary template directory
Write-Host "Removing temporary template directory..." -ForegroundColor Cyan
Remove-Item -Recurse -Force $tempDir
Write-Host "Temporary directory removed." -ForegroundColor Green

Write-Host "Next steps:" -ForegroundColor Yellow
Write-Host "1. Review the rules in .windsurf/rules/" -ForegroundColor Yellow
Write-Host "2. Start with specs/_templates/requirements.md for your first feature" -ForegroundColor Yellow
