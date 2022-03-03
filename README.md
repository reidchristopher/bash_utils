# Personal Bash Utilities

This repository contains different utilities that I created to make certain things mildly easier to deal with.

For the aliases to work, it is assumed that this repo is cloned into your home directory.

Afterwards, source this .bash_aliases from either ~/.bash_rc or ~/.bash_aliases. For example:

```
echo "source ~/bash_utils/.bash_aliases" >> ~/.bash_aliases
```

The aliases are chosen such that tab completion should work after just a few characters, but obviously edit them to your liking.

NOTE: The scripts that do building/sourcing/cleaning operations anywhere in the workspace assume your workspaces are located somewhere in the `$HOME` directory and will complain if this isn't the case.

# Colcon Build Aliases

`colcon_build_anywhere.bash` and it's associated aliases runs colcon build in a matter more similar to `catkin build`. Namely, that you can run this command from anywhere within the workspace and it will generate the build files in the appropriate location. All aliases also do symlink installs without needing the argument for it, and other arguments can be passed in after the aliases as normal.

The first build (or `cb-init`) will place an empty file `COLCON_BUILD_HERE` in the current directory, which the script will look for in determining the build location in the future.

- `cb`: Colcon build with symlink install
- `cb-init`: Place `COLCON_BUILD_HERE` file to mark this as the build location
- `cb-debug`: `cb` with debug build specified
- `cb-release`: `cb` with release build specified

# Workspace Setup and Clean Aliases

In addition to building from anywhere, I find it nice to have quick commands for both cleaning and sourcing the current workspace. These will work for both catkin and colcon workspaces.

- ws-setup: Source this workspaces devel/setup.bash or install/setup.bash (runs `workspace_setup.bash`)
- ws-setup: Delete this workspaces build, devel/install, and logs/log directories to allow for a clean build (runs `workspace_clean.bash`)

I also created distro specific aliases for different ROS distros: `noetic-setup`, `foxy-setup`, and `galatic-setup`

# Other aliases

- `rc-edit` just opens ~/.bashrc with gedit

- `git-email` runs a simple script for setting the correct email for a given git repository (`config_git_email.bash`). You'd have to edit this if you care to get it working for you