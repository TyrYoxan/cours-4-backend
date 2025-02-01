#!/bin/bash

test_dir="tests"

if ! command -v vendor/bin/phpunit &> /dev/null
then
    echo "PHPUnit n'est pas installé. Installez-le avec: composer require --dev phpunit/phpunit"
    exit 1
fi

if [ ! -d "$test_dir" ]; then
    echo "Le répertoire de test '$test_dir' n'existe pas."
    exit 1
fi

vendor/bin/phpunit