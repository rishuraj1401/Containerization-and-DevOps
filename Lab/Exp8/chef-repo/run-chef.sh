#!/bin/bash

# Run Chef Solo on all nodes
for i in {1..4}; do
  echo "====================================="
  echo "Configuring node${i}"
  echo "====================================="

  # Create chef directory on node
  ssh -i ../.ssh/chef-key -o StrictHostKeyChecking=no root@localhost -p 222${i} "mkdir -p /opt/chef"

  # Copy cookbooks
  scp -i ../.ssh/chef-key -P 222${i} -r cookbooks root@localhost:/opt/chef/

  # Run Chef
  ssh -i ../.ssh/chef-key -p 222${i} root@localhost << 'ENDSSH'
cd /opt/chef
chef-client --local-mode --runlist 'recipe[basics]'
ENDSSH

  echo "Node${i} configured successfully"
done