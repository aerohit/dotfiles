#!/bin/bash
pmanager/pmanager test/blobseer-deploy.cfg &
provider/provider test/blobseer-deploy.cfg &
provider/sdht test/blobseer-deploy.cfg &
vmanager/vmanager test/blobseer-deploy.cfg &
