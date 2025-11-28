enamel <- data.frame(
  group = c("Human", "Shark", "Human\n(daily rinse 0.2% NaF)"),
  ld_mean = c(90, 36, 39),
  ld_sd = c(41, 7, 18),
  z_mean = c(1680, 965, 607),
  z_sd = c(1000, 270, 500)
)
enamel$group <- factor(enamel$group, levels = enamel$group)

usethis::use_data(enamel, overwrite = TRUE)
