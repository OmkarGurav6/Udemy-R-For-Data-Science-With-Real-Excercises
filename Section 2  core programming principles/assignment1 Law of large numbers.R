
# law of large numbers is that mean starts to 
# converge towards expected value as we increase number
# of experiments.

n <- 10000000
count <- 0

for(i in rnorm(n))
{
  if(i < 1 & i > -1)
  {
    count <- count+1
  }
}

ans <- count/n

ans 

# expected value is 68.2 %