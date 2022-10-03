# PHP template project

My template for PHP project or exercise (Kata)

## Getting started

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

### Init
#### On Unix or Mac OS X system
```shell
make init
make up
```

#### On Windows
```shell
rmdir /s /q .git
git init
composer install
```


Let's code ! 🚀

## Developing

### On Unix or Mac OS X system
Here a few commands that can help you :

* Launch unit tests
```shell
make unit-tests
```

* Launch unit tests with coverage
```shell
make unit-tests-coverage
```

* Launch mutation testing
```shell
make mutation
```

* Launch code sniffer
```
make code-sniffer
```

* Fix code style
```
make code-sniffer-fix
```

### On Windows
Here a few commands that can help you :

* Launch unit tests
```shell
vendor\bin\pest.bat
```

* Launch unit tests with coverage
```shell
vendor\bin\pest.bat --coverage
```

* Launch mutation testing (doesn't work on windows...)
```shell
vendor\bin\infection.bat --test-framework=pest --show-mutations
```

* Launch code sniffer
```
vendor\bin\phpcs.bat
```

* Launch code sniffer
```
vendor\bin\phpcbf.bat
```

## Licensing
Do whatever you want with this !
