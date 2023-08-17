#!/bin/bash

#here we can use array type which can store multiple values
PERSONS=('Hari', 'Ankitha', 'Raji', 'Konda')

    echo ("Hello guys:$PERSONS[0:2]")
    echo ("Hello guys:$PERSONS[@]")