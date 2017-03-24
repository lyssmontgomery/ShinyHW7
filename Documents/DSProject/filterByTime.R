filterByTime<-function(info, timeSpan, desire)
{
  info<-na.omit(info)
  attach(info)
  
  toReturn
  if(timeSpan == 'weeks')
  {
    for(x in nrow(info))
    {
      if(info[x, week_num] == desire)
      {
        toReturn<-rbind(toReturn, info[x,])
      }
    }
    return(toReturn)
  }
  else if(timeSpan == 'months')
  {
    for(y in nrow(info))
    {
      if(info[y, occ_date]  == '_______01')
      {
        jan<-rbind(jan, info[y,])
      }
      else if(info[y, occ_date] == '________02')
      {
        feb<-rbind(feb, info[y,])
      }
      else if(info[y, occ_date] == '________03')
      {
        mar<-rbind(mar, info[y,])  
      }
      else if(info[y, occ_date] == '________04')
      {
        apr<-rbind(apr, info[y,])
      }
      else if(info[y, occ_date] == '________05')
      {
        may<-rbind(may, info[y,]) 
      }
      else if(info[y, occ_date] == '________06')
      {
        jun<-rbind(jun, info[y,])
      }
      else if(info[y, occ_date] == '________07')
      {
        jul<-rbind(jul, info[y,])
      }
      else if(info[y, occ_date] == '________08')
      {
        aug<-rbind(aug, info[y,])
      }
      else if(info[y, occ_date] == '________09')
      {
        sep<-rbind(sep, info[y,])
      }
      else if(info[y, occ_date] == '________10')
      {
        oct<-rbind(oct, info[y,])
      }
      else if(info[y, occ_date] == '________11')
      {
        nov<-rbind(nov, info[y,])
      }
      else if(info[y, occ_date] == '________12')
      {
        dec<-rbind(dec, info[y,])
      }
    }##end for
    return(desire)
  }
}