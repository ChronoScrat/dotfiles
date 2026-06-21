# Not for all purpose sync, merely for easing things up

cp-to $file:
    #!/usr/bin/bash

    cp $file $HOME/$file

cp-from $file:
    #!/usr/bin/bash

    cp $HOME/$file $file

sync:
    #!/usr/bin/bash

    tt=$(find . -type f ! -path "./.git/*" ! -name "README.md" ! -name "Justfile" ! -name devcontainer.sh -printf '%P\n';)

    for file in $tt; do
        install -D $file $HOME/$file
    done