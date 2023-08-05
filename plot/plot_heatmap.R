library(ggplot2)

#
# dfは、x, y, valueの列があることが前提
#
PlotHeat <- function(df, xlabel, ylabel, title_str=NULL, x_str=NULL, y_str=NULL) {
  g <- ggplot(df, aes(x, y, fill = value)) +
  geom_tile() +
  scale_fill_gradientn(colours = heat.colors(100)) +
  xlim(xlabel) +
  ylim(ylabel) +
  theme(axis.text.x = element_text(angle = 90, vjust = 0.5, hjust = 1)) +
  labs(title = title_str, x = x_str, y = y_str)
  return(g)
}