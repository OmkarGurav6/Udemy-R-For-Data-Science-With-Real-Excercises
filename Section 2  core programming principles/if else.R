
rm(ans)

x <- rnorm(1)

if(x > 1)
{
  ans <- "Greater than 1"
}else  if(x >= -1)
{ ans <- "Between -1 and 1"
}else                                   #don't write else on another line.
{
  ans <- "less than -1"
}                     
  
ans  


