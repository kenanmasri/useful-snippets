#~/.bashrc

# Load env.
if [ -f $PWD/.env ]
then
    set -a
    . $PWD/.env
    set +a
fi

# In order
source bash/characters.bash
source bash/call_silent.bash
source bash/paths.bash
source bash/prnt.bash
source bash/spin.bash
