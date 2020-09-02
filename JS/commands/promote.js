module.exports = {
    name: 'promote',
    description: 'Promote Joshs Blog!',
    execute(msg, args) {
      const embed = {
        "title": "Joshs Blog",
        "description": "My personal blog about Software Development, Sports, Music, and any more of my hobbies!",
        "url": "https://joshglasson.com",
        "color": Math.floor(Math.random()*16777215),
        "timestamp": Date.now(),
        "thumbnail": {
          "url": "https://joshglasson.com/logo.png"
        },
        "image": {
          "url": "https://joshglasson.com/logo.png"
        },
        "author": {
          "name": "Josh Glasson",
          "url": "https://joshglasson.com",
          "icon_url": "https://joshglasson.com/logo.png"
        }
      };
      msg.channel.send("Check out my blog here: ", { embed });
    },
};