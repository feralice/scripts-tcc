# Dados pegos do google forms
percentagens <- c(42.9, 56.1, 1)
labels <- c("Feminino (42.9%)", "Masculino (56.1%)", "Não binário (1%)")

cores_respostas <- c("#B39DDB", "#FFD54F", "#81C784")

pie(percentagens, 
    labels = labels, 
    col = cores_respostas, 
    border = "white")

