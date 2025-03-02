# Start Oh-My-Posh on bash
# OMP should be installed in .local/bin/
# The configuration file is the custom theme applied to Oh-My-Posh

if [ -f ~/.local/bin/oh-my-posh ]; then
    eval "$(oh-my-posh init bash --config ~/.local/share/oh-my-posh/themes/catppuccin_mocha.omp.json)"  
fi