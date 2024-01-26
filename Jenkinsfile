#!groovy

@Library('jenkins-shared') _

pipeline{
    agent any

    parameters { 
        string(name: "PackageVersion",description: "Version of the build", defaultValue: "1")
    }
    

    stages{
        stage("reading package"){
            def packageJSON = readJSON(file: 'package.json')
            def component = "cart"
            ${params.PackageVersion} = packageJSON.version
        }
    }
}



echo "$component ........... ${params.PackageVersion}"

if ( ! env.BRANCH_NAME.equalsIgnoreCase('master')){
    build.build(compnent)
}
else{
    echo "master PROD deployment should happen through CR"
}