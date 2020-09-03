import discord
from datetime import datetime
import random
from dotenv import load_dotenv
import os

load_dotenv()
TOKEN = os.environ.get('TOKEN')

client = discord.Client()

@client.event
async def on_message(message):
    # we do not want the bot to reply to itself
    if message.author == client.user:
        return

    if message.content.startswith('?'):
        command = message.content[1:]
        print("Command received: " + command)
    else:
        print("Commands should start with ?")
        return

    if command.startswith('hello'):
        msg = 'Hello {0.author.mention}'.format(message)
        await client.send_message(message.channel, msg)
        print("Command executed: " + command)

    if command.startswith('promote'):
        colour=random.randint(0, 0xFFFFFF)
        embed = discord.Embed(title="Joshs Blog", colour=discord.Colour(colour), url="https://joshglasson.com", description="My personal blog about Software Development, Sports, Music, and any more of my hobbies!", timestamp=datetime.now())
        embed.set_image(url="https://joshglasson.com/logo.png")
        embed.set_thumbnail(url="https://joshglasson.com/logo.png")
        embed.set_author(name="Josh Glasson", url="https://joshglasson.com", icon_url="https://joshglasson.com/logo.png")
        await client.send_message(message.channel, embed=embed)
        print("Command executed: " + command)

    print("Command " + command + " does not match any known commands")

@client.event
async def on_ready():
    print('Logged in as')
    print(client.user.name)
    print(client.user.id)
    print('------')

client.run(TOKEN)