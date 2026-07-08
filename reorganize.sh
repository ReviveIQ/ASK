#!/bin/bash
# Run this from inside your local clone of the ASK repo
# (the folder where you can already see index.html, README.md, etc.)
#
# Usage:
#   cd path/to/ASK
#   chmod +x reorganize.sh
#   ./reorganize.sh

set -e

echo "Creating folder structure..."
mkdir -p prototype
mkdir -p proposal-documents/templates
mkdir -p proposal-documents/source-ifp

echo "Moving prototype..."
git mv index.html prototype/index.html

echo "Moving completed proposal documents..."
git mv IFP-2026-AS-9400-Proposal-Narrative-DRAFT.docx proposal-documents/
git mv IFP-2026-AS-9400-Work-Plan-COMPLETED.docx proposal-documents/
git mv IFP-2026-AS-9400-Budget-Request-COMPLETED.docx proposal-documents/
git mv IFP-2026-AS-9400-References-COMPLETED.docx proposal-documents/
git mv IFP-2026-AS-9400-Scoring-Rubric-UPDATED.docx proposal-documents/

echo "Moving blank templates..."
git mv IFP-2026-AS-9400-Work-Plan-Template.docx proposal-documents/templates/
git mv IFP-2026-AS-9400-Budget-Request-Template.docx proposal-documents/templates/
git mv IFP-2026-AS-9400-References-Template.docx proposal-documents/templates/
git mv IFP-2026-AS-9400-Scoring-Rubric.docx proposal-documents/templates/

echo "Moving source IFP documents..."
git mv IFP2026AS9400.pdf proposal-documents/source-ifp/
git mv 06_IFP2026AS9400QuestionsandAnswers.pdf proposal-documents/source-ifp/

echo "Adding .gitignore..."
cat > .gitignore << 'EOF'
# OS
.DS_Store
Thumbs.db

# Editors
.vscode/
.idea/
*.swp

# Node (for future frontend build tooling)
node_modules/
dist/
build/
.env
.env.local

# Temp / working files
*.tmp
~$*.docx
~$*.xlsx
EOF
git add .gitignore

echo ""
echo "Done reorganizing. Review with:"
echo "  git status"
echo ""
echo "Then commit and push with:"
echo "  git commit -m 'Reorganize repo into prototype/ and proposal-documents/'"
echo "  git push origin main"
