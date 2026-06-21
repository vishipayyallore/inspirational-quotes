# Review Content Standards — Workflow

Periodic review process for ensuring all content aligns with repository quality standards and educational principles.

## Purpose

Conduct comprehensive review of content quality, formatting, and educational value to maintain repository standards.

## Prerequisites

- Familiarity with repository content standards
- Access to Cline agents for automated checks
- Working directory is repository root
- Sufficient time for thorough review (1-2 hours)

## Steps

### 1. Preparation

- Review current standards documentation:
  - `.clinerules/rules/02-content-standards.md`
  - `.clinerules/rules/04-quality-assurance.md`
  - `.clinerules/rules/05-markdown-standards.md`
- Gather recent feedback or issues to address
- Plan review schedule to cover all content areas

### 2. Automated Quality Assurance

Invoke the `quality-assurance-review` agent:
- Execute complete content quality checklist
- Run vocabulary order verification
- Check content formatting standards
- Validate file naming conventions
- Verify markdown standards compliance

### 3. Quote Content Review

Review inspirational quotes for:
- **Authenticity**: Accurate wording and proper attribution
- **Educational Value**: Inspiring or teaching life lessons
- **Formatting**: Proper H2 headings, blockquotes, attribution
- **Organization**: Appropriate thematic categorization
- **Relevance**: Continued alignment with learning objectives

### 4. Vocabulary Content Review

Review vocabulary definitions for:
- **Clarity**: Clear, practical definitions for learners
- **Usage Examples**: Real examples from repository quotes
- **Context**: Helpful explanations of word usage
- **Organization**: Alphabetical ordering within files
- **Completeness**: All required sections present

### 5. Grammar Content Review

Review grammar learning materials for:
- **Progression**: Building complexity from basics to advanced
- **Examples**: Clear examples from actual repository quotes
- **Explanations**: Beginner-friendly before technical terms
- **Exercises**: Practical activities with clear instructions
- **Structure**: Proper heading hierarchy and organization

### 6. Daily Learning Plan Review

Review learning plans for:
- **Time-boxing**: Achievable in 18-minute sessions
- **Balance**: Mix of vocabulary, grammar, and quote reflection
- **Progression**: Skills build systematically over time
- **Actionability**: Specific, clear tasks and activities
- **Relevance**: Current and useful for learners

### 7. File Organization Audit

Invoke the `file-organization-audit` agent:
- Verify directory structure compliance
- Check file naming conventions
- Validate file placement
- Identify orphaned or misplaced files
- Verify cross-references and links

### 8. Markdown Standards Enforcement

Invoke the `markdown-standards-enforcement` agent:
- Verify documentation file standards
- Check quote entry formatting
- Validate vocabulary entry formatting
- Verify grammar entry formatting
- Check code example and visual content standards

### 9. Educational Value Assessment

Evaluate overall educational impact:
- **Motivation**: Content encourages continued learning
- **Practicality**: Information is learnable and useful
- **Connection**: Links between vocabulary, grammar, and quotes
- **Progression**: Skills build logically over time
- **Accessibility**: Language is clear and beginner-friendly

### 10. Fresh Perspective Review

Take a break, then review with fresh eyes:
- Read sample content as a new learner
- Check for consistency in tone and style
- Verify explanations are clear and helpful
- Ensure content remains engaging and motivational
- Look for areas that might confuse beginners

### 11. Document Findings

Record review results:
- List of issues found with specific file/line references
- Priority ranking of issues (critical, high, medium, low)
- Suggestions for improvements
- Areas that exceed standards and should be maintained
- New standards or guidelines that may be needed

### 12. Action Planning

Create plan for addressing issues:
- Immediate fixes for critical problems
- Schedule for medium/lower priority improvements
- Assign responsibilities if working in team
- Timeline for completing all improvements
- Follow-up review dates

## Validation

Review should result in:
- Comprehensive understanding of current content quality
- Documented list of issues and improvement opportunities
- Clear action plan for addressing problems
- Confirmation of areas meeting or exceeding standards
- Updated understanding of content effectiveness

## Troubleshooting

### Discrepancies in Standards
- Refer to precedence order in `.clinerules/AGENTS.md`
- Consult with project maintainers on conflicts
- Document decisions for future reference
- Update documentation when resolving conflicts

### Time Constraints
- Prioritize critical issues affecting learning experience
- Break large reviews into focused sessions
- Focus on recently added or modified content
- Use automated agents to cover more ground efficiently

### Quality Disputes
- Test content with actual learners when possible
- Seek second opinions on educational value
- Refer to core principles in `.clinerules/AGENTS.md`
- Document reasoning behind quality decisions

## Completion Criteria

- All content areas reviewed against current standards
- Issues documented with specific references
- Action plan created for improvements
- No critical quality issues remaining unresolved
- Review findings shared with relevant stakeholders
- Follow-up actions scheduled and assigned

## Recommended Frequency

- Monthly: Quick automated checks and sampling review
- Quarterly: Comprehensive content standards review
- Annually: Full repository quality audit and standards update