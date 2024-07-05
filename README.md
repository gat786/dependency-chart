# Creating a chart that uses other chart as a dependency

I have always wanted to check how you can use a chart as a child for some 
other chart. This repository contains a complete example of how you can do so.

Inside the terraform directory contains the terraform definition you would 
require to set a artifact registry repository. After a repository is created,
you can use it to push chart images like to normally would push to any chart 
repository.

We have a child chart which I intend to send it to registry and then use it as
a dependency on the parent chart which I intend to build myself.

The scripts to actually build the child chart and push it to registry is present
in the scripts folder same as with the scripts that would build.
