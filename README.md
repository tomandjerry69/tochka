# Tochka Free Market
#### Project Description
Tochka Free Market is an open source market. Same-name DarkNet Market (DNM) [Tochka](http://tochka3evlj3sxdv.onion/) is running on it. 
The goal of Tochka is to provide reliable software for next-gen darknet operations, while staying transparent, free and secure.

[Payaka](http://qxklmrhx7qkzais6.onion/Tochka/payaka-payment-gate) is a payment gateway used in conjunction with Tochka.

#### A noob proof semi-automatic installer
If you want to run this market but you're running into problems, I made an installer for it.
**Please note that I'm not an experienced Linux user and I wrote this installer just to help other newbies!** I am aware there are better ways to install it. This installer barely works anyway.

## How to install
##### Step 1:
Install Postgresql
`sudo apt-get install postgresql postgresql-contrib`

##### Step 2:
Clone this repo into the Downloads folder (yes I know)
`cd /home/Downloads`

`git clone https://github.com/b1sergiu/tochka-free-market-auto/ tochka-free-market-auto-master`

`cd tochka-free-market-auto-master`

##### Step 3:
Run `install.sh`

##### Step 4:
After it finishes running, go to `~/go/src/qxklmrhx7qkzais6.onion/Tochka/tochka-free-market` and run `sudo -u postgres psql`, then `ALTER USER postgres PASSWORD 'changeme';` (you should insert your own password). When you're done, `nano modules/marketplace/models.go`, go to line 132 and insert your password.

##### Step 5:
Run `install-continue.sh` and you're done! Edit the `settings.json` file to make the final adjustments and run `./tochka-free-market` to run the server. To make an admin account run `./tochka-free-market user [username] grant admin`.

## Troubleshooting
**Last source code update: June 13th, 2019**

If you want for the source code to be updated, open a new issue or download the new source code and replace the folder. Newer versions not guaranteed to work.
[Original source code available here.](http://qxklmrhx7qkzais6.onion/Tochka/tochka-free-market/ "Original source code available here.")

It should run on any Ubuntu version with the latest versions of git, postgresql and golang.
Pull requests are always welcome! :)
