# Continuous Fill Scale for Persian Palettes

Apply a continuous Persian color palette gradient to the fill aesthetic
in ggplot2.

## Usage

``` r
scale_fill_persian_c(name, direction = 1, ...)
```

## Arguments

- name:

  Name of the Persian palette to use. Options include: "pattern",
  "roses", "medallion", "yegi", "vase", and "floral". See
  `persian_palettes` for all available palette names.

- direction:

  Sets the order of colors in the scale. If -1, the order of colors is
  reversed.

- ...:

  Additional arguments passed to
  [`scale_fill_gradientn`](https://ggplot2.tidyverse.org/reference/scale_gradient.html).

## Value

A ggplot2 scale object.

## Examples

``` r
library(ggplot2)
ggplot(diamonds, aes(x = carat, y = price, z = depth)) +
  stat_summary_2d(fun = mean) +
  scale_fill_persian_c("yegi")
#> Error in persian_palette(name = name, direction = direction): Palette not found: yegi
```
