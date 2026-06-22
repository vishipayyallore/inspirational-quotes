---
name: notebook-validate
description: Validate Jupyter notebooks for quality and compliance
license: MIT
compatibility: opencode
metadata:
  workflow: quality
---

## What I do

- Verify Kernel Restart & Run All passes without errors
- Check `random_state=42` or `np.random.seed(42)` is used consistently
- Confirm figures are saved to `reports/figures/`
- Validate dataset loading uses `kagglehub.dataset_download("blastchar/telco-customer-churn")`
- Check for hidden state (variables defined only in deleted cells)
- Ensure markdown cells explain each major section before code

## When to use

Use this after editing notebooks (numbered `01_`–`05_` or `final_consolidated.ipynb`) to ensure they meet project quality standards before submission.
