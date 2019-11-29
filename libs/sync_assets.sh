#!/bin/bash

aws2 s3 ls
aws2 s3 sync ./assets/nissa/ s3://ctscya.davidjeddy.com
