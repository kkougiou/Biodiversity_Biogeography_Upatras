# =============================================================
# Seminar Setup — University of Patras 2026
# Run once before rendering the presentation
# =============================================================

# --- 1. Install renv if missing -----------------------------
if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv")
}

# --- 2. Define required packages ----------------------------
required_pkgs <- c(
  # Spatial core
  "sf", "terra", "stars", "tmap", "leaflet", "mapview",
  
  # Data retrieval
  "rgbif", "rinat", "geodata", "elevatr", "rnaturalearth",
  "rnaturalearthdata", "CoordinateCleaner",
  
  # Biodiversity & ecology
  "vegan", "betapart", "iNEXT", "hillR",
  
  # Species distribution modelling
  "dismo", "predicts", "biomod2", "ENMeval", "blockCV",
  "usdm",
  
  # Tidyverse & visualization
  "tidyverse", "data.table", "janitor",
  "ggplot2", "ggspatial", "patchwork", "scales", "viridis",
  "ggtext", "ggdist",
  
  # Reporting
  "knitr", "kableExtra", "gt", "DT"
)

# --- 3. Install missing packages ----------------------------
to_install <- setdiff(required_pkgs, rownames(installed.packages()))
if (length(to_install) > 0) {
  install.packages(to_install, dependencies = TRUE)
}

# --- 4. Snapshot environment with renv ----------------------
renv::init()
renv::snapshot()

cat("\n✅ Setup complete. You can now render the seminar.\n")