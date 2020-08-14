#' SVD imputation
#'
#' @param dataX Missing data to be imputed
#' @param m number of imputations
#'
#' @return
#' @export
#'
#' @examples
#' MICEimp <- SMICEmputation(dataX = "Cornell",m = 5)
newMICEImputation <- function(dataX, m){
  dataX<-mice(dataX, m=m,  method = "norm", diagnostics = FALSE , remove_collinear = FALSE)
  return(complete(dataX))
}
