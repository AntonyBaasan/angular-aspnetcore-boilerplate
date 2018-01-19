# install angular CLI
npm install -g @angular/cli

# create angular frontend project
ng new frontend
cd frontend
npm install

cd ..
# install dotnet core
dotnet new webapi -o backend

# add npm script commands
npm install -g json
# add assemble command
json -I -f frontend/package.json -e 'this.scripts["assemble"]="ng build"'
