process SPLITWORDSPY {
  
  input:
    val x 
  
  output:
    file '*.txt' 
  
  script:
  """
  splitwords.py $x
  """
}