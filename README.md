# Stack Overflow Developer Survey - Data Analyst Trends (2023-2025)

> How deep does AI adoption go for Data Analysts compared to other data roles and how did it change from 2023 to 2025?

![Python](https://img.shields.io/badge/python-3.14-3776AB?logo=python&logoColor=white)
![uv](https://img.shields.io/badge/uv-package%20manager-DE5FE9?logo=python&logoColor=white)
![pandas](https://img.shields.io/badge/pandas-data%20cleaning-150458?logo=pandas&logoColor=white)
![Jupyter](https://img.shields.io/badge/jupyter-notebook-F37626?logo=jupyter&logoColor=white)
![SQL Server](https://img.shields.io/badge/sql%20server-analysis-CC2927?logo=microsoftsqlserver&logoColor=white)
![Tableau](https://img.shields.io/badge/tableau-public-E97627?logo=tableau&logoColor=white)
![License](https://img.shields.io/badge/license-MIT-green)

---

## Problem Statement

Companies want Data Analysts who also know how to work with AI tools but it's
not clear how much this changed the role or if it's the same in
data jobs. This project uses real survey data to check that year by year.

---

## Objective

Everyone says they "use AI" now, so this project looks past that surface
answer to check how deep the adoption really goes for Data Analysts such as trust
in AI for hard tasks and the move to AI agents compared to close data
roles and other developers from 2023 to 2025.

- Get and clean 3 years of Stack Overflow Developer Survey data
- Build a schema crosswalk to know what fields can be compared across years (see `docs/schema_crosswalk.md`)
- Explore the data with pandas and SQL
- Build a Tableau Public dashboard that it shows the findings clearly
- Write the findings in plain language

---

## Tech Stack

| Tool | Purpose |
|---|---|
| **Python 3.14** | Data cleaning and analysis |
| **uv** | Package manager |
| **pandas** | Load and clean the data |
| **Jupyter Notebook** | Show the analysis step by step |
| **Microsoft SQL Server** | SQL queries on the cleaned dataset |
| **Tableau Public** | Final dashboard, published as a link |
| **GitHub** | Documentation and version control |

---

## Dataset

**Source:** [Stack Overflow Developer Survey](https://survey.stackoverflow.co) - 2023, 2024 and 2025 editions.

The survey changes some questions every year, so column names and answer
formats are not always the same across years. See `docs/schema_crosswalk.md`
for the full breakdown of what's comparable and what's not.

> The raw CSVs are not in this repo. Download them from the link above and put
> them in `data/raw/`.

---

## Project Structure

```
dev-survey-analyst-trends/
│
├── data/
│   ├── raw/                       ← Downloaded CSVs (not tracked by git)
│   └── processed/                 ← Cleaned and unified dataset
│
├── notebooks/                     ← Analysis notebooks
│
├── sql/                           ← SQL queries against the cleaned dataset
│
├── docs/
│   ├── schema_crosswalk.md        ← Field by field comparison in the 3 years
│   └── screenshots/                ← Dashboard screenshots for this README
│
├── dashboard/                     ← Link and notes for the published Tableau dashboard
│
├── pyproject.toml
├── uv.lock
├── .gitignore
├── .gitattributes
├── README.md
└── LICENSE
```

---

## How to Run

```bash
# 1. Install uv, if you don't have it yet
# see https://docs.astral.sh/uv/getting-started/installation/

# 2. Clone the repository
git clone https://github.com/Ariel-10/dev-survey-analyst-trends.git
cd dev-survey-analyst-trends

# 3. Install dependencies
uv sync

# 4. Download the 3 CSVs from survey.stackoverflow.co and put them in data/raw/

# 5. Open the notebooks in order
uv run jupyter notebook notebooks/
```

---

## Key Findings

TODO - filled in once the analysis is done. This section is the one that
matters most: 3 to 5 clear findings, each one with a chart.

---

## Dashboard

TODO - link to the published Tableau Public dashboard with screenshots.

---

## Roadmap

- [x] Dataset selected and central question defined
- [x] GitHub repo set up
- [x] Schema crosswalk in 2023, 2024 and 2025
- [ ] Sample size and role name checks
- [ ] Data cleaning script - unified dataset built
- [ ] Exploratory analysis in pandas
- [ ] SQL queries for the key questions
- [ ] Tableau Public dashboard built and published
- [ ] Key Findings section written
- [ ] Final polish pass (chart choice, decluttering, focus)

---

## Author

**Ariel Ortega**
Data Analyst - Personal Portfolio Project

---

## License

This project is licensed under the MIT License. See [LICENSE](LICENSE) for details.
