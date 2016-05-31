This is the code for the `camb_boinc2docker` application at [Cosmology@Home](http://www.cosmologyathome.org). To build the Docker container:

    make build

The image expects a folder to be mounted at `/root/shared` which contains, 

1. A progress template file named `progress`
2. A subfolder where the progress will be printed out named `results`
3. (Optionally) Some parameter files

Then you can run, e.g.:

    docker run -v <some_folder>:/root/shared camb_boinc2docker /root/shared/params1.ini /root/shared/params2.ini ...
    
To reduce file size (likely only needed if you're actually going to run it at Cosmology@Home), you need [docker-stfd](https://github.com/marius311/stfd) installed and run:

    make squash
