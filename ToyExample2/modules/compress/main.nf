process COMPRESS {
  
  label 'process_high'

  input:
    file(txt) 
  
  output:
  file('*.txt.gz') 
  
  script:
  """
  gzip -c $txt > ${txt}.gz
  """
}