This Docker image runs composer through HHVM in a docker container. Call it using

    docker run --rm -v /etc/passwd:/etc/passwd:ro -v /etc/group:/etc/group:ro -v /home/$USER/.composer:/home/$USER/.composer -v /home/$USER/.ssh:/home/$USER/.ssh:ro -v "$PWD":"$PWD" -w "$PWD" --user="$USER" nicohaase/hhvm-composer