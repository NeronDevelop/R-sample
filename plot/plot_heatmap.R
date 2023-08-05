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
  theme(text=element_text(size = 20), legend.title=element_text(size = 15)) +
  theme(axis.text.x = element_text(angle = 90, size=15, vjust = 0.5, hjust = 1)) +
  theme(axis.text.y = element_text(size=15)) +
  labs(title = title_str, x = x_str, y = y_str)
  return(g)
}
