#' initiate API contact
#'
#' @return response
#' @export
#'
#' @examples
#' sdashcontact()
sdashcontact <- function() {
  res = httr::GET("https://sdash.sourcedata.io/public-api")
}
