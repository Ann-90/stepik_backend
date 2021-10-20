#!/bin/bash
sudo rm -rf /etc/nginx/sites-enabled/* 
sudo ln -s /home/box/web/etc/nginx.conf /etc/nginx/sites-enabled/test.conf
sudo /etc/init.d/nginx restart
gunicorn --bind=0.0.0.0:8080 testapp:app
sudo ln -s /home/box/web/etc/hello.py /etc/gunicorn.d/hello.py
#sudo ln -s /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/test
#sudo /etc/init.d/gunicorn restart
#sudo /etc/init.d/mysql start