function copy -d "copy"
  # Checks whether there's an argument being passed, and if so, 
  # cat the file and pipe through pbcopy.
  if count $argv >/dev/null
    cat $argv | pbcopy
  else
    # pipe stdin into copy
    pbcopy < /dev/stdin
  end
  # then finally paste to stdout
  pbpaste
end
