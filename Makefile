#!/usr/bin/env make

TARGET_BASE=$(HOME)
STOW=stow
UBUNTU_PACKAGES=tmux tmux-themepack-jimeh stow neovim timewarrior taskwarrior

.PHONY: all nvim tmux taskwarrior

all: nvim vim gvim tmux taskwarrior


# packges

nvim: $(eval TARGET:=$(TARGET_BASE)/.config/nvim)
	mkdir -p $(TARGET)
	$(STOW) -t $(TARGET) nvim

tmux:
	$(STOW) -t $(TARGET_BASE) tmux

taskwarrior:
	$(STOW) -t $(TARGET_BASE) taskwarrior


# requirements

ubuntu-deps:
	sudo apt update -y
	sudo apt install $(UBUNTU_PACKAGES) -y
