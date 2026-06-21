---
description: Quality assurance standards for code and notebooks
globs: ["**/*"]
tags: ["dsp", "rules"]
canonical: .cursor/rules/04_quality-assurance.mdc
version: 1.0
---

# Quality Assurance

## Code Quality Checklist

### Python Scripts (`src/`)
- [ ] Follows PEP 8 style guide.
- [ ] Type hints used for function arguments and return types.
- [ ] Docstrings included for all functions and classes.
- [ ] No hardcoded paths (use `pathlib` or relative paths).

### Jupyter Notebooks (`src/weekN/03-notebooks/`)
- [ ] **Kernel Restart & Run All** passes without errors.
- [ ] Logical flow: Import -> Load Data -> Implement Algorithm -> Train -> Evaluate -> Visualize.
- [ ] No hidden state (variables defined in deleted cells).
- [ ] Markdown cells clearly explain the steps.
- [ ] Visualizations have titles, labels, and legends.

## Algorithm Implementation Checklist
- [ ] Algorithm implemented from scratch (not using sklearn directly).
- [ ] Mathematical correctness verified.
- [ ] Hyperparameters clearly documented.
- [ ] Performance metrics calculated and displayed.

## Content Review Checklist (Zero-Copy)
- [ ] **Originality Check**: Verify that text is not a direct copy from source material.
- [ ] **Synthesis**: Ensure content represents a synthesized understanding, not just rephrasing.
- [ ] **Citations**: Check that algorithms and specific claims are cited.

## Documentation Quality
- README.md must match actual implementation.
- Usage guides must be accurate.
- Code comments explain algorithm logic and concepts.
- Mathematical formulas correctly formatted (LaTeX in notebooks).
