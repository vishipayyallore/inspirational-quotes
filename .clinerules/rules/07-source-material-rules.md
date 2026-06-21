# Source Material Rules

**Folder**: `source-material/`
**Status**: Staging / Read-Only / Permanent Reference

## Archive carve-out

- `source-material/.archive/` is preserved raw/reference course material. Leave it as-is unless explicitly asked for a specific migration.
- Do **not** count `source-material/.archive/` as active content or as an automatic migration gap during routine reviews.
- When asked to migrate an archived topic, read it as reference only and create fresh content under the appropriate project directories.

## 🚫 Critical Restrictions

### Read-Only Policy

- **NEVER modify** any file inside `source-material/`
- **NEVER overwrite** any file inside `source-material/`
- **NEVER edit** content even if it contains errors
- Files are **permanent reference materials**

### No Deletion Policy

- **NEVER delete** anything from `source-material/`
- Content remains even after migration
- Serves as **permanent historical reference**

### Export Location Policy (.pdf / .pptx conversions)

- **NEVER export converted outputs to `docs/exports/`** when converting files that live in `source-material/`.
- For `.pdf` / `.pptx` conversion jobs, create output files **inside the same `source-material` path tree** as the input source file.
- Keep source and extraction artifacts colocated within `source-material/` for traceability.

## 🔄 Migration Workflow

When migrating content from `source-material/`:

1. **Read** from `source-material/` to understand concepts
2. **Synthesize** - Rewrite in your own words (NO copy-paste)
3. **Publish** to educational folders (`EnglishLearning/`, `InspirationalQuotes/`, `Strategic-Literacy/`, `docs/`)
4. **Cite** when using specific quotes, definitions, or concepts

## ✅ Zero-Copy Policy

### Good Synthesis (Accepted):

- Demonstrates understanding
- Uses different vocabulary
- Explains concepts, not restates them
- Shows original thinking and interpretation

### Bad Synthesis (Rejected):

- Word-for-word copying
- Minor rephrasing
- Close paraphrasing without understanding
- Direct copy-paste with minimal changes

**Reference**: See `02_educational-content-rules.mdc` for detailed zero-copy policy.

## 📁 Purpose

The `source-material/` folder is a staging area for:

- Raw quote collections
- Vocabulary reference materials
- Grammar guides and textbooks
- PDF extracts
- Reference materials
- Original examples

These materials remain **untouched** and serve as **permanent references** while you create **original, synthesized educational content** in the proper folders.

## ⚠️ Enforcement

- Reviewers must reject any PRs that modify or delete files in `source-material/`
- AI assistants must refuse requests to edit, overwrite, or delete content in `source-material/`
- Any migration must result in original synthesis, not copied content