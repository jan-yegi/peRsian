#' Discrete Color Scale for Persian Palettes
#'
#' Apply a discrete Persian color palette to the color aesthetic in ggplot2.
#'
#' @param name Name of the Persian palette to use. Options include:
#'   "pattern", "roses", "medallion", "yegi", "vase", and "floral".
#'   See \code{\link{persian_palettes}} for all available palette names.
#' @param direction Sets the order of colors in the scale. If -1, the order
#'   of colors is reversed.
#' @param ... Additional arguments passed to \code{\link[ggplot2]{discrete_scale}}.
#' @return A ggplot2 scale object.
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(diamonds, aes(carat, price, color = cut)) +
#'   geom_point() +
#'   scale_color_persian_d("fery")
scale_color_persian_d <- function(name, direction = 1, ...) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package 'ggplot2' is required for this function.", call. = FALSE)
  }
  ggplot2::discrete_scale(
    aesthetics = "colour",
    palette = function(n) persian_palette(name = name, n = n, direction = direction),
    ...
  )
}
#' Discrete Fill Scale for Persian Palettes
#'
#' Apply a discrete Persian color palette to the fill aesthetic in ggplot2.
#'
#' @param name Name of the Persian palette to use. Options include:
#'   "pattern", "roses", "medallion", "yegi", "vase", and "floral".
#'   See \code{\link{persian_palettes}} for all available palette names.
#' @param direction Sets the order of colors in the scale. If -1, the order
#'   of colors is reversed.
#' @param ... Additional arguments passed to \code{\link[ggplot2]{discrete_scale}}.
#' @return A ggplot2 scale object.
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(diamonds, aes(cut, price, fill = cut)) +
#'   geom_boxplot() +
#'   scale_fill_persian_d("munich")
scale_fill_persian_d <- function(name, direction = 1, ...) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package 'ggplot2' is required for this function.", call. = FALSE)
  }
  ggplot2::discrete_scale(
    aesthetics = "fill",
    palette = function(n) persian_palette(name = name, n = n, direction = direction),
    ...
  )
}

#' Continuous Color Scale for Persian Palettes
#'
#' Apply a continuous Persian color palette gradient to the color aesthetic in ggplot2.
#'
#' @param name Name of the Persian palette to use. Options include:
#'   "pattern", "roses", "medallion", "yegi", "vase", and "floral".
#'   See \code{\link{persian_palettes}} for all available palette names.
#' @param direction Sets the order of colors in the scale. If -1, the order
#'   of colors is reversed.
#' @param ... Additional arguments passed to \code{\link[ggplot2]{scale_color_gradientn}}.
#' @return A ggplot2 scale object.
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(diamonds, aes(carat, price, color = depth)) +
#'   geom_point() +
#'   scale_color_persian_c("tehran")
scale_color_persian_c <- function(name, direction = 1, ...) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package 'ggplot2' is required for this function.", call. = FALSE)
  }
  ggplot2::scale_color_gradientn(
    colors = persian_palette(name = name, direction = direction),
    ...
  )
}

#' Continuous Fill Scale for Persian Palettes
#'
#' Apply a continuous Persian color palette gradient to the fill aesthetic in ggplot2.
#'
#' @param name Name of the Persian palette to use. Options include:
#'   "pattern", "roses", "medallion", "yegi", "vase", and "floral".
#'   See \code{\link{persian_palettes}} for all available palette names.
#' @param direction Sets the order of colors in the scale. If -1, the order
#'   of colors is reversed.
#' @param ... Additional arguments passed to \code{\link[ggplot2]{scale_fill_gradientn}}.
#' @return A ggplot2 scale object.
#' @export
#' @examples
#' library(ggplot2)
#' ggplot(diamonds, aes(x = carat, y = price, z = depth)) +
#'   stat_summary_2d(fun = mean) +
#'   scale_fill_persian_c("tehran")
scale_fill_persian_c <- function(name, direction = 1, ...) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) {
    stop("Package 'ggplot2' is required for this function.", call. = FALSE)
  }
  ggplot2::scale_fill_gradientn(
    colors = persian_palette(name = name, direction = direction),
    ...
  )
}

#' @rdname scale_color_persian_d
#' @export
scale_colour_persian_d <- scale_color_persian_d

#' @rdname scale_color_persian_c
#' @export
scale_colour_persian_c <- scale_color_persian_c
