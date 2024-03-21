
#' Tabela de Distribuição de Frequência
#'
#'\code{tabela_frequencia()} retorna a tabela de distribuição de frequência
#' da \code{variavel_disc_cont}.
#'
#' @param variavel_disc_cont é uma coluna de um dataframe
#'
#' @return a tabela de distribuição de frequência da \code{variavel_disc_cont}
#'
#' @examples
#' # Tabela de frequência 4/2 = 2
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

  #atenção para a adição de 0.00001
  # essa adição é para o valor do intervalo superior da ultima classe ser incluido

  tamanho_classe <- (amplitude/quant_classes)+0.00001
  tamanho_classe

  # Tabela de distribuição de frequências

  # para guardar o valor que começa nossa primeira classe e vamos fazer uma conta básica
  #(o menor valor somado ao número de classes multiplicado pelo tamanho das classes)
  #para guardar o valor que termina nossa última classe. Assim, vamos definir
  #o limite inferior e o limite superior da distribuição.

  infclass <- min(variavel_disc_cont)
  infclass
  supclass <- infclass+(quant_classes*tamanho_classe)
  supclass

  # informar ao R quais serão as quebras da nossa distribuição usaremos a função seq()
  #, que gera sequências regulares, ou seja, calcular o valor dos intervalos

  brk <-seq(infclass,supclass,tamanho_classe)
  brk

  # Construindo a tabela de distribuição de frequência absoluta.

  # podemos usar a função table() aliada à função cut()para construirmos uma tabela
  # de distribuição de frequência absoluta, com intervalos definidos anteriormente.
  #O argumento rigth=FALSE indica que não queremos o intervalo fechado à direita.

  tabela_df<-table(cut(variavel_disc_cont,breaks = brk, right = FALSE))
  tabela_df

  # A tabela de distribuição de frequência relativa

  tabela_dfr <- prop.table(tabela_df)*100

  tabela_dfr<-as.data.frame(tabela_dfr)
  tabela_dfr

  # tabela de distribuição de frequência acumulada

  freq_acum<-cumsum(prop.table(tabela_df)*100)
  freq_acum<-as.data.frame(freq_acum)
  freq_acum


  tabela_dataframe<-data.frame(tabela_df,
                               (tabela_dfr$Freq)/100,
                               tabela_dfr$Freq,
                               freq_acum$freq_acum)

  #renomeando colunas usando o rbase

  colnames(tabela_dataframe) <- c("Intervalos","Frequência","Frequência Relativa",
                                  " Frequência Relativa (%)","Frequência Acumulada (%)")


  return(tabela_dataframe)
}

