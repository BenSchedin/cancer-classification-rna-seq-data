nnPred <- function(data, nn)
{ 
  prediction <- data.frame(neuralnet::compute(nn, data.frame(data[,-9]))$net.result)

  labels <- c("BRCA", "COAD", "KIRC", "LUAD", "PRAD") 
  
  prediction <- data.frame(max.col(prediction)) %>% dplyr::mutate(prediction=labels[max.col.prediction.]) %>% dplyr::select(2) %>% unlist() 

  return(table(truth=data$Class, predicted=prediction)) 
}