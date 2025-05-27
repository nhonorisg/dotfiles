## Font configuration

The configuration used in this repository follows these guides: 
- (Archlinux font improvement guide)[https://github.com/davgar99/arch-linux-font-improvement-guide].
- (Eric Murphy youtube video on how to install and manage fonts)[https://www.youtube.com/live/1RtLyPzbttA?t=193s].

### Step 1 : Fonts installation 

The following command shows how to install fonts with pacman and yay.

**Note** : Instead of using "**sudo pacman -S**" I used the alias "**i**" defined in my zsh shortcuts file.

```shell
i noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra ttf-liberation ttf-dejavu ttf-roboto ttf-jetbrains-mono ttf-fira-code ttf-hack adobe-source-code-pro-fonts && yay -S ttf-symbola
```

### Step 2 : XML configurtation file

Once fonts installed, I created the configuration file in the config directrory "**XDG_CONFIG_HOME/fontconfig**" ($HOME/.config/fontconfig). It is an XML based file, which defines how fonts are going to be used by apps depeding on the font family. After doing those two steps, I rebooted my pc and everything worked as expected.
