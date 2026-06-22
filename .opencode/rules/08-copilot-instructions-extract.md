# Copilot Instructions Extract

**Source**: `.github/copilot-instructions.md`
**Purpose**: Key guidelines for AI assistants working on this repository

## Repository Context

**Customer Churn Prediction ML** is an end-to-end ML project to predict customer churn using the IBM Telco dataset, built as Swamy's Advanced Apex Project for M.Sc. DSAI (Trimester 2).

### Project Scope

- **Dataset**: IBM Telco Customer Churn (Kaggle)
- **Models**: Logistic Regression (baseline), Decision Tree, Random Forest
- **Priority metric**: Recall (minimize missed churners)
- **Stack**: Python 3.12+, pandas, numpy, sklearn, matplotlib, seaborn, Jupyter

### Repository Layout

```text
data/01-raw/       → immutable source data (read-only)
data/02-interim/   → cleaned intermediate artifacts
data/03-processed/ → model-ready processed datasets
notebooks/         → numbered workflow notebooks (01–05, 99)
src/               → reusable Python modules (imported by notebooks/tests)
tools/psscripts/   → reusable PowerShell utilities (Verb-Noun.ps1)
tools/pyscripts/   → reusable Python helpers (snake_case.py)
reports/           → report Markdown sources (*.md); Swamy exports PDF for submissions
reports/figures/   → exported charts
docs/              → documentation
```

## Report authoring

- Agents write/update `reports/*.md` only — not `.docx` or `.pdf`.
- Swamy exports: `.md` → Word `.docx` → PDF via Adobe Acrobat online → copy into `submissions/<milestone>/reports/`.

## Development Guidelines

### Data Governance

- **`data/01-raw/` is read-only**: Never modify original dataset files.
- Interim outputs go to `data/02-interim/`; model-ready datasets go to `data/03-processed/`.
- **Dataset loading via KaggleHub**: Notebooks acquire the IBM Telco dataset through `kagglehub.dataset_download("blastchar/telco-customer-churn")`.

### Notebook Quality

- **Reproducibility**: `random_state=42` everywhere stochastic.
- **Clean runs**: `Kernel → Restart & Run All` must pass.
- **Concept first**: Markdown cell before code explaining the step.
- **Logical flow**: Import → Load → Process → Visualize/Evaluate → Save.

### Code Style

- Follow PEP 8; meaningful variable names; type hints in `src/`; no hardcoded paths.
- Comment the *why* of preprocessing and modelling decisions.

### Evaluation

- Report: Accuracy, Precision, Recall, F1, ROC-AUC, Confusion Matrix.
- Interpret results in business terms (customer retention, revenue impact).

## Quality Checklist

### Before Submitting Code/Notebooks

- [ ] `Kernel → Restart & Run All` passes without errors.
- [ ] All stochastic operations use `random_state=42`.
- [ ] Visualizations have titles, labels, and legends.
- [ ] No hardcoded paths (`pathlib` or relative paths).
- [ ] Code comments explain *why* (not just *what*).
- [ ] `data/01-raw/` is unchanged.
- [ ] Processed outputs in `data/03-processed/`.
- [ ] Report figures saved to `reports/figures/`.
- [ ] Any `submissions/` package is self-contained (no external path references).
- [ ] Student-facing submission artifacts do not include internal `WI-xxx` references.
