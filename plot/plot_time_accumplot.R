# ライブラリーのロード
library(ggplot2)


plotTimeAccumPlot <- function(df, time_label, title_str=NULL, x_str=NULL, y_str=NULL, legend_if=TRUE) {
  time_label_loc <- seq(1, length(time_label)) + 0.0
  g <- ggplot(df, aes(x=time, y=value, fill=group)) + 
       geom_area() + 
       scale_x_continuous(label=time_label, 
                          breaks=time_label_loc, 
                          guide = guide_axis(angle = 90)) +
       labs(title=title_str, x=x_str, y=y_str)
  if (!legend_if) {
    g <- g + theme(legend.position = "none")
  }
  return(g)
}