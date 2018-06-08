programa
{
	
	inclua biblioteca Graficos
	inclua biblioteca Teclado
	inclua biblioteca Util

	/* Tamanho da tela do jogo */
	const inteiro LARGURA_DA_TELA = 950, ALTURA_DA_TELA = 650

	inteiro background
	inteiro thor_parado
	inteiro thor_correndo_dir
	inteiro thor_correndo_esq
	inteiro thor_pulando
	inteiro thor_abaixado
	inteiro mob_fogo
	inteiro quadro_char = 0

	logico esquerda = falso
	logico direita = falso
	logico abaixado = falso
	logico pulando = falso
	logico parado = nao esquerda e nao direita e nao abaixado e nao pulando
	
	funcao inicio()
	{
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(LARGURA_DA_TELA, ALTURA_DA_TELA)
		background = Graficos.carregar_imagem("background.jpg")
		thor_parado = Graficos.carregar_imagem("parado.png")
		thor_correndo_dir = Graficos.carregar_imagem("correndo_dir.png")
		thor_correndo_esq = Graficos.carregar_imagem("correndo_esq.png")
		thor_pulando = Graficos.carregar_imagem("pulando.png")
		thor_abaixado = Graficos.carregar_imagem("abaixado.png")
		mob_fogo = Graficos.carregar_imagem("Image254.png")
		
		inteiro x = 0
		inteiro frame = 0
		
		enquanto (nao Teclado.tecla_pressionada(Teclado.TECLA_ESC)) {
			
			esquerda = Teclado.tecla_pressionada(Teclado.TECLA_SETA_ESQUERDA)
			direita = Teclado.tecla_pressionada(Teclado.TECLA_SETA_DIREITA)
			abaixado = Teclado.tecla_pressionada(Teclado.TECLA_SETA_ABAIXO)
			pulando = Teclado.tecla_pressionada(Teclado.TECLA_SETA_ACIMA)
			Graficos.desenhar_imagem(0, 0, background)
			
			inteiro largura_char = 100
			inteiro altura_char = 82
			inteiro xi = quadro_char * largura_char
			inteiro posicao_inicial = 370
			inteiro posicao_pulo = 370
			
			
			se (parado e nao abaixado e nao pulando e nao direita e nao esquerda){
				Graficos.desenhar_porcao_imagem(x, posicao_inicial, 0, 0, largura_char, altura_char, thor_parado)
			}

			se (parado e abaixado e nao pulando){
				Graficos.desenhar_porcao_imagem(x, posicao_inicial, 0, 0, largura_char, altura_char, thor_abaixado)
			}

			se(pulando e nao direita) {
				Graficos.desenhar_porcao_imagem(x, 350, 0, 0, largura_char, altura_char, thor_pulando)
		
			}
			
			se (direita){
				Graficos.desenhar_porcao_imagem(x, posicao_inicial, xi, 0, largura_char, altura_char, thor_correndo_dir)
			}

			se (esquerda){
				Graficos.desenhar_porcao_imagem(x, posicao_inicial, xi, 0, largura_char, altura_char, thor_correndo_esq)
			}

			
			Graficos.renderizar()

			se(pulando) {
				posicao_pulo -= 10
			}

			se(direita) {
				x += 5
			}
			se(esquerda){
				x -= 5
			}

			se (frame % 2 == 0){
				quadro_char++
					se (quadro_char > 10){
						quadro_char = 0
						
					}
			}
			
			
			frame++		
			Util.aguarde(1000/30)
		}

		
	}

	funcao Identifica_chao () {
		
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2720; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */