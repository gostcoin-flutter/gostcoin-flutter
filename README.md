# gostcoin-flutter

Flutter UI for GOSTCoin.

## Project Status

Work in progress, not released yet

## Developers Section

### Dev Notes

```shell
wget -t0 https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.10.4-stable.tar.xz
mkdir -pv ~/SDKS/FLUTTER/flutter_linux_3.10.4-stable
cd ~/SDKS/FLUTTER/flutter_linux_3.10.4-stable
tar xf ~/Downloads/flutter_linux_3.10.4-stable.tar.xz
export PATH="$PATH:~/SDKS/FLUTTER/flutter_linux_3.10.4-stable/flutter/bin"
echo add path to ~/.bashrc
flutter precache

# for linux target
sudo apt install cmake clang ninja-build

flutter doctor -v
echo flutter sdk-path: /home/user/SDKS/FLUTTER/flutter_linux_3.10.4-stable/flutter
```
