# Discord Bot

## Building a Discord Bot

Link to post: [https://joshglasson.com/blog/discord_bot](https://joshglasson.com/blog/discord_bot)

## Ruby

### Requirements

- Ruby
- Discord Account

## JS

### Requirements

- Node.js
- Discord Account

## Python

### Requirements

- Python 3.7
- Discord Account

### Python Setup Instructions

We need the `discord.py` library. There are some issues with this library working on the newest version of python, so use the below commands to get it working:

```zsh
python3 -m pip install -U "https://github.com/Rapptz/discord.py/archive/async.zip#egg=discord.py[voice]"
python3 -m pip install --upgrade aiohttp
python3 -m pip install --upgrade websockets
```

After setup and running the python file for the first time, you may run into an SSLError, something like this will be in the stack trace.

```bash
Cannot connect to host discordapp.com:443 ssl:True 
[SSLCertVerificationError: (1, '[SSL: CERTIFICATE_VERIFY_FAILED] certificate verify failed: unable to get local issuer certificate (_ssl.c:1056)')]
```

If this does happen to you, navigate to your root directory, go to `Applications/Python 3.7` and run the `Install Certificates.command` file. 
Now if you re-run the python script, it should work!