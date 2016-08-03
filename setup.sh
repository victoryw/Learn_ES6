#!/bin/bash

brew install nvm
pushd $(pwd)
. $(brew --prefix nvm)/nvm.sh
popd

nvm install node #lastest node
nvm use node

npm install -g es-checker #the lastest system runtime to support the es features

npm install -g babel-cli


if [ ! -f ./package.json ]
then
	npm init -y
fi

npm install --save babel-preset-es2015



if [ ! -f .babelrc ]
then
	`cat << EOF > .babelrc
	// .babelrc
	{
		"presets": ['es2015']
	}
	EOF`
fi
