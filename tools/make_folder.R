#
# TODO: 入れ子に対応したい。
# 任意のディレクトリを作らいたい.
#
MakeFolder <- function(folder_name = "") {
  # エラー出力定義
  ARG_ERR <- "\nArgments is Invalid!\n"

  # 現在のディレクトリを取得
  cur_wd <- getwd()

  #
  # 引数のチェック
  #
  if (class(folder_name) != "character" || length(folder_name) != 1) {
    stop(message = ARG_ERR)
  }

  if (folder_name == "") {
    folder_name <- Sys.Date()
  }

  # フォルダがなければ作成する
  folder_path <- paste0(cur_wd, "/", folder_name)
  if (!file.exists(folder_path)) {
    dir.create(folder_path)
  }

  return(folder_name)
}
