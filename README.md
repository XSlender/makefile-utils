# makefile-utils

This repository is intended to be used as a git submodule, providing you Makefile tools for your project.  
Once initialized, you will have access to a makefile, some tools to craft your own targets, and some pre-defined tools.

What's included :
* Automated initialization via shell script.
* Preconfigured Makefile with utils & helpers already imported.
* Libraries for colors, string helpers & symbols.
* Pre-defined targets to use with docker composed projects.

## Install the module

### In development environment
To install, go to your project folder, and execute these commands :
```bash
git submodule add https://github.com/XSlender/makefile-utils.git
chmod +x makefile-utils/init.sh
makefile-utils/init.sh
```
This will :
* Pull the repository as a submodule (git project dependency).
* Save previous makefile as `Makefile.save`.
* Copy the new pre-configured Makefile into your project root folder.

### In production environment
As you may already produced a makefile and pushed the `.gitmodules` file, there is no need to add the module again.  
Simply install the module :
```bash
git submodule init
git submodule update --remote
```
This will download the latest module version.

> There is no need to use the `init.sh` or you will override your pushed Makefile.

## Update the module
To update the module, go to your project folder, and execute these commands :
```bash
git submodule update --remote
```
This will pull the latest version of the submodule.

## Use the module

### Create your own targets
Now that you have your Makefile ready on your project, you can make your own Makefile targets to execute your own commands.  
You can refer to [this documentation](https://makefiletutorial.com/) to create your own Makefile targets.

### Use colors, symbols & strings
This submodule comes with pre-packaged utils for symbols, colors and strings for you to make cool-looking target outputs.

Documentations are available for these utils:
* [Colors](./docs/colors.md)
* [Strings](./docs/strings.md)

### Pre-defined targets
This submodule comes with pre-loaded targets:

* [Docker-compose targets](./docs/target_docker_compose.md)

### The help target
The `help` target is already predefined and available.

To use it, only add `##` followed by your target description like this:
```bash
my_example_target: ## This will produce the documentation for the Makefile target
```
This will produce an output like this:
```text
  Makefile 
    my_example_target:              This will produce the documentation for the Makefile target
```

> The `help` target is the default target of the Makefile.