function(info, tract)
{
  attach(info);
  info<-na.omit(info)
  myTract<-filter(info, census_tract == tract)
  return(myTract)
}