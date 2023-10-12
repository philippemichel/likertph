#' facetlyk
#' Trace un graphique en barre par ligne de quelques items en Likert scale
#'
#' @param dfx tibble (format long)
#' @param titre titre du graphique
#'
#' @import ggplot2
#' @import colorspace
#'
#' @return graphique
#' @export
#'
#' @examples prepax(likx,1:6) |>  facetlik(titre = "Seances")
#'
facetlik <- function(dfx, titre = "") {
  dfx |>
    ggplot() +
    aes(x = value, fill = value) +
    geom_bar(stat = "count") +
    facet_wrap(~name, ncol = 1) +
    scale_fill_discrete_diverging(palette = "Green Orange") +
    theme_light() +
    labs(
      title = titre,
      subtitle = "",
      y = "n",
      fill = "Reponse",
      caption = titre
    ) +
    theme(
      plot.title = element_text(size = 18, face = "bold"),
      plot.subtitle = element_text(size = 12),
      axis.title.y = element_text(
        size = 12,
        angle = 90,
        vjust = .5
      ),
      axis.title.x = element_blank(),
      axis.text.x = element_text(
        size = 12,
        angle = 20,
        hjust = 0.5,
        vjust = 0.6
      ),
      axis.text.y = element_text(size = 12),
      legend.position = "none",
      strip.placement = "outside"
    )
}
