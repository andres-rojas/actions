# Setup GitHub CLI config (i.e. auth)
mkdir -p ~/.config
ln -s /.config/gh ~/.config/gh

# Make sure pre-commit is set up
# NOTE: I have no idea why, but it fails without `ls` prior to install
#       Without it, it complains that it is not in a git repo
ls >/dev/null
/usr/local/py-utils/bin/pre-commit install
