# Repository for [Medium Article](https://medium.com/@fiardikarizki/building-my-first-ci-cd-pipeline-using-aws-pipeline-️-️-9671e0bdc514)

Static website sample from [Cloud Academy Repository](https://github.com/cloudacademy/static-website-example)

Playwright Script by [Alodia Neysa](https://www.linkedin.com/in/alodia-neysa/)

===================================================

This repository is used to create a sample CI/CD Pipeline using AWS CodeBuild and AWS Pipeline.

For detailed scripts, refer to the `scripts` directory.

The expected flow is:  
**Code Change → CodePipeline → CodeBuild (Docker Build) → ECR → CodeBuild (Deploy) → EC2 → CodeBuild (Playwright Test)**

For Playwright, using Node version 22 LTS.

If you want to try running tests locally, after cloning the repository, execute the following commands:

Application
- `docker build . -t webapp`
- `docker run -d --name webapp-container -p 8080:80 webapp`

Playwright
-   `cd playwright`
-   `npm install`
-   `npx playwright install --with-deps`
-   `npx playwright test` #Running the test