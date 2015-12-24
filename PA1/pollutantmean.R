pollutantmean <- function(directory, pollutant, id = 1:332) {

  y <- vector(mode="numeric", length=0)
  
  for (i in id){
    if (i<10){
      d<-"00"
    } else if (i<100){
      d<-"0"
    } else{
      d<-""
    }
    
    f <- paste(directory,"/",d,i,".csv",sep="")
    data <- read.csv(f)
    y <- c(y,data[[pollutant]])
  }
  
  mean(y,na.rm=TRUE)
}