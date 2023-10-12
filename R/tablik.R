#'tablik
#'
#'Table for some items on likert scale
#'
#' @param dfx tibble (long format)
#' @param expx If true, export on xls
#' @param classeur name of the xls document
#' @param nomtab name of the sheet
#'
#' @import baseph
#' @import gtsummary
#'
#' @return a table  and a table in xls
#' @export
#'
#' @examples prepax(likx,1:6) |>  tablik(expx = FALSE)
#'
tablik <- function(dfx, expx = FALSE, classeur = "",nomtab = "") {
  dfx |>
    tbl_cross(
      name,
      value,
      percent = "row",
      margin = "row",
      label = name ~ "items"
    ) |>
    modify_header(label ~ " ") |>
    modify_spanning_header(paste0("stat_", 1:5) ~ "R\u00e9ponse") |>
    bold_labels()  |>
    gexptabph(
      lg = FALSE,
      exp = expx,
      nomfich = classeur,
      nomsheet = nomtab
    )
}
