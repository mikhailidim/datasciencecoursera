# Coursera: R Programming Assestment 1
# by Michael Mikhailidi 
# 12/11/2015 11:56PM

pollutantmean<-function(directory,pollutant,id=1:332){
  # Combine data from files to single array
  td <- do.call(rbind,
  # Read All files from list                  
          lapply(sprintf("%s%s%03d.csv",directory,.Platform$file.sep,id),
                 read.csv,
  # Use column classes to speedup read.csv               
                 colClasses = c("character","numeric","numeric","integer")
                 )
          )
  # Get polutant mean without NA rows
  mean(td[[pollutant]],na.rm =T)
}