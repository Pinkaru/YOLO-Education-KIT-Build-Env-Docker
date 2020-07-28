# YOLO Education KIT with Infoworks
## Release Notes

| Version  | Changes                         |
| -------- | :------------------------------ |
| beta 1.0 | Docker 생성 및 소스 빌드 테스트 |

## 빌드 환경 셋업

### Docker 이미지 다운로드

```shell
root@computer:~/Documents$ git clone https://github.com/Pinkaru/YOLO-Education-KIT-Build-Env-Docker.git
'YOLO-Education-KIT-Build-Env-Docker'에 복제합니다...
remote: Enumerating objects: 29, done.
remote: Counting objects: 100% (29/29), done.
remote: Compressing objects: 100% (19/19), done.
remote: Total 29 (delta 7), reused 29 (delta 7), pack-reused 0
오브젝트 묶음 푸는 중: 100% (29/29), 완료.
root@computer:~/Documents$ cd YOLO-Education-KIT-Build-Env-Docker
root@computer:~/Documents/YOLO-Education-KIT-Build-Env-Docker$ ls
Dockerfile  LICENSE.md  create-container.sh  docker-compose.yml  enter-container.sh  gitlab_ssh_key  install-docker.sh  work
```

### Docker 설치

이미 Docker가 설치돼있는 경우, 다음 과정으로 넘어가십시오.

```shell
root@computer:~/Documents/YOLO-Education-KIT-Build-Env-Docker$ ./install-docker.sh
```

### Container 생성

```shell
root@computer:~/Documents/YOLO-Education-KIT-Build-Env-Docker$ ./create-container.sh
```

### Container 터미널 접속

```shell
root@computer:~/Documents/YOLO-Education-KIT-Build-Env-Docker$ ./enter-container.sh
rk1808-build
root@e74e7203ad1b:~# cd EduKit/
root@e74e7203ad1b:~/Edu# ls
actuator_and_sensor  ai-demo  buildroot  camera  debian  kernel  linaro-4.9.4-gcc  preboot-config  u-boot
```

