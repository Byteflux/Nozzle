# Nozzle

An experimental fork of [Paper](https://github.com/PaperMC/Paper) used for testing performance fixes and feature ideas. Nozzle is a personal project and does **not** come with any promise of support. Contributions are reviewed and considered.

If you're a casual user looking for a well-supported, modern server software, please consider using Paper. It's actively maintained by a fantastic team with support offered over [Discord](https://discord.gg/papermc).

## Compiling

At this time there aren't any official precompiled builds of Nozzle hosted anywhere. The only officially supported method of obtaining a build of Nozzle is to compile it yourself.

### Requirements:

* [Java Development Kit 8](https://adoptopenjdk.net/) or higher (must be JDK, not JRE)
* [Maven 3](https://maven.apache.org/download.cgi)
* Git
* Bash

**Windows users:** If you're trying to compile Nozzle on Windows, it's recommended that you use either [Git for Windows](https://gitforwindows.org/) or [Windows Subsystem for Linux](https://docs.microsoft.com/en-us/windows/wsl/about) for Git and Bash.

#### Clone the repository:

```
git clone https://github.com/Byteflux/Nozzle.git
```

#### Compile the server jar:

Make sure you're working within the cloned Nozzle repository.
```
cd Nozzle/
```

The following command will perform any necessary setup and build the server jar.
```
./nozzle jar
```

Upon a successful build, the server jar will be located at `Nozzle-Server/target/nozzle.jar`.

## Contributing

The process for editing and creating patches for contribution is identical to Paper. Please refer to [Paper's documentation](https://github.com/PaperMC/Paper/blob/master/CONTRIBUTING.md) to learn more, replacing references to Paper with Nozzle where appropriate.