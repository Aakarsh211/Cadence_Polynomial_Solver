# Environment stuff for modelsim tools for ee453
# Previous Maintainer Nancy Minderman
# Current Maintainer Edward Tiong etiong@ualberta.ca

# February 21, 2007
# Changed default version for modelsim from 6.2d to 6.5b to
# deal with lack of keyboard function on modelsim command line
# SL5.x keyboard on our thinkstations did not function

# June 6, 2011
# Modified to support new CADconnect licensing model

# May 30 2019
# update current contact info


#!/bin/bash
# We only want to source this once per session
#if [ "$MODELSIM_SOURCED" == "" ]; then

# licensing file refers to a license server elsewhere
        if [ "$MGLS_LICENSE_FILE" == "" ]; then
                export MGLS_LICENSE_FILE=6056@cadpass.ece.ualberta.ca
                #export MGLS_LICENSE_FILE=6056@cadpass.ece.ualberta.ca#7056@cadpass.ece.ualberta.ca:8056@cadpass.ece.ualberta.ca:6056@cadpass.ece.ualberta.ca
        fi
        PATH="/CMC/EDA/tools/mentor/modelsim6.5b/modeltech/bin:${PATH}"
        # add more paths here if needed
        export PATH
        export MODELSIM_SOURCED="1"
#fi
