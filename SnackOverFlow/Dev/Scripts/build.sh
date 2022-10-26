#!/bin/sh

#  build.sh
#  SnackOverFlow
#
#  Created by mehmet karanlık on 14.10.2022.
#  

if [[ -f "SnackOverFlow/Dev/swiftgen-6.6.2/bin/swiftgen.sh" ]]; then
  "SnackOverFlow/Dev/swiftgen-6.6.2/bin/swiftgen.sh"
else
  echo "warning: SwiftGen is not installed. Run 'pod install --repo-update' to install it."
fi 
