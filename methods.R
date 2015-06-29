sourceDir("methods")

addMethod(dsc_tnull,name="qvalue",fn =qvalue.wrapper,outputtype="output")

addMethod(dsc_tnull,name="ash.u",fn =ash.wrapper,outputtype="output", args=list(mixcompdist="uniform",method="fdr"))
# addMethod(dsc_tnull,name="ash.hu",fn =ash.wrapper,outputtype="output", args=list(mixcompdist="halfunif",method="fdr"))
# addMethod(dsc_tnull,name="ash.hu.betaeff",fn =ash.betaeff.wrapper,outputtype="output",args=list(mixcompdist="halfunif",method="fdr"))
# addMethod(dsc_tnull,name="ash.hu.sigmaeff",fn =ash.sigmaeff.wrapper,outputtype="output",args=list(mixcompdist="halfunif",method="fdr"))
# addMethod(dsc_tnull,name="ash.hu.ES",fn =ash.wrapper,outputtype="output",args=list(mixcompdist="halfunif",method="fdr",model="ES"))

addMethod(dsc_tnull,name="vash.sing+qvalue",fn =vash_qval.wrapper,outputtype="output",args=list(singlecomp=TRUE))
addMethod(dsc_tnull,name="vash.mix+qvalue",fn =vash_qval.wrapper,outputtype="output",args=list(singlecomp=FALSE))

addMethod(dsc_tnull,name="vash.sing+ash.u",fn =vash_ash.wrapper,outputtype="output",args=list(mixcompdist="uniform",method="fdr"))

addMethod(dsc_tnull,name="limma+qvalue",fn =limma_qval.wrapper,outputtype="output",args=list(robust=FALSE))
addMethod(dsc_tnull,name="limma.robust+qvalue",fn =limma_qval.wrapper,outputtype="output",args=list(robust=TRUE))

addMethod(dsc_tnull,name="limma+ash.u",fn =limma_ash.wrapper,outputtype="output",args=list(mixcompdist="uniform",method="fdr"))
