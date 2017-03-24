filterOutCold<-function(info)
{
  attach(info)
  info<-na.omit(info)

    toRemove<-select(info, contains("COLD"))
    remove(toRemove)
  
  return(info)
}