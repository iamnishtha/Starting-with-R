library(ggcorrplot)
 data(mtcars)
 corr <- round(cor(mtcars), 1)
 head(corr[, 1:6])
 
#default square plotting correlation
 ggcorrplot(corr)

#circle plotting
 ggcorrplot(corr, method = "circle")

#hclust function is used to cluster the data(hierrarchical clustering)
 ggcorrplot(corr, hc.order = TRUE, outline.color = "white")

#lower triangle is formed
 ggcorrplot(corr,
            hc.order = TRUE,
            type = "lower",
            outline.color = "white")

#upper triangle is formed
 ggcorrplot(corr,
            hc.order = TRUE,
            type = "upper",
            outline.color = "white")  

#values are displayed on the correlation graph
 ggcorrplot(corr,
            hc.order = TRUE,
            type = "lower",
            lab = TRUE)

