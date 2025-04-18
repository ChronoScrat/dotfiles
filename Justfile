# Not for all purpose sync, merely for easing things up

cp-to $file:
    #!/usr/bin/bash

    cp $file $HOME/$file

cp-from $file:
    #!/usr/bin/bash

    cp $HOME/$file $file


