#Find the pvalue from the gotten solution in number 11. 
#t = 0.67
#df = 19
#find both LEFT and RIGHT TAILS
pvalLeft <- pt(q= -0.67, df=19,lower.tail = TRUE)
pvalLeft
pvalRight <- pt(q= 0.67, df=19,lower.tail = FALSE)
pvalRight

