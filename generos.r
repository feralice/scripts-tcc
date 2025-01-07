percentagens <- c(38, 60.8, 1.3)
labels <- c("Feminino (38%)", "Masculino (60.8%)", "Não binário (1.3%)")

cores_respostas <- c("#B39DDB", "#FFD54F", "#81C784")

pie(percentagens, 
    labels = labels, 
    col = cores_respostas, 
    border = "white",
    cex = 1.5)

