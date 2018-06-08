programa
{
	
	inclua biblioteca Graficos
	inclua biblioteca Teclado
	inclua biblioteca Util

	/* Tamanho da tela do jogo */
	const inteiro LARGURA_DA_TELA = 800, ALTURA_DA_TELA = 600

	inteiro background
	inteiro thor_parado
	inteiro thor_andando
	inteiro mob_fogo
	inteiro quadro_char = 0

	logico esquerda = falso
	logico direita = falso
	funcao inicio()
	{
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(LARGURA_DA_TELA, ALTURA_DA_TELA)
		background = Graficos.carregar_imagem("background.jpg")
		thor_parado = Graficos.carregar_imagem("parado.png")
		thor_andando = Graficos.carregar_imagem("andando1.png")
		mob_fogo = Graficos.carregar_imagem("Image254.png")
		
		inteiro x = 0
		inteiro frame = 0
		
		enquanto (nao Teclado.tecla_pressionada(Teclado.TECLA_ESC)) {
			
			esquerda = Teclado.tecla_pressionada(Teclado.TECLA_SETA_ESQUERDA)
			direita = Teclado.tecla_pressionada(Teclado.TECLA_SETA_DIREITA)
			Graficos.desenhar_imagem(0, 0, background)
			
			inteiro largura_char = 100
			inteiro altura_char = 82
			inteiro xi = quadro_char * largura_char

			
			se (nao esquerda e nao direita){
				Graficos.desenhar_porcao_imagem(x, 370, 0, 0, largura_char, altura_char, thor_parado)
			}

			
			se (direita){
				Graficos.desenhar_porcao_imagem(x, 370, xi, 0, largura_char, altura_char, thor_andando)
			}
			
			Graficos.renderizar()

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
			Util.aguarde(1000/10)
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
 * @POSICAO-CURSOR = 1602; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */