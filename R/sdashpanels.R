#' Get open panels information
#'
#' @param group
#'
#' @return data.frame
#' @export
#'
#' @examples
#' sdashpanels()
#' sdashpanels(5)
#'
sdashpanels <- function(group = NA) {
  if(is.na(group)){
    res = httr::GET("https://sdash.sourcedata.io/public-api/panels")
  } else {
    res = httr::GET(paste0("https://sdash.sourcedata.io/public-api/groups/",group,"/panels"))
  }

  data = jsonlite::fromJSON(rawToChar(res$content))
  panels = data$DATA$data

  return(panels)
}
