#/bin/bash
mkdir ../../gen
cd ../../gen
../bind9/configure --enable-native-pkcs11 --enable-full-report
make