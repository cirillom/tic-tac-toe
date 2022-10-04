# Template project for the ICMC Processor Simulator with the preprocessor (Linux)

**THIS REPO HAS A TEMPLATE WITHOUT THE PREPROCESSOR - ACCESS BRANCH ``` NO-PREPROCESSOR ``` **

### Dependencies
In order to clone this repository with the needed submodules you should clone it with ``` git clone --recurse-submodules https://github.com/cirillom/icmc-assembly-template-repo.git ```.

However, if you alreary cloned it and forgot to run the ``` --recurse-submodules ``` you can download them with ```git submodule update --init --recursive```.

You'll also need the simulator binarie files, in order to install it just type ``` make simulator ``` and everything will be done for you.

<br />
### Usage
**Don't change _bootstrapper.asm_**
You can create any _.asm_ and _.vars_ files under _src/_, however at the moment you cannot work with subdirectories.

<br />
<br />
<br />

##### Future improvements
- [ ] Remove charmap from _res/_ and use the one from [ICMC-assembly-preprocessor](https://github.com/lucasgpulcinelli/ICMC-assembly-preprocessor) submodule.
