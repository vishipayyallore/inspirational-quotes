# Add New Vocabulary — Workflow

Step-by-step process for adding new vocabulary words to the inspirational-quotes repository.

## Purpose

Ensure consistent addition of new vocabulary words with proper formatting, organization, and quality standards.

## Prerequisites

- Identified a new word to add to the vocabulary collection
- Found appropriate quote examples for usage context
- Working directory is repository root

## Steps

### 1. Determine Correct File Location

- Identify the first letter of the word
- Locate the corresponding file in `EnglishLearning/Vocabulary/[LETTER].md`
- Example: Word "Ambition" goes in `EnglishLearning/Vocabulary/A.md`

### 2. Check Current Vocabulary Order

```powershell
.\Scripts\Verify-Vocabulary.ps1
```

- Run verification script to ensure current file is properly ordered
- Address any existing ordering issues before adding new words

### 3. Research Word Information

Gather accurate information about the word:
- **Meaning**: Clear, practical definition suitable for English learners
- **Usage**: Find or create a quote example from the repository
- **Grammar**: Part of speech and form details
- **Synonyms**: Comma-separated related words
- **Antonyms**: Comma-separated opposite words
- **Context**: Understand how the word is used in the specific quote context

### 4. Format the Entry

Follow the standard vocabulary entry format:
```
## WordName

**Meaning**: Clear, concise definition of the word.
**Usage**: "Quote or example sentence." - Explanation of the usage context.
**Grammar**: Part of speech and form details.
**Synonyms**: Comma-separated related words.
**Antonyms**: Comma-separated opposite words.
```

Example:
```
## Ambition

**Meaning**: A strong desire to achieve something, typically requiring determination and hard work.
**Usage**: "Ambition is the path to success, but persistence is the vehicle that drives you there." - Shows ambition as a motivating force that requires sustained effort to achieve goals.
**Grammar**: Noun
**Synonyms**: aspiration, drive, determination
**Antonyms**: apathy, indifference, aimlessness
```

### 5. Insert in Correct Alphabetical Position

- Open the appropriate letter file
- Find the correct alphabetical position for the new word
- Insert the formatted entry in the proper location
- Ensure consistent spacing and formatting

### 6. Verify Proper Formatting

Check that the entry follows all standards:
- H2 heading with word name
- **Meaning** section in bold
- **Usage** section in bold
- **Grammar** section in bold
- **Synonyms** section in bold
- **Antonyms** section in bold
- Quote example in quotation marks
- Clear context explanation
- Proper punctuation and spacing

### 7. Validate Quote Attribution

- Ensure any quoted material includes proper attribution
- Verify the quote is from the repository collection
- Confirm original wording is preserved

### 8. Final Verification

```powershell
.\Scripts\Verify-Vocabulary.ps1
```

- Run verification script to confirm alphabetical order
- Check that no new issues were introduced
- Verify the script completes successfully

## Validation

The new vocabulary entry should:
- Be in the correct alphabetical position
- Follow all formatting standards
- Include accurate meaning, usage, grammar, synonyms, and antonyms
- Contain proper quote attribution
- Pass vocabulary verification script

## Troubleshooting

### Ordering Issues
- Run `.\Scripts\Verify-Vocabulary.ps1 -ShowMismatches` for detailed analysis
- Manually reorder words as needed
- Re-run verification to confirm fix

### Format Issues
- Refer to `.clinerules/rules/02-content-standards.md` for correct formats
- Check `.clinerules/rules/05-markdown-standards.md` for markdown standards
- Use `content-format-check` agent for detailed guidance

### Content Quality Issues
- Ensure definitions are practical and learnable
- Verify usage examples come from actual quotes
- Confirm context explanations are clear

## Completion Criteria

- New word is added to the correct letter file
- Entry is in proper alphabetical position
- All formatting standards are met
- Vocabulary verification passes
- Content quality aligns with educational principles