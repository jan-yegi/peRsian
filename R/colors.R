#' @export
persian_palettes <- list(
  vase = c("#610115", "#a17660", "#061721", "#4b433a", "#e8e4e5")
)

#' A Palette Generator Based on Persian Art
#'
#' This is a collection of color palettes based on artifacts of persian art.
#'
#' @param n Number of colors desired.
#' @param name Name of desired palette.
#' @param type Either "continuous" or "discrete". Use continuous if you want
#'   to automatically interpolate between colours
#' @return A vector of colours.
#' @export
persian_palette <- function(name, n, type = c("discrete", "continuous")) {
  type <- match.arg(type)

  pal <- persian_palettes[[name]]
  if (is.null(pal))
    stop("Palette not found.")

  if (missing(n)) {
    n <- length(pal)
  }

  if (type == "discrete" && n > length(pal)) {
    stop("Number of requested colors greater than what palette can offer")
  }

  out <- switch(type,
    continuous = grDevices::colorRampPalette(pal)(n),
    discrete = pal[1:n]
  )
  as.palette(out, name)
}

#' @export
as.palette <- function(colors, name) {
  structure(colors, class = "palette", name = name)
}

#' @export
print.palette <- function(x, ...) {
  n <- length(x)
  old <- graphics::par(mar = c(0.5, 0.5, 0.5, 0.5))
  on.exit(graphics::par(old))

  graphics::image(1:n, 1, as.matrix(1:n), col = x,
    ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  graphics::rect(0, 0.9, n + 1, 1.1, col = grDevices::rgb(1, 1, 1, 0.8), border = NA)
  graphics::text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1, family = "serif")
}
