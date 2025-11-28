# A Palette Generator Based on Persian Art

This is a collection of color palettes based on artifacts of persian
art.

## Usage

``` r
persian_palette(
  name,
  n,
  direction = c(1, -1),
  selection = c("sequential", "evenly")
)
```

## Arguments

- name:

  Name of desired palette.

- n:

  Number of colors desired. Empty or -1 for all colors.

- direction:

  Sets the order of colors in the palette. If 1, the default, colors are
  as output in the palette. If -1, the order of colors is reversed.

- selection:

  For discrete palettes, either "sequential" (default, selects adjacent
  colors) or "evenly" (maximizes distance between selected colors).

## Value

A vector of colours.
