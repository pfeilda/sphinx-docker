# Sphinx Docker Container
This container can be used to build sphinx documentations within a docker container.
The main purpose is for usage in an CICD workflow, but you also can use it on your local machine.

## Tags
There are several tags. The name of the tags specify the content of the image.
For example the `latest` tag only contains sphinx by itself.
The image `sphinx-rtd-theme_latest` contains the ´pip´ package sphinx-rtd-theme as additional package to the latest tag.

### You need an additional pip package installed?
As you can see the tag name has some strange symbol combinations `-_-`. This is the delemiter for the `pip` package that are installed in addition to the `sphinx` package.
So if you need an additional image feel free to contact [me](#author)

## Usage
You have to mount or copy your data in the folder /sphinx.
Because this is the work directory.
Then it will build your documentation with the command:

    sphinx-build ${options} ${sourcedir} ${outdir} ${filenames}

### Environment Variables
Also there are some environment variables you are able to set.
This are variables of the sphinx command.

| Name      | Default Value | 
|-----------|---------------|
| options   | ""            |
| sourcedir | "."           |
| outdir    | "_build"      |
| filenames | ""            |

## Issue Tracker
If some issues occur you can track these [here](https://github.com/pfeilda/sphinx-docker/issues)

## Contributing
If you want to contribute please click [here](https://github.com/pfeilda/sphinx-docker/blob/develop/CONTRIBUTING.md)

## Author
Daniel Pfeil 
daniel.pfeil@itpfeil.de
d.pfeil@api-studio.de
