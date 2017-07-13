#!/bin/bash

yum update -y --exclude=kernel

yum install -y nano git unzip screen wget nc telnet ping
