```
   _                  _      _                    _ 
  | |                | |    | |                  | |
  | |__    __ _  ___ | |__  | |  __ _  _ __    __| |
  | '_ \  / _` |/ __|| '_ \ | | / _` || '_ \  / _` |
  | | | || (_| |\__ \| | | || || (_| || | | || (_| |
  |_| |_| \__,_||___/|_| |_||_| \__,_||_| |_| \__,_|
  
        Hashland's Operating System Installer 
```

## Usage

On the miner run:

`curl https://hashland.cc/install | sudo sh`

Or to run it with environment variables set:

`curl https://hashland.cc/install | sudo VERSION=@beta BOARD_NAME=baikal,giant-b sh`


## Environment variables

`BOARD_NAME` Name of the board if auto detection does not work

`VERSION` Install a specific version of hlos. For example `@beta` for latest beta stability, `@stable` for latest stable stability or a specific version like `18.11`

`API_KEY`  Hashland API Key - if specified the api key will be automatically integrated in the new installation

`MIGRATE_MAC` Set this to migrate an existing MAC address to the new MAC address, if the MAC address would change due to the upgrade. Otherwise the old MAC will be retained. This is relevant for the sunxi target for example. You can read more about this [here](https://github.com/hashland/hlos/wiki/Sunxi-Target)

## Supported Boards

These can be used in the `BOARD_NAME` environment variable.

* baikal,giant-b

## Examples

### Install latest beta for the given board, with api key specified and MAC migration enabled

```
curl https://hashland.cc/install | sudo API_KEY=xxx MIGRATE_MAC=1 VERSION=@beta BOARD_NAME=baikal,giant-b sh
```
