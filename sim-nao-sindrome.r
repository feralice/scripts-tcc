percentagens <- c(88.9, 11.1)
labels <- c("Sim (88.78%)", "Não (11.22%)")
cores_respostas <- c("#B39DDB", "#FFD54F")

pie(percentagens, 
    labels = labels, 
    col = cores_respostas, 
    border = "white", 
    main = "Distribuição de Respostas", 
    cex = 1.8)
