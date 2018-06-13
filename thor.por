programa
{
	
	inclua biblioteca Graficos
	inclua biblioteca Teclado
	inclua biblioteca Util

	/* Tamanho da tela do jogo */
	const inteiro LARGURA_DA_TELA = 950, ALTURA_DA_TELA = 650

	/* Váriaveis Globais */

	inteiro background = 0
	inteiro thor_parado = 0
	inteiro thor_correndo_dir = 0
	inteiro thor_correndo_esq = 0
	inteiro thor_pulando = 0
	inteiro thor_abaixado = 0
	inteiro mob_fogo = 0
	inteiro quadro_char = 0
	inteiro bloco_chao = 0
	inteiro inicio_bloco = 0
	inteiro meio_bloco = 0
	inteiro final_bloco = 0
	inteiro x = 0
	inteiro frame = 0


	inteiro chao[20][30] = 
		{
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 2, 3, 3, 3, 3, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
			{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
			
		}


	

	logico esquerda = falso
	logico direita = falso
	logico abaixado = falso
	logico pulando = falso
	logico parado = nao esquerda e nao direita e nao abaixado e nao pulando
	
	funcao inicio()
	{
		Graficos.iniciar_modo_grafico(verdadeiro)
		Graficos.definir_dimensoes_janela(LARGURA_DA_TELA, ALTURA_DA_TELA)
		
		carrega_imagens()
		logica_jogo()
		

		
	}
	funcao carrega_imagens()
	{
		background = Graficos.carregar_imagem("background.jpg")
		bloco_chao = Graficos.carregar_imagem("bloco.png")
		inicio_bloco = Graficos.carregar_imagem("inicio_bloco.png")
		meio_bloco = Graficos.carregar_imagem("meio_bloco.png")
		final_bloco = Graficos.carregar_imagem("final_bloco.png")
		thor_parado = Graficos.carregar_imagem("parado1.png")
		thor_correndo_dir = Graficos.carregar_imagem("correndo_dir.png")
		thor_correndo_esq = Graficos.carregar_imagem("correndo_esq.png")
		thor_pulando = Graficos.carregar_imagem("pulando.png")
		thor_abaixado = Graficos.carregar_imagem("abaixado.png")
		mob_fogo = Graficos.carregar_imagem("Image254.png")
	}
	funcao logica_jogo() 
	{
		enquanto (nao Teclado.tecla_pressionada(Teclado.TECLA_ESC)) { 
			Graficos.desenhar_imagem(0, 0, background)
			entrada_jogador()
			desenha_chao()
			inteiro largura_char = 100
			inteiro altura_char = 82
			inteiro xi = quadro_char * largura_char
			inteiro largura_char_parado = 112
			inteiro xi_parado = quadro_char * largura_char_parado
			inteiro posicao_inicial = 370
			inteiro posicao_pulo = 370
			
			
			se (parado e nao abaixado e nao pulando e nao direita e nao esquerda){
				Graficos.desenhar_porcao_imagem(x, posicao_inicial, xi_parado, 0, largura_char_parado, altura_char, thor_parado)
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
					se (quadro_char > 9){
						quadro_char = 0
						
					}
			}
			
			
			frame++		
			Util.aguarde(1000/30)
		}
	}
	funcao entrada_jogador() 
	{
		esquerda = Teclado.tecla_pressionada(Teclado.TECLA_SETA_ESQUERDA)
		direita = Teclado.tecla_pressionada(Teclado.TECLA_SETA_DIREITA)
		abaixado = Teclado.tecla_pressionada(Teclado.TECLA_SETA_ABAIXO)
		pulando = Teclado.tecla_pressionada(Teclado.TECLA_SETA_ACIMA)
	}
	funcao desenha_chao()
	{
		para(inteiro linha = 0; linha < 20; linha++) {
			para(inteiro coluna = 0; coluna < 30; coluna++) {
				se(chao[linha][coluna] == 1) {
					Graficos.desenhar_imagem(coluna * 32, linha * 32 , bloco_chao)
										
				}
				se(chao[linha][coluna] == 2) {
					Graficos.desenhar_imagem(coluna * 32, linha * 32 , inicio_bloco)
				}
				se(chao[linha][coluna] == 3) {
					Graficos.desenhar_imagem(coluna * 32, linha * 32 , meio_bloco)
				}
				se(chao[linha][coluna] == 4) {
					Graficos.desenhar_imagem(coluna * 32, linha * 32 , final_bloco)
				}
		
				
			}
		}
	}

}





/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2492; 
 * @DOBRAMENTO-CODIGO = [62, 73, 87, 150, 157];
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */