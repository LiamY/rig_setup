Rig Setup
=========
(Currently Mac Only, Linux Will Be Supported Soon)

Terminal Environment Configurations
---------

To automatically configure your environment with basic terminal environment settings,
copy and paste the following into your terminal:

```
curl https://raw.githubusercontent.com/liamy/rig_setup/master/config_setup.sh | sh
```


Programming Environment Configurations
---------
To install base platforms for:
  * homebrew

Copy and paste the following into your terminal:
```
sudo curl https://raw.githubusercontent.com/liamy/rig_setup/master/platform_installation.sh | sh
```
For installation of individual packages, copy and paste the corresponding lines from
'platform_installation.sh' into your terminal.

Additional Notes
---------
If `psql postgres` fails after installation, it may be necessary to run the following:
```
sudo rm -rf /usr/local/var/postgres
sudo mkdir /usr/local/var/postgres
sudo chown $(whoami) /usr/local/var/postgres
initdb /usr/local/var/postgres
```
Keep in mind, this will destroy any pre-existing databases you had in /usr/local/var/postgres
