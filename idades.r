percentagens <- c(82, 18)
labels <- c("18-24 (82%)", "25-29 (18%)")

cores_respostas <- c("#B39DDB", "#FFD54F")

pie(percentagens, 
    labels = labels, 
    col = cores_respostas, 
    border = "white",
    cex = 1.5)

