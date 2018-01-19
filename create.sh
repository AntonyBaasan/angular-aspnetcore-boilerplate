# create project folder
mkdir project_dir
cd project_dir

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
# add publish command
json -I -f frontend/package.json -e 'this.scripts["publish"]="ng build --prod --output-path=../backend/wwwroot"'

cd ..

# copy utility scripts
cp build.sh project_dir/build.sh
cp run.sh project_dir/run.sh
cp .gitignore_template_backend project_dir/backend/.gitignore
cp .gitignore_template_frontend project_dir/frontend/.gitignore

