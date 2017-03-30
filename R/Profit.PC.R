Profit.PC<- function(r1.r2,price.pc,c.1,c.2,alfa,beta,teta,FC){


  p.1<- price.pc[1]
  p.2<- price.pc[2]

  no.buy <- as.matrix(r1.r2[(r1.r2[,1] <  p.1) & (r1.r2[,2] <  p.2) &
                              (1+teta)*(r1.r2[,1]+r1.r2[,2])<(p.1 + p.2),])

  buy.1  <- as.matrix(r1.r2[((r1.r2[,1] >= p.1) & ((r1.r2[,1] - p.1) >= (r1.r2[,2] - p.2))) &!
                              ((1+teta)*(r1.r2[,1]+r1.r2[,2])>=(p.1+ p.2) &
                                 (1+teta)*(r1.r2[,1]+r1.r2[,2])-(p.1+ p.2) >= (r1.r2[,1] - p.1) &
                                 (1+teta)*(r1.r2[,1]+r1.r2[,2])-(p.1+ p.2) >= (r1.r2[,2] - p.2)),])


  buy.2  <- as.matrix(r1.r2[(r1.r2[,2]>p.2) & ((r1.r2[,2] - p.2) >= (r1.r2[,1] - p.1)) &!
                              ((1+teta)*(r1.r2[,1]+r1.r2[,2])>=(p.1+ p.2) &
                                 (1+teta)*(r1.r2[,1]+r1.r2[,2])-(p.1+ p.2) >= (r1.r2[,1] - p.1) &
                                 (1+teta)*(r1.r2[,1]+r1.r2[,2])-(p.1+ p.2) >= (r1.r2[,2] - p.2)),])


  buy.1.2 <- as.matrix(r1.r2[
    ((1+teta)*(r1.r2[,1]+r1.r2[,2])   >= ( p.1 + p.2)) &
      ((1+teta)*(r1.r2[,1]+r1.r2[,2]) - (p.1 + p.2)) >= (r1.r2[,1] - p.1) &
      ((1+teta)*(r1.r2[,1]+r1.r2[,2]) - (p.1 + p.2)) >= (r1.r2[,2] - p.2) ,])

  n.1   <-  dim(buy.1)[1]
  n.2   <-  dim(buy.2)[1]
  n.1.2 <-  dim(buy.1.2)[1]

  t.c <- Cost.Bundle((n.1 + n.1.2 ),(n.2 + n.1.2),c.1,c.2,alfa,beta,FC)
  profit <- p.1*(n.1 + n.1.2) + p.2*(n.2+ n.1.2) - t.c
  c.s <- ifelse(n.1==0, 0, apply(buy.1, 2, sum)[1]) +
         ifelse(n.2==0, 0, apply(buy.2, 2, sum)[2]) +
         ifelse(n.1.2==0, 0, apply(buy.1.2, 2, sum)[1]) +
         ifelse(n.1.2==0, 0, apply(buy.1.2, 2, sum)[2])

    output.PC <-
    list(   profit = profit,
            c.s    =  c.s,  ################
            t.c    =  t.c,
            p.1    =  p.1,
            p.2    =  p.2,
         no.buy    = no.buy,
         buy.1     = buy.1,
         buy.2     = buy.2,
         buy.1.2   = buy.1.2)

return(output.PC)
}
