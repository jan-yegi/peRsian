# Continuous Color Scale for Persian Palettes

Apply a continuous Persian color palette gradient to the color aesthetic
in ggplot2.

## Usage

``` r
scale_color_persian_c(name, direction = 1, ...)

scale_colour_persian_c(name, direction = 1, ...)
```

## Arguments

- name:

  Name of the Persian palette to use. Options include: "munich", "fery",
  "tehran", "leyli", "tabriz", "hooshang", "reyhaneh", "floral",
  "hamburg", "pooran", "abbas", "isfahan", "berlin" See
  [`persian_palettes`](https://jan-yegi.github.io/peRsian/reference/persian_palettes.md)
  for all available palette names.

- direction:

  Sets the order of colors in the scale. If -1, the order of colors is
  reversed.

- ...:

  Additional arguments passed to
  [`scale_color_gradientn`](https://ggplot2.tidyverse.org/reference/scale_gradient.html).

## Value

A ggplot2 scale object.

## Examples

``` r
library(ggplot2)
ggplot(diamonds, aes(carat, price, color = depth)) +
  geom_point() +
  scale_color_persian_c("tehran")
```
