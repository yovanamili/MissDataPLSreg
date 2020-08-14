

Imputation_Data_PLSreg <- function(dataX,datay,Ncomp,NK, imputMethod,k=5, m=5){
  results <- list();
  AnalyzedDataImputation <- NULL
  if(imputMethod=="KNN"){
    dataX <- newkNNImputation(dataX,k);
    AnalyzedDataImputation <- AnalyzeImputation(dataX,datay,Ncomp,NK,imputMethod=imputMethod)
  }
  else if(imputMethod=="SVD"){
    dataX <- newSVDImputation(dataX, Ncomp);
    AnalyzedDataImputation <- AnalyzeImputation(dataX,datay,Ncomp,NK,imputMethod)
  }
  else{
    dataX <- newMICEImputation(dataX, m);
    AnalyzedDataImputation <- AnalyzeImputation(dataX,datay,Ncomp,NK,imputMethod)
  }

  results$ComponentsNumber <- AnalyzedDataImputation

  return(results)
}



