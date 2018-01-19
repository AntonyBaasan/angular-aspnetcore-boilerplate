# create project folder
mkdir project_dir
cd project_dir

# install angular CLI
npm install -g @angular/cli

# create angular frontend project
ng new frontend --skip-npm

# install dotnet core
dotnet new webapi -o backend

# add npm script commands
npm install -g json
# add publish command
json -I -f frontend/package.json -e 'this.scripts["publish"]="ng build --prod --output-path=../backend/wwwroot"'

cd ..

# copy utility scripts
cp utils/build.sh project_dir/build.sh
cp utils/init.sh project_dir/init.sh
cp utils/run.sh project_dir/run.sh
cp utils/.gitignore_template_backend project_dir/backend/.gitignore
cp utils/.gitignore_template_frontend project_dir/frontend/.gitignore

