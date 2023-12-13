
# Overview
This project showcases a simple ASP.NET Core Web API for managing food items. It includes features such as CRUD operations, API versioning, Swagger documentation, and Docker support.

# Getting Started

# Prerequisites
- .NET SDK 8.0
- Docker

# Building and Running
1. Clone the repository:
  ```bash
  git clone https://github.com/gauravmittal54/ASPNETCore-Web-API----Food-Items.git
   ```
2. Navigate to the project directory:
  ```bash
   RUN dotnet build
   ```
   ```bash
   Run dotnet run --project "<WebApiAspNetCore.csproj PATH ON YOUR LOCAL MACHINE>"
   ```
   The application will be accessible at [http://localhost:29435](http://localhost:29435/swagger).

## API Endpoints

| HTTP Verb | Endpoint                               | Action                                             |
| --------- | -------------------------------------- | ---------------------------------------------------|
| GET       | /api/v1/foods                          | GET all foods                                      |
| GET       | /api/v1/foods/2                        | GET single food                                    |
| POST      | /api/v1/foods                          | POST a foodItem                                    |
| PUT       | /api/v1/foods/5                        | PUT a foodItem                                     |
| PATCH     | /api/v1/foods/5                        | PATCH a foodItem                                   |
| DELETE    | /api/v1/foods/5                        | DELETE a foodItem                                  |

## Contributing
Contributions are welcome! Feel free to open issues or submit pull requests.
