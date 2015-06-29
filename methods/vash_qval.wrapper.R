#' @title wrapper for vash+qvalue for shrinkage DSC
#'
#' @description Runs ash to compute betahat values  
#' @details None
#' 
#' @param input a list with elements betahat and sebetahat
#' @param args a list containing other additional arguments to ash
#' 
#' @return output a list with the following elements
#' \item{beta_est}{vector containing point estimates for beta}
#'
library(vash)

vash_qval.wrapper=function(input,args=NULL){
  va = do.call(vash, args= c(list(sehat=input$sebetahat,df=input$df,betahat=input$betahat),args))
  res = qvalue(va$pvalue)
  return(list(beta_est=rep(NA,length(va$pvalue)),pi0_est=res$pi0,q=res$q,lfsr=rep(NA,length(va$pvalue))))  
  
}
