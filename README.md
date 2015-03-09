# docker-coldfusion
ColdFusion 11 Express development environment.

##Building
`docker build -t "docker-coldfusion" .`

##Running
`docker run -p 8500:8500 -d docker-coldfusion`

ColdFusion Administrator will be available at http://localhost:8500/CFIDE/administrator/index.cfm
