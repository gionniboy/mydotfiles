# function getcertnames -d "Show all the names (CNs and SANs) listed in the SSL certificate for a given domain"
#   if test -z $argv[1]
#     printf "ERROR: No domain specified. \n"
#     return 1
#   else
#     set domain ($argv[1])
#     printf "Testing ssl $domain … \n"

#     set -l tmp (echo -e "GET / HTTP/1.0\nEOT" | openssl s_client -connect "$domain:443" 2>&1)

#     if $tmp = '*"-----BEGIN CERTIFICATE-----"*'
#       set certText (echo "$tmp" | openssl x509 -text -certopt "no_header, no_serial, no_version, \
#                         no_signame, no_validity, no_issuer, no_pubkey, no_sigdump, no_aux")
#                     echo "Common Name:"
#                     echo ""; # newline
#                     echo "$certText" | grep "Subject:" | sed -e "s/^.*CN=//"
#                     echo ""; # newline
#                     echo "Subject Alternative Name(s):"
#                     echo ""; # newline
#                     echo "$certText" | grep -A 1 "Subject Alternative Name:" \
#                         | sed -e "2s/DNS://g" -e "s/ //g" | tr "," "\n" | tail -n +2
#                     return 0
#     else
#       echo "ERROR: Certificate not found."
#       return 1
#     end
#   end
# end
