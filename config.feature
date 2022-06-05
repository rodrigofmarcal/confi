            #language: pt

            Funcionalidade: tela de configurar produtos
            Como cliente da Ebac-Shop
            Quero configurar os produtos de acordo com meu tamanho e gosto
            E escolher a quantidade
            Para depois inserir no carrinho de compras

            Contexto: Dado que eu acesse a pagina de produtos da loja Ebac-Shop

            Cenário: Limpar os dados da página 
            Quando eu selecionar o "tamanho", a "cor" e "quantidade" de produtos
            E clicar no botão "Limpar"
            Então deve "Apresentar a página sem os dados preenchidos"

            Esquema do Cenário: Configurar múltiplos pedidos para adicionar ao carrinho
            Quando eu selecionar os itens: <tamanho>, <cor> e <quantidade> de produtos
            E clicar no botão <carrinho>
            Então deve ser exibida a <mensagem>

            Exemplos:
            | tamanho      | cor       |quantidade| mensagem                            |
            | "tamanho s"  | "blue"    |   "1"    |"Adicionado ao carrinho com sucesso" |
            | "tamanho m"  | "red"     |   "2"    |"Adicionado ao carrinho com sucesso" |
            | "tamanho l"  | "orange"  |   "6"    |"Adicionado ao carrinho com sucesso" |
            | ""           | "orange"  |   "6"    |"Campos inválidos" |
            | "tamanho l"  | ""        |   "6"    |"Campos inválidos" |
            | "tamanho l"  | "orange"  |   ""     |"Campos inválidos" |
            | "tamanho s"  | "blue"    |   "10"   |"Adicionado ao carrinho com sucesso" |
            | "tamanho s"  | "blue"    |   "11"   |"Não adicionado, quantidade máxima por vez extrapolada" |