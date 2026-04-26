# remove-ai-layer.ps1
#
# Removes the AI/LLM governance layer from a STIRR vault.
# For users who want the spatial structure but not the AI substrate rules.
#
# This script removes:
#   - All PROTOCOL.md files (LLM governance rules for each room)
#   - MIGRATION.md (AI-assisted migration guide)
#   - The Skills directory (1 AI operational skill)
#
# This script does NOT remove:
#   - Frontmatter from notes (harmless metadata, invisible in Obsidian)
#   - README.md files (human-facing room descriptions)
#   - _MoC.md files (navigation hubs)
#   - STIRR.md, LAYOUT.md, WORKING.md (methodology and project docs)
#   - Any user content
#
# Run this script from the STIRR vault root directory:
#   powershell -ExecutionPolicy Bypass -File remove-ai-layer.ps1
#
# This script will ask for confirmation before deleting anything.

$ErrorActionPreference = "Stop"

$ScriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $ScriptDir

Write-Host ""
Write-Host "STIRR AI Layer Removal" -ForegroundColor Cyan
Write-Host "=======================" -ForegroundColor Cyan
Write-Host ""
Write-Host "This removes all LLM governance rules and AI operational skills from your vault."
Write-Host "The spatial structure, room names, READMEs, and MOCs remain intact."
Write-Host "You will keep a purely human-managed knowledge palace."
Write-Host ""

# Count what will be removed
$ProtocolFiles = Get-ChildItem -Path . -Filter "PROTOCOL.md" -Recurse -File
$ProtocolCount = $ProtocolFiles.Count

$SkillsDir = $null
$SkillsCount = 0
if (Test-Path ".\8. Foundation\Skills") {
    $SkillsDir = ".\8. Foundation\Skills"
    $SkillsCount = (Get-ChildItem -Path $SkillsDir -Recurse -File).Count
}

Write-Host "The following will be deleted:" -ForegroundColor White
Write-Host ""
Write-Host "  $($ProtocolCount) PROTOCOL.md files (LLM governance rules)" -ForegroundColor Red
Write-Host "  1 MIGRATION.md (AI-assisted migration guide)" -ForegroundColor Red
if ($SkillsDir) {
    Write-Host "  $($SkillsCount) AI skill files in $($SkillsDir)" -ForegroundColor Red
    Write-Host "  1 Skills directory" -ForegroundColor Red
}
Write-Host ""
Write-Host "The following will " -NoNewline; Write-Host "NOT" -ForegroundColor Green -NoNewline; Write-Host " be removed:"
Write-Host ""
Write-Host "  README.md files (human-facing room descriptions)" -ForegroundColor Green
Write-Host "  _MoC.md files (navigation hubs)" -ForegroundColor Green
Write-Host "  STIRR.md (methodology specification)" -ForegroundColor Green
Write-Host "  LAYOUT.md (architectural blueprint)" -ForegroundColor Green
Write-Host "  WORKING.md (project tracker)" -ForegroundColor Green
Write-Host "  Frontmatter in notes (harmless metadata)" -ForegroundColor Green
Write-Host "  All user content" -ForegroundColor Green
Write-Host ""

# Confirm
$Confirm = Read-Host "Proceed with removal? [y/N]"

if ($Confirm -ne "y" -and $Confirm -ne "Y") {
    Write-Host ""
    Write-Host "Cancelled. No files were deleted."
    exit 0
}

Write-Host ""
Write-Host "Removing AI layer..." -ForegroundColor Yellow
Write-Host ""

# Remove all PROTOCOL.md files
$Deleted = 0
foreach ($File in $ProtocolFiles) {
    Remove-Item $File.FullName -Force
    Write-Host "  Deleted: $($File.FullName)"
    $Deleted++
}
Write-Host "  $Deleted PROTOCOL.md files deleted." -ForegroundColor Yellow

# Remove MIGRATION.md
if (Test-Path ".\MIGRATION.md") {
    Remove-Item ".\MIGRATION.md" -Force
    Write-Host "  Deleted: MIGRATION.md"
}

# Remove Skills directory
if ($SkillsDir) {
    $SkillFileCount = (Get-ChildItem -Path $SkillsDir -Recurse -File).Count
    Remove-Item $SkillsDir -Recurse -Force
    Write-Host "  Deleted: $($SkillsDir) ($($SkillFileCount) files)" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Done." -ForegroundColor Green
Write-Host "AI layer removed. Your vault is now a human-managed knowledge palace."
Write-Host ""
Write-Host "You can still use the spatial structure -- walk the rooms, use the MOCs,"
Write-Host "read the READMEs. The STIRR methodology remains yours."
Write-Host ""
Write-Host "If you ever want the AI layer back, re-clone the STIRR reference architecture"
Write-Host "and copy the PROTOCOL.md files and Skills/ directory into your vault."