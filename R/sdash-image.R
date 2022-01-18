#' Download image related to panel id
#'
#' @param panelid
#' @param panelsubtype
#'
#' @return
#' @export
#'
#' @examples
#' sdashimage(372)
sdashimage <- function(panelid= NA, panelsubtype= "png") {
  if(is.na(panelid)){
    stop("the function needs a panelid")
  } else {

    res = httr::GET(paste0("https://sdash.sourcedata.io/public-api/panels/",panelid,"/image"))
  }
  if (res$status_code == 404) stop ("panel not found")

  data = magick::image_read(res$content)

  return(data)
}
