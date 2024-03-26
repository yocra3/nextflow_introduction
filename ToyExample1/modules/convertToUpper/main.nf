process CONVERTTOUPPER {
  
  input:
  file y 
  
  output:
  stdout
  
  script:
  """
  cat $y | tr '[a-z]' '[A-Z]' 
  """

}