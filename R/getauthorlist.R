#' get author list with all authors but not curators, in order, the function add this list to the panel information and return the panel.
#'
#' @param panels
#'
#' @return data.frame
#' @export
#'
#' @examples
#' getauthorlist(sdashpanels(5))
getauthorlist <- function(panels) {
  #initialise all authors
  panels$allauthors=NA
  #loop for each row: add external authors to list reorder list
  for (i in c(1:nrow(panels))){
    temp = panels$external_authors[i] [[1]]
    if (nrow(temp)>0){
      temp$email=NA
      temp2= dplyr::bind_rows(panels$authors[i] [[1]],temp)
      temp2= dplyr::arrange(temp2,author_role$order)
      panels$allauthors[i]=list(temp2)
    } else {
      panels$allauthors[i]= panels$authors[i]
    }
    # exclude curators from the list
    panels$allauthors[i] [[1]]= dplyr::filter(panels$allauthors[i][[1]], author_role$role != "curator")
  }
  return(panels)
}
