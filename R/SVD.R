#' SVD imputation
#'
#' @param dataX Missing data to be imputed
#' @param Ncomp the rank of the SVD approximation
#'
#' @return
#' @export
#'
#' @examples
#' SVDimp <- SVDImputation(dataX = "Cornell",Ncomp = 5)
  newSVDImputation <- function(dataX, Ncomp){
  dataX<-impute.svd(dataX,k=Ncomp,maxiter=1000)$x
  return(dataX)
}
