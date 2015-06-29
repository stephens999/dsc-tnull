# limma+ash
# input: Y - data matrix such that samplemean=betahat, sd(samplemean)=sebetahat
library(limma)
library(qvalue)
library(ashr)
limma_ash.wrapper = function(input,args){
  lmfit = lmFit(input$Y, rep(1,dim(input$Y)[2]))
  lmfit = eBayes(lmfit)
  res = do.call(ash, args= c(list(betahat=input$betahat,
                                  sebetahat=sqrt(lmfit$s2.post)*lmfit$stdev.unscaled, 
                                  df = lmfit$df.total[1]),args))
  return(list(beta_est=res$PosteriorMean,pi0_est=get_pi0(res),lfsr=res$lfsr,q=res$qvalue))
  
}