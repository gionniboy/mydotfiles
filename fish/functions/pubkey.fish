function pubkey -d "copy public ssh key"
  cat ~/.ssh/id_rsa.pub | xsel --clipboard --input; and echo '=> Public key copied to pasteboard.'
  xsel --clipboard --output
end