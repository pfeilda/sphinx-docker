# Sphinx Docker Container
This container can be used to build sphinx documentations within a docker container.
The main purpose is for usage in an CICD workflow, but you also can use it on your local machine.
It contains also the read the docs theme.

## Usage
You have to mount or copy your data in the folder /sphinx.
Because this is the work directory.

### Environment Variables
Also there are some environment variables you are able to set.
This are variables of the sphinx command.

| Name      | Default Value | 
|-----------|---------------|
| options   | ""            |
| sourcedir | "."           |
| outdir    | "_build"      |
| filenames | ""            |
