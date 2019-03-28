#!/bin/bash

STATUS=$(ps ax | grep -v grep | grep java)

if [ "$STATUS" != "" ]
then
  exit 0
else
  exit 1
fi