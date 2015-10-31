#!/usr/bin/env bash
set -e # exit on first error
set -u # exit on using unset variable

gpg --keyserver pgp.mit.edu --recv-keys F758CE318D77295D
gpg --export --armor F758CE318D77295D | sudo apt-key add -

rm -rf /etc/apt/sources.list.d/apache-cassandra.list
echo "deb http://www.apache.org/dist/cassandra/debian 21x main" > /etc/apt/sources.list.d/apache-cassandra.list

apt-get update
apt-get install -y --force-yes cassandra

