# Moderated t-test (Smyth, 2005)
# Using R package "limma"
# input: Y - data matrix such that samplemean=betahat, sd(samplemean)=sebetahat
library(limma)
library(qvalue)

limma_qval.wrapper = function(input,args){
  fit = lmFit(input$Y, rep(1,dim(input$Y)[2]))
  fit = eBayes(fit, robust=args$robust)
  pvalue = fit$p.value
  res = qvalue(pvalue)
  
  return(list(beta_est=rep(NA,length(pvalue)),pi0_est=res$pi0,q=res$q,lfsr=rep(NA,length(pvalue))))  
  
}
