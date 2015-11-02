Setup virtual machine using vagrant.

```bash
vagrant up
vagrant ssh
su
```
You are now running in the vm with cassandra installed.

Download community edition dev tools from http://www.planetcassandra.org/devcenter/.

## Debugging

If for some reason you cannot connect to the cassandra server, run the following commands

```bash
vagrant ssh
su
cassandra -f
```

Review the output from __cassandra -f__.
