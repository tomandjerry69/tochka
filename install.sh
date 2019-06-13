cd /home/$USER/
mkdir go
cd /go
mkdir src
cd /src
mkdir qxklmrhx7qkzais6.onion
cd /qxklmrhx7qkzais6.onion
mkdir Tochka
cd Tochka
mv /home/Downloads/tochka-free-market-auto-master/tochka-free-market/ /
cd ../../..
mkdir github.com
cd github.com
mkdir go-redis
cd go-redis
git clone https://github.com/go-redis/redis
cd ../../..
cd qxklmrhx7qkzais6.onion/Tochka/tochka-free-market
go build
sudo -u postgres createuser root #enter the current username
sudo -u postgres createdb go_t
sudo -u postgres psql go_t < dumps/cities.sql
sudo -u postgres psql go_t < dumps/countries.sql
cp settings.json.example settings.json
echo "Done! Check the instructions in the README.md file and run install-continue.sh when done."
