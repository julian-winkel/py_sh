# Add the following line to your ~/.bash_rc
# alias pyv=". ~/code/shell/py_sh//pyv.sh"

venv_dir=".virtualenvs"
python_dir="$HOME/code/python"

if [ $# -eq 1 ]
then
    python3 -m venv "$HOME/$venv_dir/$1"
    source "$HOME/$venv_dir/$1/bin/activate"
    cd $python_dir
else
    printf "Please select a Python environment to activate:\n"
    select d in $HOME/$venv_dir/*; do test -n "$d" && break; echo ">>> Invalid Selection"; done
    source $d"/bin/activate" 
    cd $python_dir
fi