# Coursera: R Programming Assestment 1
# by Michael Mikhailidi 
# 12/12/2015 11:08AM

complete <- function(directory,id = 1:332) {
             do.call(rbind,
                # Read All files from list                  
                   lapply(id,
                       function(x) {
                         #Get subset for current x
                         ss<-subset(read.csv(sprintf("%s%s%03d.csv",directory,.Platform$file.sep,x),
                                    # Use column classes to speedup read.csv               
                                    colClasses = c("character","numeric","numeric","integer")
                                            ),
                                    # Filter NA vlaues for both pollutants 
                                    !is.na(sulfate) & !is.na(nitrate)
                                   )
                        #create result list
                        c(id=x,nobs=length(ss[["ID"]]))
                       }
                   )
             )
}