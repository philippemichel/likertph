#' PREPAX
#'
#' Creat a long tibble with just the selected columns
#'
#' @param dfx data-frame to explore
#' @param col numbers of columns to treat
#'
#' @import tidyr
#' @return a tibble
#' @export
#'
#' @examples data("likph")'; prepax(tt,1:6)
#'
prepax <- function(dfx,col) {
  tabz <-   dfx |>
    tidyr::pivot_longer(col)
  return(tabz)
}

