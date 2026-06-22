# File Naming Conventions

## Jupyter Notebooks (`notebooks/`)

Notebooks are numbered to reflect the ML workflow sequence:

- Format: `XX_descriptive_name.ipynb` (snake_case after the prefix)
- Example sequence:

```text
01_data_understanding.ipynb
02_data_preprocessing.ipynb
03_feature_engineering.ipynb
04_model_building.ipynb
05_model_evaluation.ipynb
final_consolidated.ipynb
```

Additional exploratory notebooks can use descriptive names without strict sequence numbers.

## Python Scripts (`src/`)

- Use snake_case (standard Python convention).
- Name by responsibility: `churn_encoder.py`, `churn_scaler.py`, `logistic_model.py`.
- No numeric prefix required in `src/`.

## Reusable Utilities (`tools/`)

`tools/` holds maintenance and reproducibility scripts that are **not** part of the ML pipeline.

- **`tools/psscripts/` (PowerShell):** `Verb-Noun.ps1` (PascalCase, approved verb). Examples: `Invoke-NotebookSmoke.ps1`, `Get-FigureSnapshot.ps1`.
- **`tools/pyscripts/` (Python):** snake_case `.py` files (PEP 8). Examples: `nb_run.py`, `nb_dump.py`.

Do not put reusable modelling code under `tools/`; that belongs in `src/`.

## Data Files (`data/`)

- Raw data: preserve the original filename (e.g., `Telco_customer_churn.xlsx`).
- Processed data: descriptive snake_case names (e.g., `telco_cleaned.csv`, `telco_features.csv`).

## Report Markdown (`reports/`)

Agents write and update **Markdown only** — the version-controlled source of truth for written reports.

| File | Purpose |
| --- | --- |
| `final-report-outline.md` | Live outline; updated continuously through all phases |
| `progress-report.md` | Week-5 Progress Report source |
| `final-report.md` | Final Report draft (Phase 6) |

- Use kebab-case stems with `.md` extension.
- Agents do **not** create or edit `.docx` / `.pdf` report exports unless Swamy explicitly asks.

## Report Figures (`reports/figures/`)

- Descriptive kebab-case names: `churn-distribution.png`, `roc-curve-comparison.png`, `feature-importance.png`.

## Documentation (`docs/`)

- Kebab-case filenames: `01-repository-structure.md`, `agent-skills.md`.
- No uppercase in filenames.
