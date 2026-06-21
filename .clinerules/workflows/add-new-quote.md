# Add New Quote — Workflow

Step-by-step process for adding new inspirational quotes to the repository with proper formatting and attribution.

## Purpose

Ensure consistent addition of new inspirational quotes with proper formatting, organization, and attribution standards.

## Prerequisites

- Identified a new inspirational quote to add
- Verified the quote's authenticity and attribution
- Determined appropriate category/theme for the quote
- Working directory is repository root

## Steps

### 1. Determine Category/Theme

- Review existing quote categories in `InspirationalQuotes/`
- Choose an existing category or plan to create a new one
- Common themes: motivation, leadership, perseverance, success, wisdom

### 2. Verify Quote Authenticity

Research and confirm:
- Accurate wording of the quote
- Proper attribution to the original author/source
- Original context and meaning preservation
- No copyright restrictions for educational use

### 3. Format the Quote Entry

Follow the standard quote entry format:
```
## Quote Title

> "Quote text goes here."

_— Author Name_

Brief explanation or context about the quote's meaning and relevance.
```

Example:
```
## The Power of Persistence

> "Success is not final, failure is not fatal: it is the courage to continue that counts."

_— Winston Churchill_

This quote emphasizes that neither success nor failure defines our journey permanently. What matters most is our resilience and determination to keep moving forward despite obstacles.
```

### 4. Choose Appropriate Title

- Create a descriptive, meaningful title (3-7 words)
- Reflect the core message or theme of the quote
- Avoid generic titles like "Inspirational Quote"
- Make it searchable and memorable

### 5. Proper Attribution Format

- Use italics for author attribution: `_— Author Name_`
- Include full name when known
- Add context (e.g., `_— Maya Angelou, Poet_`) if helpful
- Use "Unknown" if authorship cannot be verified

### 6. Add Educational Context

Provide a brief explanation that:
- Clarifies the quote's meaning
- Connects to educational or motivational value
- Relates to vocabulary or grammar learning when possible
- Keeps language clear and beginner-friendly

### 7. Select or Create Category File

- Place in existing themed file or create new one
- Use lowercase, hyphenated naming: `motivation.md`, `leadership-wisdom.md`
- Follow file naming conventions in `.clinerules/rules/08-file-naming-conventions.md`

### 8. Insert in Logical Position

- Add to the end of the file or group with similar themes
- Maintain consistent spacing between entries
- Ensure proper markdown formatting

### 9. Verify Proper Formatting

Check that the entry follows all standards:
- H2 heading for quote title
- Blockquote formatting for the quote text
- Italicized author attribution
- Clear contextual explanation
- Proper punctuation and spacing

### 10. Cross-Reference Vocabulary (Optional)

- Identify vocabulary words in the quote
- Ensure those words exist in vocabulary files
- Add new vocabulary words if needed (use add-new-vocabulary workflow)

### 11. Final Quality Check

Review the complete entry:
- Accurate quote text and attribution
- Proper formatting and structure
- Educational value and clarity
- Alignment with repository purpose

## Validation

The new quote entry should:
- Be properly attributed and authenticated
- Follow all formatting standards
- Include clear educational context
- Be placed in appropriate category file
- Maintain inspirational and educational value

## Troubleshooting

### Attribution Issues
- Research multiple sources to verify authorship
- Use "Unknown" if attribution cannot be confirmed
- Include additional context if author identity is uncertain

### Formatting Issues
- Refer to `.clinerules/rules/02-content-standards.md` for quote formatting
- Check `.clinerules/rules/05-markdown-standards.md` for markdown standards
- Use `content-format-check` agent for detailed guidance

### Content Quality Issues
- Ensure the quote is genuinely inspirational or educational
- Verify the explanation is clear and valuable
- Confirm language is appropriate for learners

## Completion Criteria

- New quote is added with proper formatting
- Accurate attribution is included
- Educational context is provided
- Entry is placed in appropriate category file
- Content quality aligns with repository standards
- All formatting standards are met