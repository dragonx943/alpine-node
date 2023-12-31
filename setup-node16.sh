# Detect your architecture into value to download and install nodejs 16:
tarball="node-v16.15.1-linux-*-alpine.tar.gz"
if [ ! -f $tarball ]; then
                echo "W: Download Nodejs v16, this may take a while base on your internet speed."
                case `uname -m` in
                i386)
                        archurl="x86" ;;
                i686)
                        archurl="x86" ;;
                x86)
                        archurl="x86" ;;
                aarch64)
                        archurl="arm64" ;;
                arm)
                        archurl="arm" ;;
                armv7)
                        archurl="arm" ;;
                armhf)
                        archurl="arm" ;;
                armv8)
                        archurl="arm64" ;;
                armv8l)
                        archurl="arm64" ;;
                amd64)
                        archurl="x86_64" ;;
                x86_64)
                        archurl="x86_64" ;;
                esac
                curl -fLO https://github.com/dragonx943/alpine-node/releases/download/v16.15.1/node-v16.15.1-linux-${archurl}-alpine.tar.gz
                echo "W: Installing nodejs & npm..."
                tar -xzf node-v16.15.1-linux-${archurl}-alpine.tar.gz -C /usr --strip-components=1 --no-same-owner
                echo "W: Cleaning up..."
                rm -rf node-v16.15.1-linux-*-alpine.tar.gz
                break
else
                echo "W: Detected nodejs v16 installation files..."
                sleep 5
                echo "W: Deleting old nodejs v16 installation files..."
                rm -rf node-v16.15.1-linux-*-alpine.tar.gz
                echo "N: Re-installing nodejs v16...Please Wait !!!"
                case `uname -m` in
                i386)
                        archurl="x86" ;;
                i686)
                        archurl="x86" ;;
                x86)
                        archurl="x86" ;;
                aarch64)
                        archurl="arm64" ;;
                arm)
                        archurl="arm" ;;
                armv7)
                        archurl="arm" ;;
                armhf)
                        archurl="arm" ;;
                armv8)
                        archurl="arm64" ;;
                armv8l)
                        archurl="arm64" ;;
                amd64)
                        archurl="x86_64" ;;
                x86_64)
                        archurl="x86_64" ;;
                esac
                curl -fLO https://github.com/dragonx943/alpine-node/releases/download/v16.15.1/node-v16.15.1-linux-${archurl}-alpine.tar.gz
                echo "W: Installing nodejs & npm..."
                tar -xzf node-v16.15.1-linux-${archurl}-alpine.tar.gz -C /usr --strip-components=1 --no-same-owner
                echo "W: Cleaning up..."
                rm -rf node-v16.15.1-linux-*-alpine.tar.gz
                break
fi