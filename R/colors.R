#' @export
persian_palettes <- list(
  fery = c("#b4c7e3", "#2a7cbc", "#042141", "#e9fafd", "#d19d39", "#325f6b", "#6f0701", "#df6f3f"),
  tehran = c("#ecded2", "#d7aa9f", "#e7696e", "#cdddca", "#698d7d", "#476168", "#6a4c56", "#5e1d27"),
  hamburg = c("#08122b", "#1d2f57", "#6a0008", "#f04070", "#c34b02", "#f8ae27", "#7b7609", "#dfc94c"),
  isfahan = c("#1c3c67", "#a0853d", "#a3b3b0", "#600c17", "#babeb0", "#a5959a", "#a96d62"),
  munich = c("#cd9553", "#0d0f1b", "#fff3d0", "#d73b2a", "#680309", "#96906e", "#5e7c7d"),
  leyli = c("#d18a40", "#414a5d", "#d9725a", "#aa4245", "#b4777b", "#a69184", "#597fa2", "#bfa357", "#6c6b61"),
  tabriz = c("#4c6468", "#a07226", "#ba806d", "#5f5d5d", "#7d4123", "#cab782"),
  abbas = c("#c6b9a2", "#919c9a", "#aba680", "#273642", "#7c7872", "#f0e8d5"),
  reyhaneh = c("#e24448", "#8b1a26", "#e06d1c", "#784030"),
  berlin = c("#f2cf7a", "#b5c3c6", "#b07f5b", "#b9a376", "#6893a7", "#304f56", "#b16342", "#9a3d49", "#d4b568", "#d6657a"),
  pooran = c("#976763", "#ead9b9", "#e93b3c", "#3861be", "#c5685c", "#acae93", "#608b93"),
  hooshang = c("#496186", "#c77e4f", "#ac5e58", "#ebd1aa"),
  floral = c("#795e3f", "#131519", "#2a3f3e", "#532d23", "#7f4a31")
)

persian_palette_names_colorblind_safe <- c(
  "fery", "isfahan", "munich", "abbas", "berlin", "pooran", "hooshang"
)
#' @export
persian_palettes_colorblind_safe <- persian_palettes[persian_palette_names_colorblind_safe]

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
persian_palette <- function(name, n, type = c("discrete", "continuous"), direction = c(1, -1)) {
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

  if (missing(direction)) {
    direction <- 1
  }
  stopifnot(direction %in% c(1, -1))
  if (direction == -1) {
    pal <- rev(pal)
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
  old <- graphics::par(
    mar = c(0.5, 0, 0.5, 0),
    bg = NA
  )
  on.exit(graphics::par(old))

  graphics::image(1:n, 1, as.matrix(1:n), col = x,
    ylab = "", xaxt = "n", yaxt = "n", bty = "n")

  half_rect_size <- 0.12
  graphics::rect(0, 1-half_rect_size, n + 1, 1+half_rect_size, col = grDevices::rgb(1, 1, 1, 0.8), border = NA)
  graphics::text((n + 1) / 2, 1, labels = attr(x, "name"), cex = 1.4, family = "serif")
}
