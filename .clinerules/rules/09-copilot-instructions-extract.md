# Copilot Instructions Extract

**Source**: `.github/copilot-instructions.md` from this repository
**Purpose**: Key guidelines for AI assistants working on this repository

---

## 🎯 Repository Context

**Inspirational Quotes & English Learning** is a personal workspace for collecting inspirational quotes, building English vocabulary, and structured English learning.

### Intended use

- Personal English language learning and vocabulary building
- Quote curation and organization for daily motivation
- Grammar learning through contextual examples from quotes
- Structured 18-minute daily learning sessions

---

## 🔧 Development Guidelines

### Source Material Staging

**🚫 Critical Restrictions:**

- **Read-Only Policy**:
 - **NEVER modify** any file inside `source-material/`
 - **NEVER overwrite** any file inside `source-material/`
 - **NEVER edit** content even if it contains errors
 - Files are **permanent reference materials**

- **No Deletion Policy**:
 - **NEVER delete** anything from `source-material/`
 - Content remains even after migration
 - Serves as **permanent historical reference**

- **Export Location Policy (.pdf/.pptx)**:
 - **NEVER export to `docs/exports/`** when the source file is under `source-material/`
 - Create converted artifacts in the **same `source-material` location tree** as the input file
 - Keep source and converted files colocated for auditability

**🔄 Migration Workflow:**
1. Read from `source-material/` to understand concepts
2. Synthesize — Rewrite in your own words (NO copy-paste)
3. Publish to educational folders (`EnglishLearning/`, `InspirationalQuotes/`, `Strategic-Literacy/`, `docs/`)
4. Cite when using specific quotes, definitions, or concepts

**✅ Zero-Copy Policy:**
- **Good Synthesis**: Demonstrates understanding, uses different vocabulary, explains concepts
- **Bad Synthesis (Rejected)**: Word-for-word copying, minor rephrasing, close paraphrasing without understanding

### Zero-Copy Policy

- All content must be original syntheses of learning materials.
- No direct copying from textbooks or reference materials without citation.

### Project Focus

- **Educational Value**: Ensure content inspires or teaches life lessons
- **Quote Authenticity**: Preserve original wording and proper attribution
- **Vocabulary Clarity**: Keep definitions practical and learnable
- **Grammar Connection**: Link concepts to real quote usage

### Code Style (PowerShell)

- Follow PowerShell best practices.
- Use meaningful variable names.
- **Comments**: Comment to explain the learning purpose, not just the syntax.
- **No hardcoded paths**: Use relative paths where appropriate.

### Code Comments Philosophy

- Explain the **learning purpose** for the operation
- Explain the **educational value** of the script or function
- Not just syntax explanation (avoid: "This creates a list")

### Documentation Standards

- **Review reports**: All review reports go in `docs/reviews/`.
- **Reference materials**: General reference docs go in `docs/reference/`.
- **Notes**: Synthesized study notes go in appropriate learning folders.

---

## 🚀 Environment & Commands

**Environment**: Windows, PowerShell
**Note**: All commands and scripts should use PowerShell syntax. File paths use Windows format.

**PowerShell Scripts:**
- Located in `Scripts/` directory
- Use `.ps1` extension
- Should include error handling and clear output

---

## 🧠 Prompt Engineering Tips

When asking AI assistants for help:

- Specify the educational goal clearly (e.g., "Add a vocabulary entry for 'resilience' with a quote example")
- Request hands-on implementation (e.g., "Create a PowerShell script to verify vocabulary format")
- Ask for explanations using plain English plus a small worked example
- Request diagrams when appropriate (e.g., "Create a flowchart for the learning process")
- Specify reproducibility expectations (e.g., "Use consistent formatting for all entries")

## ✅ Quality Checklist

### Before Submitting Content

- [ ] **Quote Attribution**: Author/source is properly credited
- [ ] **Vocabulary Format**: Follows standard entry structure
- [ ] **Grammar Examples**: Come from actual quotes in collection
- [ ] **File Naming**: Follows conventions in `08-file-naming-conventions.md`
- [ ] **Markdown Standards**: Follows guidelines in `05-markdown-standards.md`

### Content Review

- [ ] Content is original synthesis (zero-copy policy).
- [ ] Quotes preserve original wording and meaning.
- [ ] Vocabulary definitions are clear and practical.
- [ ] Grammar examples are correct and relevant.
- [ ] All assumptions are verified before content creation.