#!/bin/bash

BOX_NAME=vagrant-thumbor-base
BOX=${BOX_NAME}.box

function msg {
    echo "Thumbor box created."

    echo "Test with vagrant up then:"
    echo "http://localhost:8888/unsafe/300x/https://raw.github.com/globocom/thumbor/blob/master/tests/visual_test/flower.jpg"
    echo "Install box locally with:"
    echo "vagrant box add $BOX_NAME $BOX" 
}

vagrant up && rm -f $BOX && vagrant package --vagrantfile Vagrantfile.pkg --output $BOX && msg
