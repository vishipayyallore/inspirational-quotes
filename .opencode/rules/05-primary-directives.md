# Primary Directives

## Project Focus

This is an **end-to-end Machine Learning project** for customer churn prediction that:

- Uses the IBM Telco Customer Churn Dataset (Kaggle)
- Follows a structured ML workflow: EDA → Preprocessing → Feature Engineering → Modelling → Evaluation
- Prioritizes business-oriented interpretation alongside technical metrics
- Uses scikit-learn, pandas, numpy, matplotlib, seaborn, and Jupyter Notebooks

### Key Principles

- **Recall first**: Minimizing false negatives (missed churners) is the primary evaluation priority.
- **Reproducibility**: Fixed seeds, clean kernel runs, and documented outputs.
- **Business context**: Every model metric should be explained in terms of customer retention impact.
- **Modular code**: Reusable logic belongs in `src/`; exploration stays in `notebooks/`.

## Models and scope boundaries

**In scope**: Logistic Regression (baseline), Decision Tree (benchmark), Random Forest (benchmark), GridSearchCV tuning for LR and RF.

**Out of scope — never add**: XGBoost, ANN, Deep Learning, LLMs, APIs, dashboards, deployment, MLOps, containerisation.

## Expected metric thresholds (stop tuning once met)

| Metric | Threshold |
|--------|-----------|
| Accuracy | 75–85% |
| Recall | ≥ 70% |
| F1-Score | ≥ 70% |
| ROC-AUC | ≥ 0.75 |

Do not spiral beyond these thresholds — stop tuning when all are met.

## Submission artefacts

- `notebooks/final_consolidated.ipynb` — single submission notebook; must contain 12 required sections; must run clean end-to-end.
- `reports/data-dictionary.xlsx` — required submission artefact; 21 features exported from notebook.
- `reports/final-report-outline.md` — live report outline; updated continuously through all phases.
- `models/best_model.pkl` and `models/scaler.pkl` — required after Phase 3.
- Any deliverable folder under `submissions/` must be self-contained for offline review.
- Submission artifacts must not reference internal work-item identifiers (e.g., `WI-xxx`).

## Report authoring and export

**Agents** write and update report content in `reports/*.md` only. Markdown is the canonical, Git-tracked source.

**Swamy** produces university-facing PDFs manually via Word → Adobe Acrobat online.

Agents do **not** run PDF exporters unless Swamy explicitly requests it.

## Current State

- Active project: M.Sc. DSAI Advanced Apex Project (Trimester 2)
- Tech Stack: Python 3.12+, Jupyter, NumPy, Pandas, Matplotlib, Seaborn, scikit-learn
- NOT a web application or production system

## Documentation Accuracy

- Notebooks must accurately reflect the analysis and findings.
- `docs/01-repository-structure.md` is the single source of truth for the repo layout.
- Update `README.md` when project status or scope changes.

## Code Maintenance

- Notebooks must be reproducible (`Restart Kernel & Run All` must pass).
- Separate reusable logic into `src/` modules where appropriate.
- Use strict typing in Python scripts (`src/`) but relax it in notebooks for exploration.
