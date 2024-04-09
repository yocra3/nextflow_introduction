process CREATETXTPREFIX {
  
  input:
  val x 
  
  output:
  tuple val(x), file("*.txt")
  
  script:
  """
  echo $x > ${x}.txt
  """
}