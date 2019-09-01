# TimeCatPPA
.deb files for timecat

## Usage

```sh
curl -s --compressed "https://LinXueyuanStdio.github.io/shell/aarch64/KEY.gpg" | sudo apt-key add -
sudo curl -s --compressed -o /etc/apt/sources.list.d/timecat_debs.list "https://LinXueyuanStdio.github.io/shell/aarch64/debs.list"
sudo apt update
```

```sh
sudo apt install pkg1 pkg2 pkg3
```

## Upload

```sh
gpg --import key.asc
```

copy the new deb files to `shell/aarch64` and execute

```sh
./release.sh
```