# PHP template project

My template for PHP project or exercise (Kata)

## Getting started on Unix or Mac OS X system

### Clone the repository
```shell
git clone https://github.com/klnjmm/template-php.git your-project-name
cd your-project-name
```

### Modify composer.json file
* General informations like project name, description and license
```json
    "name": "klnjmm/template",
    "description": "My template for PHP project",
    "type": "project",
    "license": "MIT",
```

* Namespace name (here `Klnjmm`)
```json
    "autoload": {
        "psr-4": {
            "Klnjmm\\": "src"
        }
    },
    "autoload-dev": {
        "psr-4": {
            "Klnjmm\\tests\\": "tests/"
        }
    }
```

### Init

```shell
make init
make up
```

Let's code !


## Developing on Unix or Mac OS X system

Here a few commands that can help you :

* Launch unit tests in loop mode
```shell
make unit-tests-loop
```

* Launch code sniffer
```
make code-sniffer
```

## Licensing
Do whatever you want with this !