percentagens <- c(82.7, 17.3)
labels <- c("18-24 (82.7%)", "25-29 (17.3%)")

cores_respostas <- c("#B39DDB", "#FFD54F")

pie(percentagens, 
    labels = labels, 
    col = cores_respostas, 
    border = "white")

