# A Palette Generator Based on Persian Art

This is a collection of color palettes based on artifacts of persian
art.

## Usage

``` r
persian_palette(
  name,
  n,
  type = c("discrete", "continuous"),
  direction = c(1, -1)
)
```

## Arguments

- name:

  Name of desired palette.

- n:

  Number of colors desired.

- type:

  Either "continuous" or "discrete". Use continuous if you want to
  automatically interpolate between colours

## Value

A vector of colours.
