# genewise2_docker
GeneWise2 is an old tool for sequence comparison using dynamic programming, which is now difficult to install, a modified source code and Dockerfile are provided here.

see https://www.ebi.ac.uk/Tools/psa/genewise/ for detail

## Installation

Download
```
git clone https://github.com/SouthernCD/genewise2_docker.git
```

Install
```
cd genewise2_docker
docker build -t genewise:2.4.1 ./
```

## Usage

```
docker run --rm genewise:2.4.1 genewise -help
```

## Work with Singularity

You can also use Singularity to get images from DockerHub
```
singularity pull genewise.sif docker://xuyuxing/genewise:2.4.1
singularity run genewise.sif genewise --help
```
