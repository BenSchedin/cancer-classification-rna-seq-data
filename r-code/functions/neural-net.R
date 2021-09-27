nnPred <- function(data, nn)
{ 
  prediction <- data.frame(neuralnet::compute(nn, data.frame(data[,-9]))$net.result)

  labels <- c("BRCA", "COAD", "KIRC", "LUAD", "PRAD") 
  
  prediction <- data.frame(max.col(prediction)) %>% mutate(prediction=labels[max.col.prediction.]) %>% select(2) %>% unlist() 

  return(table(truth=data$Class, predicted=prediction)) 
}