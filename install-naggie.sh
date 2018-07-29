#!/bin/bash
source ./install.sh


# git+ssh for push access
git remote rm origin
git remote add origin git@github.com:naggie/dotfiles.git


cat <<EOF >> ~/.gitconfig
[user]
	name = Callan Bryant
	email = callan.bryant@gmail.com
[github]
	user = naggie

; go get -- use ssh for private repository support without typing in password
[url "git@github.com:"]
	insteadOf = https://github.com/
EOF

cat <<EOF > ~/.ssh/authorized_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwfZZOBUP6+/7FgU2f5Cep0GMCiPDGd1mVcC4CJAankGI2xdcauI/Z+GxaLThQT6BQAgLe9OcKIdRazkAKQi5dAxR6eoN7pza3zYjz64YtYQFmTnZuOtZ/WEZt8pEH2RAMHCNO32Thq75zQAL/SWhyIP9dDCKO+gKH7aC5pbiTorLGM3NHWJzLdMo4gsqcWzL+jFsDzvgvoKeVxXBB+TMNywlAU1doXq4W+hq2SE6UNNOQh4VOktFTK8Vs5pskSfrHLx9B5Xi5Vxl+velfi6mit7918vGnV2ZIyD3JLX3ZhvWuDTaOEELgZH5iVxF8Qt27ZLXzeP/3/xuvc8L+OwvqKMNaGIJx2FmgA6diYIzEykIPgJ11Nsu2hY/Ywi/iDMiiQmCQ+SQckRsNzK+oWJ9pFGEELcSGjdXeoH8GO6j+nqkA75HiFePp4Eq/jwmeoXRExrB2CF78CJuzsJojw4IOYHcoFuKdgNe8mT3Q47yk/scyTsiKvkQuSLUmMmc42KEzacU6r3AuMfO+OomzSeVpiSxWDBqFXr2AZMohDp/55TVWLrT/dV7oqHrjaCP2Pj3mhn13/csSvwDYrdS5o6XjCFkD6xTZJPXxoJPrJTXZ45Zsfm/NkSw85GhwktdMw+0RESOXaPlXHoVwj+pQbTovxpWmwcUGDtgl5nHLvfdEKw== naggie@nightmare
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6rPYo3kBxfnwxV9/D/A/qTGrhYmupTVN2gaT9Lf8oO4lAnFpN8ZPSD8bXBSdASEEnKHJtLC0PYk56VdrACJpm9G+NWZd9VQcPddmoNRt1QbIaZhzXA4eB9DSZqrVvh+YwlLNAKckfQl/+BTr5fKKfzQXzAz8Rb2zMrE26Qee5UxzUPB+do7xGitIof7cbcBCDVsybLFGAD6r6T6mA8boA98odO2eGZ8C1aBK4q4Gt0oaON7+JGyEZQtNyRZW82nMQtdH/j2SFbAZu1qxYS+FDZF/uvSm6Vbxm71tI8aipG3S/xzCCuzCkPKlXMx6/XEgPtFRdqsHhCQQOZNTmvPKZ naggie@swampdragon
EOF

#cat <<EOF > ~/.gnupg/gpg.conf
#default-key .....
#EOF
