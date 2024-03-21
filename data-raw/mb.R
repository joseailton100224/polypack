
mb_ind <- read.delim("data-raw/mb_industria_com.txt", header=F,sep=" ",

                     col.names=c("Func.","Secao","Administr.","Direito","Redacao","Estatist.",
                                 "Ingles","Metodologia","Politica","Economia","na"))
mb <- mb_ind[,-11]

## code to prepare `mb` dataset goes here

usethis::use_data(mb, overwrite = TRUE)
