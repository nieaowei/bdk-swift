default:
  just --list

build:
  bash ./build-xcframework.sh

clean:
  rm -rf ../bdk-ffi/target/

test:
  swift test

test-offline:
  swift test --skip LiveElectrumClientTests --skip LiveMemoryWalletTests --skip LiveTransactionTests --skip LiveTxBuilderTests --skip LiveWalletTests
