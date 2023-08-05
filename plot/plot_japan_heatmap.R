library(ggplot2)

# nrow(df) == fill_vecが前提
# 対応するfill_vecに埋まること
PlotMapHeat <- function(df, fill_vec, legend_name, title_str=NULL, x_str=NULL, y_str=NULL) { 
  g <- ggplot() +
    geom_sf(data = df, aes(fill = fill_vec), color = "white", size = 0.5) +
    coord_sf(datum = NA) +
    guides(fill = NULL) +
    theme(panel.background = element_rect(fill = "black", colour = "black")) +
    theme(text=element_text(size = 20), legend.title=element_text(size = 15)) +
    labs(title=title_str, ) +
    scale_fill_distiller(name = legend_name,　palette = "Oranges", direction = 1)
  return(g)
}