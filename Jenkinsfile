#!groovy

@Library('jenkins-shared') _

def packageJSON = readJSON(file: 'package.json')

def component = "cart"
def packageVersion = packageJSON.version

echo "$component ........... $packageVersion"

if ( ! env.BRANCH_NAME.equalsIgnoreCase('master')){
    build.build(compnent)
}
else{
    echo "master PROD deployment should happen through CR"
}