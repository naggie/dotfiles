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
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCuazxgekwnhA1wOfOZ9GymsuDd2R2cuHwA+0RUWLp9UMAIwrDYxF9HGkvqO829Sobvv3RBNnMgYJdIVDq44jYLhq8Go+f1GujCU7khRoGadH6OVKyFsTZ97qpU4k58hFxR8nn5gU5ZaspNxySd2IMKMifY/pqhasyzDOR7OMIFOMrdXlByxcPgrQYli3pHUZAqeQeHfWUB+SetmkGSG/u8V0yeCBvx5X443UgZsWa147kYjzZiRpFxVTOOaRlOS+aBDBmh8lL0oVcRqD0dJX0IbXI8pDGs5hN5PEZwmrqtBlBrjvcb9tQDhnljSweuPtOg28AYZlqrsh3C60p2teiQkxzApwziOuvHnIl1GdOoOWLUlIJEZ3WWJtGx9vNpgqsOdbQ6MTWD0ECy9JjblhpDxsfeTr+wE0BzG0vMY2J0XhALShltmcMbrmBG/X4Vg5ZI5VyHDVvf1FlIl91kcrsDKK+M7VcWMlvCH6K5G3pxLgDBcrrtKyfRzo8kkpU3+HH1SwuOvn3nrhMfRBtBADE/Aiwym34PsWD+JCGzAWm4FN3L8CF/akwHUXfYRiVK7B6vjODXOVvIz7KRrcJ5vBNZbtigLhFHOQ4CKnj2BK2tntBO/7pu4K6WsVrgWUhXO4n9Vmu2PnKpsydltiNaLHxXdDdLbQP/7xxd+NIFat2/mQ== cal@swampdragon
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCwfZZOBUP6+/7FgU2f5Cep0GMCiPDGd1mVcC4CJAankGI2xdcauI/Z+GxaLThQT6BQAgLe9OcKIdRazkAKQi5dAxR6eoN7pza3zYjz64YtYQFmTnZuOtZ/WEZt8pEH2RAMHCNO32Thq75zQAL/SWhyIP9dDCKO+gKH7aC5pbiTorLGM3NHWJzLdMo4gsqcWzL+jFsDzvgvoKeVxXBB+TMNywlAU1doXq4W+hq2SE6UNNOQh4VOktFTK8Vs5pskSfrHLx9B5Xi5Vxl+velfi6mit7918vGnV2ZIyD3JLX3ZhvWuDTaOEELgZH5iVxF8Qt27ZLXzeP/3/xuvc8L+OwvqKMNaGIJx2FmgA6diYIzEykIPgJ11Nsu2hY/Ywi/iDMiiQmCQ+SQckRsNzK+oWJ9pFGEELcSGjdXeoH8GO6j+nqkA75HiFePp4Eq/jwmeoXRExrB2CF78CJuzsJojw4IOYHcoFuKdgNe8mT3Q47yk/scyTsiKvkQuSLUmMmc42KEzacU6r3AuMfO+OomzSeVpiSxWDBqFXr2AZMohDp/55TVWLrT/dV7oqHrjaCP2Pj3mhn13/csSvwDYrdS5o6XjCFkD6xTZJPXxoJPrJTXZ45Zsfm/NkSw85GhwktdMw+0RESOXaPlXHoVwj+pQbTovxpWmwcUGDtgl5nHLvfdEKw== naggie@nightmare.lan.naggie.net
EOF

#cat <<EOF > ~/.gnupg/gpg.conf
#default-key .....
#EOF
