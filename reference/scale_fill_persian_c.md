# Continuous Fill Scale for Persian Palettes

Apply a continuous Persian color palette gradient to the fill aesthetic
in ggplot2.

## Usage

``` r
scale_fill_persian_c(name, direction = 1, n = 2, selection = "evenly", ...)
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

- n:

  Number of colors desired. Empty or -1 for all colors.

- selection:

  For discrete palettes, either "sequential" (default, selects adjacent
  colors) or "evenly" (maximizes distance between selected colors).

- ...:

  Additional arguments passed to
  [`scale_fill_gradientn`](https://ggplot2.tidyverse.org/reference/scale_gradient.html).

## Value

A ggplot2 scale object.

## Examples

``` r
library(ggplot2)
ggplot(enamel, aes(x = group, y = ld_mean, fill = ld_sd)) +
  geom_col() +
  scale_fill_persian_c("fery")
```
