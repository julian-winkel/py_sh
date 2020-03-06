venv_dir="$HOME/.virtualenvs"
python_dir="$HOME/code/python"

apt-get -y install python3 python3-pip
mkdir -p $python_dir
mkdir -p $venv_dir

read -p "Create a new venv? " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]]
then
    read -p "venv name:" -r
    python3 -m venv "$venv_dir/$REPLY"
    source "$venv_dir/$REPLY/bin/activate"
    mkdir -p $python_dir/$REPLY
    cd $python_dir/$REPLY
fi