#' Search a block of text for pp() functions contained in the #{function} brackets
#'
#' @return vector of R functions in pp brackets
#' @export
pp_probe <- function(text){
  gsub("[\\#\\{\\}]", "", regmatches(text, gregexpr("\\#\\{.*?\\}", text))[[1]])
}
