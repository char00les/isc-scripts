#!/bin/bash

    yum updateinfo list sec
    yum updateinfo list sec >> list.rhn
    yum list-security --security 
    yum list-security --security >> security.rhn
    yum update-minimal --security -y
    yum --security check-update >> post.rhn
    yum updateinfo summary >> post.rhn

