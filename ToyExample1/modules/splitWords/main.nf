process SPLITWORDS {
  
  input:
    val x 
  
  output:
    file '*.txt' 
  
  script:
  """
  for word in $x
  do
    echo \$word > \${word}.txt
  done
  """
}