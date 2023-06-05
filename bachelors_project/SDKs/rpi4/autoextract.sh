#!/bin/bash

# Execute the Buildroot command from the correct location
cd /home/kali/Projects/bachelors_project/system/external/
./br-make.sh make sdk

# Transfer the generated SDK tar.gz file
mv /home/kali/Projects/bachelors_project/system/output/images/arm-buildroot-linux-gnueabihf_sdk-buildroot.tar.gz /home/kali/Projects/bachelors_project/SDKs/

# Extract the tar.gz file
tar -xf /home/kali/Projects/bachelors_project/SDKs/arm-buildroot-linux-gnueabihf_sdk-buildroot.tar.gz -C /home/kali/Projects/bachelors_project/SDKs/

# Run relocate-sdk.sh script
cd /home/kali/Projects/bachelors_project/SDKs/arm-buildroot-linux-gnueabihf_sdk-buildroot/
./relocate-sdk.sh
