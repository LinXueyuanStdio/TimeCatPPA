# TimeCatPPA

- [dists](./dists)
- [aarch64](./aarch64)
- [shell](./shell)
- [shell](./boot)

.deb files for timecat

## Usage

```sh
curl -s --compressed "http://xichen.pub/TimeCatPPA/shell/KEY.pgp" | apt-key add -
curl -s --compressed -o /etc/apt/sources.list.d/timecat_debs.list "http://xichen.pub/TimeCatPPA/shell/debs.list"
apt update
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