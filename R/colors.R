#' @export
persian_palettes <- list(
  pattern = c("#cd9553", "#0d0f1b", "#fff3d0", "#d73b2a", "#680309", "#96906e", "#5e7c7d"),
  roses = c("#ecded2", "#d7aa9f", "#e7696e", "#cdddca", "#698d7d", "#476168", "#6a4c56", "#5e1d27"),
  medallion = c("#b4c7e3", "#2a7cbc", "#042141", "#e9fafd", "#d19d39", "#325f6b", "#6f0701", "#df6f3f"),
  vase = c("#610115", "#a17660", "#061721", "#4b433a", "#e8e4e5"),
  floral = c("#795e3f", "#131519", "#2a3f3e", "#532d23", "#7f4a31")
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
    stop(paste0("Palette not found: ", name))

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
