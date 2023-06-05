#!/bin/bash
BR=buildroot-2023.02/
LX_WORK_DIR=$(pwd)
#################

LX_TOOLS_DIR="$LX_WORK_DIR/../tools"
LX_DOWNLOAD_DIR="$LX_WORK_DIR/../downloads"
LX_BUILD_DIR="$LX_WORK_DIR/../output"
#################

LX_BR_TOOL="$LX_TOOLS_DIR/$BR"
LX_IMAGE_TOOL="$LX_TOOLS_DIR/image"
######################################################
#   MAIN
######################################################

main()
{
outputDir="$LX_BUILD_DIR"
make BR2_EXTERNAL=$(pwd) -C $LX_TOOLS_DIR/$BR O=$outputDir $*
echo make BR2_EXTERNAL=$(pwd) -C $LX_TOOLS_DIR/$BR O=$outputDir $*
exit "$?"
}
main $@
