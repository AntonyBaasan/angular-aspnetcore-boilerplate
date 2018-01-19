# ngcore-boilerplace

Creates seed project with Angular frontend and .NET Core WebApi backend.

## Prerequisite

Node
Npm
ASP.NET Core

## Usage

```
# generates a project placeholder inside newly create directory "project_dir" 
# using angular cli and .net core templating

./create.sh

# this command generates "project_dir" with all the files

```

NOTE:
Update the `backend/Startup.cs` file to use Angularj files
Inserting app.UseDefaultFiles() and app.UseStaticFiles() code allow to read index.html as default page and use static files inside `wwwroot` directory
```
        public void Configure(IApplicationBuilder app, IHostingEnvironment env)
        {
            ...
            app.UseDefaultFiles();
            app.UseStaticFiles();
            ...
        }
```