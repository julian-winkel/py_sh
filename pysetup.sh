apt-get -y install python3 python3-pip
mkdir -p $HOME/code/python
mkdir -p $HOME/.virtualenvs

read -p "Create a new venv? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    read -p "venv name:" -r
    python3 -m venv "$HOME/.virtualenvs/$REPLY"
    source "$HOME/.virtualenvs/$REPLY/bin/activate"
    cd $HOME/code/python
fi