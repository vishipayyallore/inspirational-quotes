# Repository Structure

**Project**: Customer Churn Prediction ML (M.Sc. DSAI — Advanced Apex Project)

> **Single Source of Truth**: Refer to `docs/01-repository-structure.md` for the complete detailed structure.

## Quick Summary

- **`data/01-raw/`**: Immutable source datasets. Never modify.
- **`data/02-interim/`**: Cleaned intermediate artifacts from data understanding and preprocessing.
- **`data/03-processed/`**: Model-ready feature-engineered datasets.
- **`models/`**: Serialized model artifacts (`best_model.pkl`, `scaler.pkl`).
- **`notebooks/`**: Numbered workflow notebooks (`01_` through `05_` and `final_consolidated.ipynb`).
- **`src/data_preprocessing/`**: Reusable preprocessing logic.
- **`src/feature_engineering/`**: Feature creation and transformation.
- **`src/modeling/`**: Model training and inference.
- **`src/evaluation/`**: Metrics, validation, and model comparison.
- **`reports/`**: Report Markdown sources (`*.md`); agents edit these only. Swamy exports `.docx` → PDF for `submissions/`.
- **`reports/figures/`**: Exported charts and report-ready visuals.
- **`tests/`**: Pytest suite exercising the `src/` modules.
- **`tools/`**: Reusable PowerShell (`tools/psscripts/`) and Python (`tools/pyscripts/`) maintenance utilities; not part of the ML pipeline.
- **`docs/`**: Project documentation.
- **`submissions/`**: Hand-off packages per milestone. Each submission folder must be self-contained and must not expose internal work-item IDs.
