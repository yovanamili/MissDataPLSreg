#' kNN imputation
#'
#' @param dataX Missing data to be imputed
#' @param k number of neighbors
#'
#' @return imputed data with the kNN method
#' @export
#'
#' @examples
#' KNNimp <- KNNImputation(dataX = "Cornell",k = 5)
  newkNNImputation <- function(dataX,k){
  dataX<-kNN(dataX,k=k,imp_var=FALSE)
  return (dataX)
}
