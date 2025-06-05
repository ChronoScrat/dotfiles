# Start Starship 🚀

# Check if starship is present in the PATH
if type starship > /dev/null 2> /dev/null ; then

    # There are two configuration files, one for general terminals, and one for
    # terminals inside containers.
    
    # As of 2024, there is no reliable way to determine if a shell is running inside
    # a container or not (and usually this is for the best). One of way is to detect the
    # presence of the `/run/systemd/container` for systems started with systemd (e.g.: Ubuntu),
    # though some distributions (e.g.: Fedora) do not ship their container images with systemd
    # as PID 1. Another way is to check the existence of a `/run/.containerenv` file, for containers
    # run with podman, and `/.dockerenv` file for containers run with docker, though the latter
    # is not always guaranteed to appear.
    
    # TODO Add Distrobox-specific configuration (/run/.toolboxenv)
    
    if [ -z "${container}" ]  ||  [ -f /run/systemd/container  ] || [ -f /.dockerenv ] || [ -f /run/.containerenv ] || [ -f /run/.toolboxenv ]  ; then
        export STARSHIP_CONFIG=~/.config/starship/container.toml
    else
        export STARSHIP_CONFIG=~/.config/starship/starship.toml
    fi
    
    eval "$(starship init bash)"
    
fi
