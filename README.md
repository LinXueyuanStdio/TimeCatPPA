# TimeCatPPA

- [dists](./dists)
- [aarch64](./aarch64)

.deb files for timecat

## Usage

```sh
curl -s --compressed "https://xichen.pub/TimeCatPPA/shell/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/timecat_debs.list "https://xichen.pub/TimeCatPPA/shell/debs.list"
sudo apt update
```

```sh
sudo apt install pkg1 pkg2 pkg3
```

## Upload

```sh
gpg --import key.asc
```

copy the new deb files to `aarch64` and execute

```sh
./release.sh
```