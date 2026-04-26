#!/usr/bin/env bash
#
# remove-ai-layer.sh
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
#   bash remove-ai-layer.sh
#
# This script will ask for confirmation before deleting anything.

set -euo pipefail

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo ""
echo "STIRR AI Layer Removal"
echo "======================="
echo ""
echo "This removes all LLM governance rules and AI operational skills from your vault."
echo "The spatial structure, room names, READMEs, and MOCs remain intact."
echo "You will keep a purely human-managed knowledge palace."
echo ""

# Count what will be removed
PROTOCOL_COUNT=$(find . -name "PROTOCOL.md" -type f | wc -l | tr -d ' ')
SKILLS_COUNT=$(find . -path "*/Skills/*" -name "SKILL.md" -type f | wc -l | tr -d ' ')

echo "The following will be deleted:"
echo ""
echo "  ${RED}${PROTOCOL_COUNT}${NC} PROTOCOL.md files (LLM governance rules)"
echo "  ${RED}1${NC} MIGRATION.md (AI-assisted migration guide)"

if [ -d "./8. Foundation/Skills" ]; then
    echo "  ${RED}${SKILLS_COUNT}${NC} AI skill files in 8. Foundation/Skills/"
    echo "  ${RED}1${NC} Skills directory"
fi

echo ""
echo "The following will ${GREEN}NOT${NC} be removed:"
echo ""
echo "  ${GREEN}README.md${NC} files (human-facing room descriptions)"
echo "  ${GREEN}_MoC.md${NC} files (navigation hubs)"
echo "  ${GREEN}STIRR.md${NC} (methodology specification)"
echo "  ${GREEN}LAYOUT.md${NC} (architectural blueprint)"
echo "  ${GREEN}WORKING.md${NC} (project tracker)"
echo "  ${GREEN}Frontmatter${NC} in notes (harmless metadata)"
echo "  ${GREEN}All user content${NC}"
echo ""

# Confirm
echo -n "Proceed with removal? [y/N] "
read -r CONFIRM

if [ "$CONFIRM" != "y" ] && [ "$CONFIRM" != "Y" ]; then
    echo ""
    echo "Cancelled. No files were deleted."
    exit 0
fi

echo ""
echo "Removing AI layer..."
echo ""

# Remove all PROTOCOL.md files
FOUND=0
while IFS= read -r -d '' file; do
    rm "$file"
    echo "  Deleted: $file"
    FOUND=$((FOUND + 1))
done < <(find . -name "PROTOCOL.md" -type f -print0)

echo "  ${YELLOW}${FOUND}${NC} PROTOCOL.md files deleted."

# Remove MIGRATION.md
if [ -f "MIGRATION.md" ]; then
    rm "MIGRATION.md"
    echo "  Deleted: MIGRATION.md"
fi

# Remove Skills directory
if [ -d "./8. Foundation/Skills" ]; then
    SKILL_FILES=$(find "./8. Foundation/Skills" -type f | wc -l | tr -d ' ')
    rm -rf "./8. Foundation/Skills"
    echo "  Deleted: 8. Foundation/Skills/ (${SKILL_FILES} files)"
fi

echo ""
echo "${GREEN}Done.${NC} AI layer removed. Your vault is now a human-managed knowledge palace."
echo ""
echo "You can still use the spatial structure -- walk the rooms, use the MOCs,"
echo "read the READMEs. The STIRR methodology remains yours."
echo ""
echo "If you ever want the AI layer back, re-clone the STIRR reference architecture"
echo "and copy the PROTOCOL.md files and Skills/ directory into your vault."