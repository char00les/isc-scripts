#/bin/bash

###############################################################################
# Script Helpers - Error Checking 
# --> If executed, it will stop the script from going further
###############################################################################

ErrCheck() {
  if [[ $? -ne 0 ]]; then
    ERRMSG=$@
    echo "$(date)"
    echo "ERROR: $ERRMSG"
    echo "Exiting with failure"
    exit 1
  fi
}
