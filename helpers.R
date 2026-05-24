#' Spatially thin occurrence points
#'
#' @param pts An sf object with POINT geometry (assumed EPSG:4326).
#' @param cell_km Grid cell size in kilometres (default 5).
#' @return Thinned sf object — one record per cell.
thin_grid <- function(pts, cell_km = 5) {
  stopifnot(inherits(pts, "sf"))
  
  pts_proj <- sf::st_transform(pts, 2100)
  xy <- sf::st_coordinates(pts_proj)
  
  pts_proj |>
    dplyr::mutate(
      .cell = paste(
        floor(xy[, 1] / (cell_km * 1000)),
        floor(xy[, 2] / (cell_km * 1000))
      )
    ) |>
    dplyr::group_by(.cell) |>
    dplyr::slice(1) |>
    dplyr::ungroup() |>
    dplyr::select(-.cell) |>
    sf::st_transform(4326)
}

#' Quick GBIF retrieval wrapper for a country
#'
#' @param sp Scientific name (character).
#' @param iso2 ISO2 country code (default "GR").
#' @param n Maximum number of records.
#' @return Tidy tibble of cleaned occurrences.
get_gbif <- function(sp, iso2 = "GR", n = 5000) {
  key <- rgbif::name_backbone(name = sp)$usageKey
  if (is.null(key)) {
    stop("Could not resolve taxon: ", sp)
  }
  
  rgbif::occ_search(
    taxonKey           = key,
    country            = iso2,
    hasCoordinate      = TRUE,
    hasGeospatialIssue = FALSE,
    limit              = n
  )$data |>
    dplyr::select(
      species, decimalLongitude, decimalLatitude,
      year, basisOfRecord
    )
}