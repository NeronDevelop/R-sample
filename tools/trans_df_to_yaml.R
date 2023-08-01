#
# データフレームをyamlファイルに変換する
# TODO: 考えること
# ファイルを引数にとれないからとれるようにしたほうがいいかも...
#
TransDfToYaml <- function(df, output_path="output.yaml", id=TRUE) {
  # サブ関数
  output_element <- function(df, row_num, row_name) {
    return(paste0("    ", row_name, ": ", df[row_num, row_name], "\n"))
  }


  if (nrow(df) <= 0) {
    return
  }

  # 列名
  row_names <- names(df)
  sink(output_path)
  cat("---\n")
  for (row_num in seq_len(nrow(df))) {
    cat("-\n")
    if (id) {
      cat(paste0("    id: ", row_num, "\n"))
      for (row_name in row_names) {
        if (df[row_num, row_name] != "") {
          cat(output_element (df, row_num, row_name))
        }
      }
    }
  }
  sink()
  return
}
