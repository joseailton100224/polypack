
#' Tabela de Distribuicao de Frequencia
#'
#'\code{tabela_frequencia()} retorna a tabela de distribuicao de frequencia
#' da \code{variavel_disc_cont}.
#'
#' @param variavel_disc_cont e uma coluna de um dataframe
#'
#' @return a tabela de distribuicao de frequencia da \code{variavel_disc_cont}
#'
#' @examples
#' # Tabela de frequencia 4/2 = 2
#' tabela_frequencia(mb$Estatist.)
#'
#' @export
tabela_frequencia<- function(variavel_disc_cont){

  # range(variavel_disc_cont)

  # calculando a quantidade de classes

  quant_classes <- ceiling((sqrt(length(variavel_disc_cont))))
  quant_classes

  # De fato calculando a amplitude (h)

  amplitude <- ceiling((max(variavel_disc_cont)- min(variavel_disc_cont)))
  amplitude

  # Tamanho da classe, calculando a amplitude (largura) da classe h = L / k

  #atencao para a adicao de 0.00001
  # essa adicao e para o valor do intervalo superior da ultima classe ser incluido

  tamanho_classe <- (amplitude/quant_classes)+0.00001
  tamanho_classe

  # Tabela de distribuicao de frequencias

  # para guardar o valor que come\u00E7a nossa primeira classe e vamos fazer uma conta basica
  #(o menor valor somado ao numero de classes multiplicado pelo tamanho das classes)
  #para guardar o valor que termina nossa ultima classe. Assim, vamos definir
  #o limite inferior e o limite superior da distribuicao.

  infclass <- min(variavel_disc_cont)
  infclass
  supclass <- infclass+(quant_classes*tamanho_classe)
  supclass

  # informar ao R quais ser\u00E3o as quebras da nossa distribuicao usaremos a funcao seq()
  #, que gera sequencias regulares, ou seja, calcular o valor dos intervalos

  brk <-seq(infclass,supclass,tamanho_classe)
  brk

  # Construindo a tabela de distribuicao de frequencia absoluta.

  # podemos usar a funcao table() aliada a funcao cut()para construirmos uma tabela
  # de distribuicao de frequencia absoluta, com intervalos definidos anteriormente.
  #O argumento rigth=FALSE indica que n\u00E3o queremos o intervalo fechado a direita.

  tabela_df<-table(cut(variavel_disc_cont,breaks = brk, right = FALSE))
  tabela_df

  # A tabela de distribuicao de frequencia relativa

  tabela_dfr <- prop.table(tabela_df)*100

  tabela_dfr<-as.data.frame(tabela_dfr)
  tabela_dfr

  # tabela de distribuicao de frequencia acumulada

  freq_acum<-cumsum(prop.table(tabela_df)*100)
  freq_acum<-as.data.frame(freq_acum)
  freq_acum


  tabela_dataframe<-data.frame(tabela_df,
                               (tabela_dfr$Freq)/100,
                               tabela_dfr$Freq,
                               freq_acum$freq_acum)

  #renomeando colunas usando o rbase

  colnames(tabela_dataframe) <- c("Intervalos","Frequ\u00EAncia","Frequ\u00EAncia Relativa",
                                  " Frequ\u00EAncia Relativa (%)","Frequ\u00EAncia Acumulada (%)")


  return(tabela_dataframe)
}

