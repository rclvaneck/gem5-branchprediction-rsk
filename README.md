# Branch Prediction Research Starter Kit: System (Emulation) Modeling using gem5
Research Starter Kit on Branch Prediction in x86 and arm architectures using the gem5 simulator. This Starter Kit was used for my thesis: "An Extensive Comparison of Branch Prediction Methods in ARM and x86 pipelined processors. An Educational Approach"

This starter kit consists of two main repositories:
1. **[gem5](https://github.com/gem5/gem5)**: the source code for the [gem5 simulator](https://www.gem5.org/)
2. **[gem5-branchprediction-rsk](https://github.com/rclvaneck/gem5-branchprediction-rsk)**: the current repo with scripts, branch predictors, and documentation.

## Getting started
Either clone these two repositories separately, or use the [gettingstarted.sh](https://raw.githubusercontent.com/rclvaneck/gem5-branchprediction-rsk/main/gettingstarted.sh) script to clone them.
```bash
$ wget https://raw.githubusercontent.com/rclvaneck/gem5-branchprediction-rsk/main/gettingstarted.sh
$ bash gettingstarted.sh
```

The current version includes the following files and folders:
* **gettingstarted.sh**: a script to clone the repositories and download all the required components
* [Wiki](https://github.com/rclvaneck/gem5-branchprediction-rsk): Contains all the code and examples

## This kit is for computer architecture researchers that:
- x86-based system (emulation) modeling of branch prediction methods
- ARM-based system (emulation) modeling of branch prediction methods

## Prerequisitories:
- knowledge of Linux, C++ and Python
- Basics of Computer Architecture

## Topics:
- Introduction to gem5 and the gem5 CPU models
- x86 CPU system (emulation) modeling in gem5
- ARM CPU system (emulation) modeling in gem5
- Branch prediction methods in gem5
- Benchmarking and comparing branch predictors in x86 CPU models
- Benchmarking and comparing branch predictors in ARM CPU models