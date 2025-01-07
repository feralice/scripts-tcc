percentagens <- c(92.41, 7.59)
labels <- c("Sim (92.41%)", "Não (7.59%)")
cores_respostas <- c("#B39DDB", "#FFD54F")

pie(percentagens, 
    labels = labels, 
    col = cores_respostas, 
    border = "white", 
    main = "Distribuição de Respostas", 
    cex = 1.8)
