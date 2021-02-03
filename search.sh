#!/bin/bash
echo Search string: 
read inpt
grep -R -I -H "$inpt" .