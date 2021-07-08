#!/bin/bash

function get_env()
{
    export base=$(pwd)

    export REQ_REPO3_DIR=./REPO3
    export SOURCE_DIR=./src
 
    export ENVIRO_SEARCH_LIST_L1_RXTX=${SOURCE_DIR}/L1_HAL_MODEL
}

function main()
{
    get_env
}
main "$@"
