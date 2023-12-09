# /bin/bash

# tab補完パッケージインストール
sudo apt update
sudo apt install -y bash-completion

# gitコマンド補完用スクリプトインストール
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -O /etc/bash_completion.d/git

echo 'source /etc/bash_completion' >> ~/.bashrc

# dart install
sudo apt-get install apt-transport-https
wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list

sudo apt-get update
sudo apt-get install dart