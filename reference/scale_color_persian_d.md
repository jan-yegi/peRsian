# Discrete Color Scale for Persian Palettes

Apply a discrete Persian color palette to the color aesthetic in
ggplot2.

## Usage

``` r
scale_color_persian_d(name, direction = 1, ...)

scale_colour_persian_d(name, direction = 1, ...)
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
  [`discrete_scale`](https://ggplot2.tidyverse.org/reference/discrete_scale.html).

## Value

A ggplot2 scale object.

## Examples

``` r
library(ggplot2)
ggplot(diamonds, aes(carat, price, color = cut)) +
  geom_point() +
  scale_color_persian_d("roses")
#> Error in persian_palette(name = name, n = n, direction = direction): Palette not found: roses
```
