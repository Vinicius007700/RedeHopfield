# arquivo: treinar_mnist.jl

# 1. Importe o pacote. Este passo é essencial!
using MLDatasets
using Printf # Para formatação de texto

println("Iniciando script de carregamento do MNIST...")

# 2. Carregue o dataset de treino usando a API moderna.
#    O `[:]` no final força o carregamento de todos os dados para a memória.
#    A primeira execução pedirá para baixar os dados.
train_x_raw, train_y = MNIST(split=:train)[:]

# 3. Converta o tipo dos dados para Float32 (mais comum para ML)
#    A conversão é feita *depois* do carregamento.
train_x = Float32.(train_x_raw)

# 4. O resto do seu código
num_images_to_load = 3
selected_images = train_x[:, :, 1:num_images_to_load]
selected_labels = train_y[1:num_images_to_load]

@printf "Formato dos dados carregados: %s\n" size(selected_images)
@printf "Rótulos das imagens carregadas: %s\n" selected_labels

println("\nScript concluído com sucesso!")
