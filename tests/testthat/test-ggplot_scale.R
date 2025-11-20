test_that("discrete Persian scales work without errors", {
  skip_if_not_installed("ggplot2")

  # Test scale_color_persian_d
  expect_no_error({
    p <- ggplot2::ggplot(ggplot2::diamonds, ggplot2::aes(carat, price, color = cut)) +
      ggplot2::geom_point() +
      scale_color_persian_d("fery")
  })

  # Test scale_fill_persian_d
  expect_no_error({
    p <- ggplot2::ggplot(ggplot2::diamonds, ggplot2::aes(cut, price, fill = cut)) +
      ggplot2::geom_boxplot() +
      scale_fill_persian_d("munich")
  })
})

test_that("continuous Persian scales work without errors", {
  skip_if_not_installed("ggplot2")

  # Test scale_color_persian_c
  expect_no_error({
    p <- ggplot2::ggplot(ggplot2::diamonds, ggplot2::aes(carat, price, color = depth)) +
      ggplot2::geom_point() +
      scale_color_persian_c("tehran")
  })

  # Test scale_fill_persian_c
  expect_no_error({
    p <- ggplot2::ggplot(ggplot2::diamonds, ggplot2::aes(x = carat, y = price, z = depth)) +
      ggplot2::stat_summary_2d(fun = mean) +
      scale_fill_persian_c("tehran")
  })
})
