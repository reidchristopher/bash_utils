alias ws-setup="source ~/bash_utils/workspace_setup.bash"
alias ws-clean="bash ~/bash_utils/workspace_clean.bash"

alias noetic-setup="source /opt/ros/noetic/setup.bash"
alias foxy-setup="source /opt/ros/foxy/setup.bash"
alias galactic-setup="source /opt/ros/galactic/setup.bash"

alias cb="bash ~/bash_utils/colcon_build_anywhere.bash"
alias cb-debug="cb --cmake-args -G 'CodeBlocks - Unix Makefiles' -DCMAKE_BUILD_TYPE=Debug"
alias cb-release="cb --cmake-args -G 'CodeBlocks - Unix Makefiles' -DCMAKE_BUILD_TYPE=Release"
alias cb-init="touch COLCON_BUILD_HERE"

alias rc-edit="gedit ~/.bashrc"

alias git-email="bash ~/bash_utils/config_git_email.bash"
