# Since limma only accepts raw data matrix as input
# Here we simulate data matrix Y (from only one condition)
# which leads to betahat~N(beta,truesd) and sebetahat~truesd*chisq(df)/df.
# Here betahat=sample mean, sebetahat=se of betahat.

null_t_datamaker2 = function(seed,args){
  df = args$df
  if (!is.null(args$shape) & !is.null(args$rate)){
    truesd = 1/rgamma(args$nsamp, shape=args$shape, rate=args$rate)
  }else{
    truesd = 1
  }
  
  beta = rep(0,args$nsamp) 
  Y = matrix(rnorm(args$nsamp*(df+1),
                   mean=rep(beta,df+1),
                   sd=rep(sqrt(truesd^2*(df+1)),df+1)),ncol=df+1)
  sebetahat = sqrt(apply(Y,1,var)/(df+1))
  betahat = apply(Y,1,mean)
  
  meta=list(beta=beta,pi0=1)
  input=list(betahat=betahat,sebetahat=sebetahat,df=df,Y=Y)
  
  #end of meat of function
  
  data = list(meta=meta,input=input)
  
  return(data)
  
}

