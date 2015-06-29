#' @title wrapper for vash+ash for shrinkage DSC
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
library(ashr)

vash_ash.wrapper = function(input,args){  
  va = vash(input$sebetahat,df=input$df,singlecomp=TRUE)
  sebetahat.new = c(sqrt(va$PosteriorRate/va$PosteriorShape))
  df.new = 2*va$PosteriorShape[1]
  res = do.call(ash, args= c(list(betahat=input$betahat,sebetahat=sebetahat.new,df = df.new),args))
  return(list(beta_est=res$PosteriorMean,pi0_est=get_pi0(res),lfsr=res$lfsr,q=res$qvalue))
}