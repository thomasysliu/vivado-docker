# vivado-docker
vivado design docker file

# Usage ($HOME/Xilinx is your vivado install folder

docker run -ti --rm --network=host -e DISPLAY=$DISPLAY -v $HOME/.Xauthority:/home/developer/.Xauthority:ro -v $HOME/Xilinx:/Xilinx -u root thomasysliu/vivado-docker bash
source /Xilinx/Vivado/2018.3/settings64.sh
vivado
