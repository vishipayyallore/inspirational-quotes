# Notebook and Analysis Quality Rules

**Context**: End-to-end ML project for customer churn prediction.
**Priority**: HIGH

## Core principles

### Notebook clarity

- **Concept first**: Add a markdown cell explaining the purpose of each major section before the code.
- **Numbered workflow**: Notebooks are numbered `01_` through `05_` to reflect the ML pipeline sequence.
- **Reproducibility**: Always set `random_state=42` or `np.random.seed(42)`. All stochastic steps must use a fixed seed.
- **No hidden state**: A clean `Kernel → Restart & Run All` must pass without errors.
- **Dataset loading via KaggleHub**: Notebooks must acquire the IBM Telco Customer Churn dataset using `kagglehub.dataset_download("blastchar/telco-customer-churn")` and read the CSV file from the returned cache directory. The local file at `data/01-raw/Telco_customer_churn.xlsx` is an offline snapshot only, not the primary loader.

### Zero-copy policy

- **No copy-paste submissions**: Do not copy source-material, institutional guidance, templates, PDFs, or web text verbatim into notebooks, reports, README content, or work items.
- **Transform into Swamy's own analysis**: Summarize requirements and observations in project-specific language tied to this customer churn workflow.
- **Quote sparingly**: Short labels, titles, required section names, dataset names, and exact metric names may be quoted when accuracy requires it.
- **Cite the source path or URL**: When using external or institutional material, reference the source instead of reproducing long passages.
- **Keep raw/source files unchanged**: Treat `data/01-raw/` and `docs/requirements/` as reference material, not editable working copies, unless Swamy explicitly asks for a planning-document update.

### Analysis quality

- **EDA completeness**: Include churn distribution, feature distributions, correlation analysis, and service-wise churn trends.
- **Preprocessing justification**: Comment on the *why* for each preprocessing choice (e.g., median vs. mean imputation).
- **Feature engineering rationale**: Document the business intuition behind engineered features.
- **Model selection**: Justify model choices relative to the churn prediction problem.

### Chart interpretation standard (three-part)

Every EDA visualization must include all three of the following in its accompanying markdown or inline comment:

1. **Observation** — what the chart shows (factual, data-driven).
2. **Business interpretation** — what the pattern means for customer retention.
3. **ML implication** — how the finding influences feature selection, encoding, or model design.

Skipping any part is non-compliant.

### Data leakage prevention

- Fit all transformers (scalers, encoders, imputers) **on training data only**.
- Transform validation and test sets using the **already-fitted** objects.
- Never fit on the full dataset before the train-test split.
- Violation: fitting `StandardScaler` or `LabelEncoder` on `X` before `train_test_split`.

### Train-test split requirement

- Always use `stratify=y` when calling `train_test_split` to preserve the churn class ratio.
- Reason: the dataset is imbalanced (~26% churn); a non-stratified split can yield misleading evaluation metrics.

### Evaluation emphasis

- Prioritize **Recall** for churn prediction (minimize false negatives — missing a churner costs more than a false alarm).
- Report Accuracy, Precision, Recall, F1-Score, ROC-AUC, and Confusion Matrix for each model.
- **Expected thresholds** (stop tuning once met): Accuracy 75–85%, Recall ≥ 70%, F1 ≥ 70%, ROC-AUC ≥ 0.75.
- Include business interpretation with quantified impact (e.g., estimated retention value).

## Code in notebooks

- **Comments**: Explain the *why* of each step — preprocessing decision, feature choice, hyperparameter.
- **Variable names**: Use descriptive names (`churn_label`, `tenure_group`, `monthly_charges_scaled`).
- **Visualization standards**: All plots must have titles, axis labels, and legends. Save report figures to `reports/figures/`.

## Voice and tone

- First-person analysis journal: "I observed…", "I chose…", "The result indicates…"
- Avoid generic boilerplate. Relate findings to the business problem (customer retention).

## Markdown standards in notebooks

- Use H2 (`##`) for major sections and H3 (`###`) for subsections.
- Use blockquotes (`>`) for key findings or interpretations.
- Use tables for model comparison results.
