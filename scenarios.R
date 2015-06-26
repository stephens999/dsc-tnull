sourceDir("datamakers")

#Now, for each scenario create an element of scenarios of the following form
addScenario(dsc_tnull,name="null.df4",
                    fn=null_t_datamaker,
                    args=list(
                      nsamp=1000, df=4
                      ),
                    seed=1:100)

addScenario(dsc_tnull,name="null.df10",
                    fn=null_t_datamaker,
                    args=list(
                      nsamp=1000, df=10
                    ),
                    seed=1:100)

addScenario(dsc_tnull,name="null.df100",
                    fn=null_t_datamaker,
                    args=list(
                      nsamp=1000, df=100
                    ),
                    seed=1:100)

addScenario(dsc_tnull,name="null.df1000",
                    fn=null_t_datamaker,
                    args=list(
                      nsamp=1000, df=1000
                    ),
                    seed=1:100)