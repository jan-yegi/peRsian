#' Enamel Microstructure Data
#'
#' A dataset containing measurements of enamel microstructure parameters
#' from different enamel types, including human enamel and shark enamel,
#' with and without fluoride treatment.
#'
#' @format A data frame with 3 rows and 5 variables:
#' \describe{
#'   \item{group}{Type of enamel sample (character)}
#'   \item{ld_mean}{Mean crystallite size in micrometers (numeric)}
#'   \item{ld_sd}{Standard deviation of crystallite size in micrometers (numeric)}
#'   \item{z_mean}{Mean volume percentage in vol% μm (numeric)}
#'   \item{z_sd}{Standard deviation of volume percentage in vol% μm (numeric)}
#' }
#'
#' @details
#' The dataset includes three enamel types:
#' \itemize{
#'   \item Human enamel (untreated)
#'   \item Shark enamel
#'   \item Human enamel with daily rinse treatment using 0.2% NaF (sodium fluoride)
#' }
#'
#' @source Ögaard, B., Rölla, G., Ruben, J., Dijkman, T., & Arends, J. (1988). Microradiographic study of demineralization of shark enamel in a human caries model. European Journal of Oral Sciences, 96(3), 209-211. https://doi.org/10.1111/j.1600-0722.1988.tb01545.x
"enamel"
