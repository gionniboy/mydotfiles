function gitio -d "create a customized git.io short url"
  if test -z "$argv"
    printf "Usage: gitio slug url \n"
    return 1
  else
    curl -i https://git.io/ -F "url=$argv[2]" -F "code=$argv[1]"
  end
end