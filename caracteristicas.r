library(ggplot2)
library(reshape2)

# Definir os comportamentos
comportamentos <- c(
  'Necessidade de se esforçar demais',
  'Auto-sabotagem',
  'Adiar tarefas',
  'Medo de se expor',
  'Comparação com os outros',
  'Querer agradar a todos'
)

respostas_mulheres <- c(38, 35, 35, 35, 38, 27)
respostas_homens <- c(46, 36, 45, 27, 44, 29)
respostas_nao_binario <- rep(1, length(comportamentos))

# Criar um data frame com as respostas e comportamentos
dados <- data.frame(
  Comportamentos = comportamentos,
  Mulheres = respostas_mulheres,
  Homens = respostas_homens,
  `Não binário` = respostas_nao_binario
)

# Transformar os dados em formato longo para exibir corretamente
dados_long <- melt(dados, id.vars = "Comportamentos", variable.name = "Gênero", value.name = "Respostas")

# Cores pastel personalizadas
cores_respostas <- c("#B39DDB", "#FFD54F", "#81C784")

# Criar o gráfico de barras lado a lado (dodge)
grafico <- ggplot(dados_long, aes(x = Comportamentos, y = Respostas, fill = Gênero)) +
  geom_bar(stat = "identity", position = "dodge", width = 0.7) +
  scale_fill_manual(values = cores_respostas, 
                    labels = c("Feminino", "Masculino", "Não binário")) +  # Atualiza os rótulos da legenda
  coord_flip() +
  labs(
    x = "",
    y = "Número de respostas",
    fill = "Gênero"  # Título da legenda
  ) +
  theme_minimal() +
  theme(
    plot.title = element_text(hjust = 0.5, size = 18, color = "black"),  # Título em preto
    axis.title.y = element_text(size = 10, color = "black"),  # Título do eixo Y em preto
    axis.title.x = element_text(size = 12, color = "black"),  # Título do eixo X em preto
    axis.text = element_text(size = 14, color = "black"),  # Texto dos eixos em preto
    legend.text = element_text(size = 10, color = "black"),  # Texto da legenda em preto
    legend.title = element_text(size = 12, hjust = 0.5, color = "black"),  # Título da legenda em preto
    legend.position = c(1.2, 0.85),  # Ajusta a posição mais à direita e no topo
    legend.direction = "vertical",  # Define a legenda vertical
    legend.key.height = unit(0.4, 'cm'),  # Reduz a altura da chave da legenda
    legend.key.width = unit(0.8, 'cm'),  # Reduz a largura da chave da legenda
    legend.spacing.y = unit(0.3, 'cm'),  # Ajusta o espaçamento vertical entre os itens da legenda
    legend.background = element_rect(fill = "white", color = "lightgray", size = 0.5),  # Caixa ao redor da legenda
    plot.margin = margin(10, 180, 10, 10)  # Aumenta a margem direita para dar mais espaço à legenda
  )

# Exibir o gráfico
print(grafico)

