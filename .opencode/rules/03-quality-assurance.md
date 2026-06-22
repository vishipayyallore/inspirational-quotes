# Quality Assurance

## Code Quality Checklist

### Python Scripts (`src/`)

- [ ] Follows PEP 8 style guide.
- [ ] Type hints used for function arguments and return types.
- [ ] Docstrings included for all public functions and classes.
- [ ] No hardcoded paths (use `pathlib` or relative paths).
- [ ] Meaningful variable names (`monthly_charges_scaled` not `mcs`).

### Jupyter Notebooks (`notebooks/`)

- [ ] **Kernel Restart & Run All** passes without errors.
- [ ] Logical flow: Import → Load → Process → Visualize/Evaluate → Save.
- [ ] No hidden state (variables defined in deleted cells).
- [ ] Markdown cells clearly explain each major section.
- [ ] Visualizations have titles, labels, and legends.
- [ ] Fixed seed: `random_state=42` or `np.random.seed(42)` in all stochastic steps.
- [ ] Report figures saved to `reports/figures/`.

## Data Governance Checklist

- [ ] `data/01-raw/` unchanged — no modifications to original dataset files.
- [ ] Interim outputs in `data/02-interim/`; processed datasets in `data/03-processed/`.
- [ ] No large binary files committed to Git.

## Modelling Checklist

- [ ] Train/test split performed **before** any statistics-based transformation (scaling, encoding).
- [ ] No target leakage in preprocessing or feature engineering.
- [ ] Recall is prominently reported and contextualized for churn prediction.
- [ ] All standard metrics reported: Accuracy, Precision, Recall, F1, ROC-AUC, Confusion Matrix.

## Documentation Quality

- `README.md` must match actual implementation status.
- `docs/01-repository-structure.md` is the single source of truth for layout.
- Code comments explain the *why* (business or algorithmic reason), not just the *what*.
