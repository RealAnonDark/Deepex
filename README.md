<h1 align="center">
  <img src="files/Deepex.png" alt="subfinder" width="200px">
  <br>
</h1>

<h4 align="center">Fast passive subdomain enumeration tool.</h4>


<p align="center">
<a href="https://github.com/RealAnonDark/Deepex/releases"><img src="https://img.shields.io/github/release/RealAnonDark/Deepex"></a>
<a href="https://t.me/RealHashashin"><img src="https://img.shields.io/twitter/follow/RealHashashin.svg?logo=telegram"></a>
<a href="https://discord.gg/projectdiscovery"><img src="https://img.shields.io/discord/695645237418131507.svg?logo=telegram"></a>
</p>

<p align="center">
  <a href="#features">Features</a> •
  <a href="#installation">Install</a> •
  <a href="#running-subfinder">Usage</a> •
  <a href="#post-installation-instructions">API Setup</a> •
  <a href="#subfinder-go-library">Library</a> •
  <a href="https://discord.gg/projectdiscovery">Join Discord</a>
</p>

---


`Deepex` is a subdomain discovery tool that returns valid subdomains for websites, using passive online sources.
# Features

<h1 align="left">
  <img src="files/Deepex-2[1].png" alt="subfinder" width="700px"></a>
  <br>
</h1>

- Fast and powerful 
- Multiple scans

# Usage

```sh
deepex.sh -h
```

This will display help for the tool. Here are all the switches it supports.

```yaml
Usage : ./deepex.sh -u example.com -o option=1 -t threads=1

Deep explore in subdomains.

  -u, --url         target URL
  -o, --option      1> ARCH 2>CRT 3>soon...
  -t, --thread      thread numbers | 1 = [DEEPEX].example.com | 2 = [DEEPEX].[DEEPEX].example.com
  -h, --help        help
```

# Installation

# Linux

```sh
git clone  https://github.com/RealAnonDark/Deepex
```
## Post Installation Instructions

`subfinder` can be used right after the installation, however many sources required API keys to work. Learn more here: https://docs.projectdiscovery.io/tools/subfinder/install#post-install-configuration.

## Running Subfinder

Learn about how to run Subfinder here: https://docs.projectdiscovery.io/tools/subfinder/running.

## Subfinder Go library

Subfinder can also be used as library and a minimal examples of using subfinder SDK is available [here](v2/examples/main.go)

</td>
</tr>
</table>

### Resources

- [Recon with Me !!!](https://dhiyaneshgeek.github.io/bug/bounty/2020/02/06/recon-with-me/)

# License

`subfinder` is made with 🖤 by the [projectdiscovery](https://projectdiscovery.io) team. Community contributions have made the project what it is. See
the **[THANKS.md](https://github.com/projectdiscovery/subfinder/blob/main/THANKS.md)** file for more details.

Read the usage disclaimer at [DISCLAIMER.md](https://github.com/projectdiscovery/subfinder/blob/main/DISCLAIMER.md) and [contact us](mailto:contact@projectdiscovery.io) for any API removal.
