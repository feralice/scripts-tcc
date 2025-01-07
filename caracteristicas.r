library(ggplot2)
library(reshape2)

comportamentos <- c(
  'Necessidade de se esforçar demais',
  'Autossabotagem',
  'Adiar tarefas',
  'Medo de se expor',
  'Comparação com os outros',
  'Querer agradar a todos'
)

respostas_homens <- c(44, 35, 41, 26, 42, 28)
respostas_mulheres <- c(26, 25, 26, 28, 28, 19)
respostas_nao_binario <- rep(1, length(comportamentos))

dados <- data.frame(
  Comportamentos = comportamentos,
  Mulheres = respostas_mulheres,
  Homens = respostas_homens,
  `Não binário` = respostas_nao_binario
)

dados_long <- melt(dados, id.vars = "Comportamentos", variable.name = "Gênero", value.name = "Respostas")

cores_respostas <- c("#B39DDB", "#FFD54F", "#81C784")

grafico <- ggplot(dados_long, aes(x = Comportamentos, y = Respostas, fill = Gênero)) +
  geom_bar(stat = "identity", position = position_dodge(width = 0.7), width = 0.7) +
  geom_text(aes(label = Respostas), 
            position = position_dodge(width = 0.7), 
            hjust = -0.1, size = 3.5, color = "black") +
  scale_fill_manual(values = cores_respostas, 
                    labels = c("Feminino", "Masculino", "Não binário")) +
  coord_flip() +
  labs(
    x = "",
    y = "Número de respostas",
    fill = "Gênero"
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, color = "black"),
    axis.title.y = element_text(size = 10, color = "black"),
    axis.title.x = element_text(size = 12, color = "black"),
    axis.text = element_text(size = 14, color = "black"),
    legend.text = element_text(size = 10, color = "black"),
    legend.title = element_text(size = 12, hjust = 0.5, color = "black"),
    legend.position = c(1.2, 0.85),
    legend.direction = "vertical",
    legend.key.height = unit(0.6, 'cm'),
    legend.key.width = unit(1, 'cm'),
    legend.spacing.y = unit(0.4, 'cm'),
    legend.background = element_rect(fill = "white", color = "lightgray", size = 0.5),
    plot.margin = margin(10, 180, 10, 10)
  )

print(grafico)
