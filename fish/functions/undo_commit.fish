function undo_commit -d "undo last commit"
  git reset --soft "HEAD^"
end