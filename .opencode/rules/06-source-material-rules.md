# Raw Data Governance

**Folder**: `data/01-raw/`
**Status**: Immutable — Read-Only

## Critical Restrictions

### Read-Only Policy

- **NEVER modify** any file inside `data/01-raw/`
- **NEVER overwrite** raw data files once added
- **NEVER delete** original dataset files
- Raw data is the **permanent reference** for all downstream processing

### No Deletion Policy

- Raw dataset files remain for the lifetime of the project
- Even if superseded by new data sources, keep originals for reproducibility

## Data Lifecycle

```
KaggleHub (blastchar/telco-customer-churn)
    ↓ (canonical download for notebooks)
notebooks/         ← analysis and transformation (reads from KaggleHub cache)
    ↓
data/01-raw/       ← offline snapshot of the dataset (read-only fallback)
    ↓ (read-only)
data/02-interim/   ← cleaned, intermediate outputs from preprocessing
    ↓
data/03-processed/ ← model-ready, feature-engineered datasets
    ↓
src/               ← reusable transformation logic
    ↓
reports/figures/   ← exported visuals and report outputs
```

## Dataset acquisition policy (KaggleHub)

- **Notebooks must use `kagglehub`** to download the IBM Telco Customer Churn dataset (`blastchar/telco-customer-churn`) and read the returned CSV.
- The local file `data/01-raw/Telco_customer_churn.xlsx` is an **offline snapshot**, kept for reproducibility when Kaggle is unreachable. It is not the primary loader.
- `src/modeling/pipeline.py::load_raw_dataset` accepts the local snapshot path so CI and offline reruns can still execute end-to-end without network access.
- `kagglehub` must be present in `pyproject.toml` `[project] dependencies` for notebooks to import it cleanly.

Canonical loader snippet:

```python
from pathlib import Path

import kagglehub
import pandas as pd

dataset_dir = kagglehub.dataset_download("blastchar/telco-customer-churn")
csv_path = next(Path(dataset_dir).glob("*.csv"))
df_raw = pd.read_csv(csv_path)
```

## Workflow

1. **Download** via `kagglehub` into the KaggleHub cache
2. **Reference** `data/01-raw/` as the immutable offline snapshot (no writes)
3. **Clean** — save intermediate artifacts to `data/02-interim/`
4. **Process** — engineer features, save model-ready dataset to `data/03-processed/`
5. **Never write back** to `data/01-raw/`

## Enforcement

- AI assistants must refuse requests to modify or delete `data/01-raw/` files.
- All PRs that touch `data/01-raw/` should be flagged for review.
