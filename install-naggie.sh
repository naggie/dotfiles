#/bin/bash
. ./install.sh


# git+ssh for push access
git remote rm origin
git remote add origin git@github.com:naggie/dotfiles.git


cat <<EOF >> ~/.gitconfig
[user]
	name = Callan Bryant
	email = callan.bryant@gmail.com
[github]
	user = naggie
EOF

cat <<EOF >> ~/.ssh/authorised_keys
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCuazxgekwnhA1wOfOZ9GymsuDd2R2cuHwA+0RUWLp9UMAIwrDYxF9HGkvqO829Sobvv3RBNnMgYJdIVDq44jYLhq8Go+f1GujCU7khRoGadH6OVKyFsTZ97qpU4k58hFxR8nn5gU5ZaspNxySd2IMKMifY/pqhasyzDOR7OMIFOMrdXlByxcPgrQYli3pHUZAqeQeHfWUB+SetmkGSG/u8V0yeCBvx5X443UgZsWa147kYjzZiRpFxVTOOaRlOS+aBDBmh8lL0oVcRqD0dJX0IbXI8pDGs5hN5PEZwmrqtBlBrjvcb9tQDhnljSweuPtOg28AYZlqrsh3C60p2teiQkxzApwziOuvHnIl1GdOoOWLUlIJEZ3WWJtGx9vNpgqsOdbQ6MTWD0ECy9JjblhpDxsfeTr+wE0BzG0vMY2J0XhALShltmcMbrmBG/X4Vg5ZI5VyHDVvf1FlIl91kcrsDKK+M7VcWMlvCH6K5G3pxLgDBcrrtKyfRzo8kkpU3+HH1SwuOvn3nrhMfRBtBADE/Aiwym34PsWD+JCGzAWm4FN3L8CF/akwHUXfYRiVK7B6vjODXOVvIz7KRrcJ5vBNZbtigLhFHOQ4CKnj2BK2tntBO/7pu4K6WsVrgWUhXO4n9Vmu2PnKpsydltiNaLHxXdDdLbQP/7xxd+NIFat2/mQ== cal@swampdragon
EOF
