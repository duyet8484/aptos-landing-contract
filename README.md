# aptos-landing-contract
Move module for Aptos Landing dApp.

The dApp is live at [berzanxyz.github.io](https://berzanxyz.github.io/aptos-landing-interface/0x4eb9d24d059db22f0f2a858f128f2e747f5ff7c441c2b95c87559aae1c29c4f7).

An interface for Aptos Landing dApp resides in [`aptos-landing-interface`](https://github.com/berzanxyz/aptos-landing-interface).

Events and tests are not implemented as this project is very basic.

## Clone the repo
You can run the command below to clone the repo.
```sh
git clone https://github.com/berzanxyz/aptos-landing-contract.git
```


## Setup a development environment
You can use [`Dev Containers`](https://code.visualstudio.com/docs/devcontainers/containers) to setup a development environment.

## Initialize an Aptos account
Run the command below to initialize an Aptos account. 

It will create `.aptos/config.yaml` file.
```sh
aptos init
```

## Change the address
Copy the address for `account` in `.aptos/config.yaml` file.

In `Move.toml` file, change `aptos_landing_contract` under `[addresses]` to the address you copied.

## Publish
Run the command below to publish the module on Aptos Devnet.
```sh
aptos move publish
```

## Interact
You can run the command below to setup a page for yourself.

```sh
aptos move run --function-id <address-you-copied>::landing::setup_page --args '<name>' '<website>' '<twitter>' '<facebook>' '<instagram>' '<youtube>' '<tiktok>'
```

Don't forget to include the types for each argument like `string:foobar`.


## See the resources
You can run the command below to see the resources.
```sh 
aptos account list
```
