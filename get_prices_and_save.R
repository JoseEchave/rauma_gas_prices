library(rvest)

html_save <- html_nodes(read_html("https://www.polttoaine.net/Rauma"),xpath = '//*[@id="Hinnat"]/table')
list_table <- html_table(html_save,fill=TRUE,header = TRUE,convert = TRUE)
hinnat_table <- list_table[[1]]

write.csv(hinnat_table,file = paste0("output/","rauma_hinnat_",Sys.Date(),".csv"))