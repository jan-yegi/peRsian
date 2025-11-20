test_that("persian_palettes_colorblind_safe are consistently above thresholds", {
  # Helper function to conveniently calculate scores and assign a palette name
  calculate_palette_scores <- function(colors, palette_name, ...) {
    check_results <- colorblindcheck::palette_check(colors, ...)
    cbind(
      data.frame(palette = palette_name),
      check_results
    )
  }

  viridis_min_score <- 5.33

  persian_scores_df <- do.call(rbind, lapply(names(persian_palettes_colorblind_safe), function(palette_name) {
    calculate_palette_scores(
      persian_palette(palette_name),
      palette_name
    )
  }))

  persian_scores_df$above_threshold <- persian_scores_df$min_dist >= viridis_min_score

  expect_true(all(persian_scores_df$above_threshold), info = paste0(
    "The following palettes did not meet the minimum score of ", viridis_min_score, ":\n",
    paste0(
      persian_scores_df$palette[!persian_scores_df$above_threshold],
      " (min score: ",
      persian_scores_df$min_dist[!persian_scores_df$above_threshold],
      ")",
      collapse = "\n"
    )
  ))
})
