# Biodiversity_Biogeography_Upatras
A 2-day standalong workshop developed for the postgraduate students enrolled in the Applied Ecology and Environmental Management postgraduate studies programme offered by the Department of Biology, Faculty of Sciences, University of Patras

# Spatial Data Retrieval, Biodiversity and Biogeographical Patterns in R

[![DOI](https://zenodo.org/badge/1248075132.svg)](https://doi.org/10.5281/zenodo.20363115)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Quarto](https://img.shields.io/badge/Made%20with-Quarto-39729E.svg)](https://quarto.org/)
[![R version](https://img.shields.io/badge/R-%E2%89%A54.5.3-276DC3.svg)](https://www.r-project.org/)
[![renv](https://img.shields.io/badge/dependencies-renv-2C7FB8.svg)](https://rstudio.github.io/renv/)
[![targets](https://img.shields.io/badge/pipeline-targets-FF7043.svg)](https://docs.ropensci.org/targets/)
[![Publish](https://github.com/kkougiou/Biodiversity_Biogeography_Upatras/actions/workflows/publish.yml/badge.svg)](https://github.com/kkougiou/Biodiversity_Biogeography_Upatras/actions/workflows/publish.yml)
[![Code style: tidyverse](https://img.shields.io/badge/code%20style-tidyverse-1F77B4.svg)](https://style.tidyverse.org/)

> A two-day reproducible methodological seminar delivered at the **Department of Biology, University of Patras (2026)**, covering spatial data retrieval, cleaning, biodiversity analysis and species distribution modelling in R, with a Mediterranean focus.

🌐 **Live slides:** <https://kkougiou.github.io/Biodiversity_Biogeography_Upatras/>  
📄 **DOI:** <https://doi.org/10.5281/zenodo.20363115>  
✉️ **Contact:** kkougiou@aua.gr  

---

## 📚 What's inside

| Day | Topic | File |
|:---:|---|---|
| **1** | Spatial data retrieval, cleaning, harmonisation | `day1-spatial-data.qmd` |
| **2** | Biodiversity metrics, β-diversity, SDMs, reporting | `day2-biodiversity.qmd` |
| **★** | Case study — Mediterranean woody flora | `reports/case-study.qmd` |
| **✍️** | Hands-on student notebook | `exercises/exercise.qmd` |

The full **`{targets}` pipeline** rebuilds every figure and table in the seminar from raw GBIF / WorldClim / OSM data.

---

## 🚀 Quick start

### Option A — Reproduce locally (recommended)

```bash
# 1. Clone
git clone [https://github.com/yourusername/seminar-patras.git](https://github.com/yourusername/seminar-patras.git)
cd seminar-patras
