sourceDir("datamakers")

#Now, for each scenario create an element of scenarios of the following form
# addScenario(dsc_tnull,name="null.df4",
#                     fn=null_t_datamaker,
#                     args=list(
#                       nsamp=1000, df=4
#                       ),
#                     seed=1:50)
# 
# addScenario(dsc_tnull,name="null.df10",
#                     fn=null_t_datamaker,
#                     args=list(
#                       nsamp=1000, df=10
#                     ),
#                     seed=1:50)
# 
# addScenario(dsc_tnull,name="null.df100",
#                     fn=null_t_datamaker,
#                     args=list(
#                       nsamp=1000, df=100
#                     ),
#                     seed=1:50)
# 
# addScenario(dsc_tnull,name="null.df1000",
#                     fn=null_t_datamaker,
#                     args=list(
#                       nsamp=1000, df=1000
#                     ),
#                     seed=1:50)

# put ig prior on sd
addScenario(dsc_tnull,name="null.igsd.df3",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=3,
              shape=5, rate=1
            ),
            seed=1:50)

addScenario(dsc_tnull,name="null.igsd.df10",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=10,
              shape=5, rate=1
            ),
            seed=1:50)

addScenario(dsc_tnull,name="null.igsd.df50",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=50,
              shape=5, rate=1
            ),
            seed=1:50)

addScenario(dsc_tnull,name="null.igsd.df1000",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=1000,
              shape=5, rate=1
            ),
            seed=1:50)

# flat prior for sd
addScenario(dsc_tnull,name="null.flatigsd.df3",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=3,
              shape=1.5, rate=1
            ),
            seed=1:50)

addScenario(dsc_tnull,name="null.flatigsd.df10",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=10,
              shape=1.5, rate=1
            ),
            seed=1:50)

addScenario(dsc_tnull,name="null.flatigsd.df50",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=50,
              shape=1.5, rate=1
            ),
            seed=1:50)

addScenario(dsc_tnull,name="null.flatigsd.df1000",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=1000,
              shape=1.5, rate=1
            ),
            seed=1:50)

# peaky prior for sd
addScenario(dsc_tnull,name="null.peakigsd.df3",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=3,
              shape=20, rate=1
            ),
            seed=1:50)

addScenario(dsc_tnull,name="null.peakigsd.df10",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=10,
              shape=20, rate=1
            ),
            seed=1:50)

addScenario(dsc_tnull,name="null.peakigsd.df50",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=50,
              shape=20, rate=1
            ),
            seed=1:50)

addScenario(dsc_tnull,name="null.peakigsd.df1000",
            fn=null_t_datamaker2,
            args=list(
              nsamp=1000, df=1000,
              shape=20, rate=1
            ),
            seed=1:50)